<?php

namespace App\Http\Livewire\Show;

use App\Models\Note;
use App\Models\Event;
use App\Models\Company;
use App\Models\Contact;
use Livewire\WithPagination;
use Livewire\Component;

class ByContact extends Component
{
    use WithPagination;
    public $contact_name, $title, $phone_number, $email, $contact_id, $photo, $gender;
    public $isOpen = 0;
    
    public $companies, $contacts, $search;
    public $company_id, $event_id;

    public function mount($id)
    {
        $this->contact_id = $id;
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
        $notes = Note::where('contact_id', $this->contact_id)->where('user_id', auth()->user()->id)->orderBy('created_at', 'DESC')->filter(request(['search']))->paginate(10);
        return view('livewire.show.by-contact',[
            'notes' => $notes
        ]);
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
        $event = Event::where('user_id', auth()->user()->id)->find($id);
        if ($event != null){
            $event->delete();
            session()->flash('message', 'Contact Deleted Successfully.');
        }
        session()->flash('message', 'Can Only Be Deleted by The Author');
    }
}
