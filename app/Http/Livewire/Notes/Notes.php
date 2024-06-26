<?php
namespace App\Http\Livewire\Notes;

use App\Mail\SendMail;
use Livewire\WithPagination;
use Livewire\Component;
use App\Models\Note;
use App\Models\Event;
use App\Models\Contact;
use App\Models\Company;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class Notes extends Component
{
    use WithPagination;
    public $title, $body, $note_id;
    public $isOpen = 0;

    public $companies, $contacts, $search;
    public $company_id, $event_id,$contact_id;

    public function mount()
    {
        $this->companies = Company::orderBy('company_name')->get();
        $this->contacts = collect();
    }

    public function updatedCompanyId($companies)
    {
        if (!is_null($companies)) {
            $this->contacts = Contact::where('company_id', $companies)->get();
        }
    }

    /**
     * The attributes that are mass assignable.
     *
     * @var array
    */
    public function render()
    {
        return view('livewire.notes.notes', [
            'notes' => Note::where('user_id', auth()->user()->id)->orderBy('created_at', 'DESC')->filter(request(['search']))->paginate(5)
        ]);
    }

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function create()
    {
        $this->resetInputFields();
        $this->openModal();
    }


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function openModal()
    {
        $this->isOpen = true;
    }
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function closeModal()
    {
        $this->isOpen = false;
    }
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    private function resetInputFields(){
        $this->user_id = '';
        $this->event_id = '';
        $this->contact_id = '';
        $this->company_id = '';
        $this->title = '';
        $this->body = '';
    }
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function store()
    {
        $this->validate([
            'event_id' => 'required',
            'contact_id' => 'required',
            'company_id' => 'required',
            'title' => 'required',
            'body' => 'required',
        ]);
   
        Note::updateOrCreate(['id' => $this->note_id], [
            'user_id' => $this->user = auth()->user()->id,
            'event_id' => $this->event_id,
            'contact_id' => $this->contact_id,
            'company_id' => $this->company_id,
            'title' => $this->title,
            'body' => $this->body
        ]);
  
        session()->flash('message', 
            $this->note_id ? 'Note Updated Successfully.' : 'Note Created Successfully.');
  
        $this->closeModal();
        $this->resetInputFields();
    }
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function edit($id)
    {
        $note = Note::findOrFail($id);
        // dd($note);
        $this->events = Event::orderBy('event_name')->get();
        $this->contacts = Contact::orderBy('first_name')->get();
        $this->companies = Company::orderBy('company_name')->get();
        $this->note_id = $id;
        $this->event_id = $note->event_id;
        $this->contact_id = $note->contact_id;
        $this->company_id = $note->company_id;
        $this->title = $note->title;
        $this->body = $note->body;
    
        $this->openModal();
    }

     /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function delete($id)
    {
        $note = Note::where('user_id', auth()->user()->id)->find($id)->delete();
        if($note != null){
            $note->delete();
            session()->flash('message', 'Event Deleted Successfully.');
        }
        session()->flash('warning', 'Events can only be deleted by the creator');
    }
}