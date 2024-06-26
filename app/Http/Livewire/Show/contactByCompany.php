<?php

namespace App\Http\Livewire\Show;

use App\Models\Company;
use App\Models\Contact;
use Livewire\WithPagination;
use Livewire\Component;

class ContactByCompany extends Component
{
    use WithPagination;

    public $company_id;
    public $isOpen = false;

    public function mount($id)
    {
        $this->company_id = $id;
    }

    public function render()
    {
        $contacts = Contact::where('company_id', $this->company_id)
            ->filter(request(['search'])) // Assuming you have a filter scope in your Contact model
            ->paginate(10);

        return view('livewire.show.contact_by_companies', [
            'contacts' => $contacts
        ]);
    }

    public function create()
    {
        $this->resetInputFields();
        $this->openModal();
    }

    public function openModal()
    {
        $this->isOpen = true;
    }

    public function closeModal()
    {
        $this->isOpen = false;
    }

    private function resetInputFields()
    {
        // Reset all fields
    }

    public function store()
    {
        $this->validate([
            'company_id' => 'required',
            'contact_gender' => 'required',
            'first_name' => 'required',
            'last_name' => 'nullable',
            'title' => 'required',
            'phone_number' => 'nullable|max:25',
            'email' => 'required|email',
        ]);

        Contact::updateOrCreate(['id' => $this->contact_id], [
            'user_id' => auth()->id(),
            'company_id' => $this->company_id,
            'contact_gender' => $this->contact_gender,
            'first_name' => $this->first_name,
            'last_name' => $this->last_name,
            'title' => $this->title,
            'phone_number' => $this->phone_number,
            'email' => $this->email,
        ]);

        session()->flash('message', $this->contact_id ? 'Contact Updated Successfully.' : 'Contact Created Successfully.');

        $this->closeModal();
        $this->resetInputFields();
    }

    public function edit($id)
    {
        $contact = Contact::findOrFail($id);
        $this->companies = Company::orderBy('company_name')->get();
        $this->contact_id = $id;
        $this->company_id = $contact->company_id;
        $this->contact_gender = $contact->contact_gender;
        $this->first_name = $contact->first_name;
        $this->last_name = $contact->last_name;
        $this->title = $contact->title;
        $this->phone_number = $contact->phone_number;
        $this->email = $contact->email;

        $this->openModal();
    }

    public function delete($id)
    {
        $contact = Contact::where('user_id', auth()->id())->find($id);

        if ($contact) {
            $contact->delete();
            session()->flash('message', 'Contact Deleted Successfully.');
        } else {
            session()->flash('message', 'Can Only Be Deleted by The Author');
        }
    }
}
