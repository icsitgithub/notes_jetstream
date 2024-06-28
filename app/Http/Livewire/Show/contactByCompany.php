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
        $this->companies = Company::where('id', $this->company_id)->get();
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

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function create()
    {
        $this->companies = Company::orderBy('company_name')->get();
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
        $this->company_id = '';
        $this->contact_gender = '';
        $this->first_name = '';
        $this->last_name = '';
        $this->title = '';
        $this->phone_number = '';
        $this->email = '';
        $this->edited_by = '';
    }
    
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function store()
    {
        $this->validate([
            'company_id' => 'required',
            'contact_gender' => 'required',
            'first_name' => 'required',
            'last_name' => 'nullable',
            'title' => 'required',
            'phone_number' => 'nullable|max:25',
            'email' => 'required',
            'edited_by' => 'nullable',
        ]);
   
        Contact::updateOrCreate(
            ['id' => $this->contact_id],
            [
                'user_id' => $this->user = Auth()->user()->id,
                'company_id' => $this->company_id,
                'contact_gender' => $this->contact_gender,
                'first_name' => $this->first_name,
                'last_name' => $this->last_name,
                'title' => $this->title,
                'phone_number' => $this->phone_number,
                'email' => $this->email,
                'edited_by' => $this->user = Auth()->user()->id,
            ],
            ['user_id' => function ($contact) {
                return $contact->exists ? $contact->user_id : Auth::user()->id;
            }]);
  
        session()->flash('message', 
            $this->company_id ? 'Contact Updated Successfully.' : 'Contact Created Successfully.');
  
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
     /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function delete($id)
    {
        $contact = Contact::where('user_id', auth()->user()->id)->find($id);
        if($contact != null){
            $contact->delete();
            session()->flash('message', 'Contact Deleted Successfully.');
        }
        session()->flash('message', 'Can Only Be Deleted by The Author');
    }
}