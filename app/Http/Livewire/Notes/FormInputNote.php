<?php

namespace App\Http\Livewire\Notes;

use Livewire\WithPagination;
use Livewire\Component;
use App\Models\Note;
use App\Models\Event;
use App\Models\Contact;
use App\Models\Company;
use Illuminate\Http\Request;

class FormInputNote extends Component
{
    public $companies, $contacts;
    public $title, $body, $note_id, $company_id, $event_id,$contact_id;
    
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
        
        return redirect()->to('/notes');
    }

    public function render()
    {
        $this->events = Event::orderBy('event_name')->get();
        return view('livewire.notes.form-input-note');
    }
}
