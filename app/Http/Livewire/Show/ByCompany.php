<?php

namespace App\Http\Livewire\Show;

use App\Models\Note;
use App\Models\Event;
use App\Models\Company;
use App\Models\Contact;
use Livewire\WithPagination;
use Livewire\Component;

class ByCompany extends Component
{
    use WithPagination;
    public $title, $body, $note_id;
    public $isOpen = 0;

    public $companies, $contacts, $search;
    public $company_id, $event_id,$contact_id;

    public function mount($id)
    {
        $this->company_id = $id;
        $this->companies = Company::orderBy('company_name')->get();
        $this->contacts = collect();
    }
    
    public function updatedCompanyId($companies)
    {
        if (!is_null($companies)) {
            $this->contacts = Contact::where('company_id', $companies)->get();
        }
    }

    public function render()
    {
        $notes = Note::where('company_id', $this->company_id)->orderBy('created_at', 'DESC')->filter(request(['search']))->paginate(10);
        // dd($notes);
        return view('livewire.show.by-company',[
            'notes' => $notes
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

    public function edit($id)
    {
        $note = Note::findOrFail($id);
        // dd($note);
        $this->events = Event::orderBy('event_name')->get();
        $this->contacts = Contact::orderBy('contact_name')->get();
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
        Note::find($id)->delete();
        session()->flash('message', 'Note Deleted Successfully.');
    }
}
