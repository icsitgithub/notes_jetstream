<?php
namespace App\Http\Livewire\Contacts;

use Livewire\WithPagination;
use Livewire\Component;
use App\Models\Event;
use App\Models\Contact;
use App\Models\Company;

class Contacts extends Component
{
    use WithPagination;
    public $contact_name, $title, $phone_number, $email, $contact_id, $photo;
    public $isOpen = 0;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
    */
    public function render()
    {
        // $this->events = Event::all();
        return view('livewire.contacts.contacts',[
            'contacts' => Contact::orderBy('created_at', 'DESC')->filter(request(['search']))->paginate(12)
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
        $this->contact_name = '';
        $this->title = '';
        $this->phone_number = '';
        $this->email = '';
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
        $this->contact_name = $contact->contact_name;
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
        Contact::find($id)->delete();
        session()->flash('message', 'Contact Deleted Successfully.');
    }
}