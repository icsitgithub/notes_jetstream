<?php

namespace App\Http\Livewire\Notes;

use Livewire\Component;
use App\Models\Contact;
use App\Models\Company;

class FormInputContactNote extends Component
{
    public $contact_name, $title, $phone_number, $email, $contact_id, $company_id;

/**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function store()
    {
        $this->validate([
            'company_id' => 'required',
            'contact_name' => 'required',
            'title' => 'required',
            'phone_number' => 'nullable|max:25',
            'email' => 'required',
        ]);
   
        Contact::updateOrCreate(['id' => $this->contact_id], [
            'user_id' => $this->user = auth()->user()->id,
            'company_id' => $this->company_id,
            'contact_name' => $this->contact_name,
            'title' => $this->title,
            'phone_number' => $this->phone_number,
            'email' => $this->email,
        ]);
  
        session()->flash('message', 
            $this->company_id ? 'Contact Updated Successfully.' : 'Contact Created Successfully.');
  
        return redirect()->to('/formInputNote');
    }

    public function render()
    {
        $this->companies = Company::orderBy('company_name')->get();
        return view('livewire.notes.form-input-contact-note');
    }
}
