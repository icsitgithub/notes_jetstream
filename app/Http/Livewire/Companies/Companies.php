<?php
namespace App\Http\Livewire\Companies;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Company;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class Companies extends Component
{
    use WithPagination;

    public $user_id, $company_name, $company_country, $agent_type, $business_source, $company_id;
    public $isOpen = 0;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
    */
    public function render()
    {
        // $this->companies = Company::all()->sortBy('company_name');
        return view('livewire.companies.companies', [
            'companies' => Company::groupBy('id')->orderBy('company_name')->filter(request(['search']))->paginate(12),
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
        $this->company_id = '';
        $this->user_id = '';
        $this->company_name = '';
        $this->agent_type = '';
        $this->business_source = '';
        $this->company_country = '';
        $this->company_notes = '';
    }
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function store()
    {
        $this->validate([
            'company_name' => 'required',
            'company_country' => 'required',
            'agent_type' => 'required',
            'business_source' => 'required',
        ]);
   
        Company::updateOrCreate(['id' => $this->company_id], [
            'user_id' => $this->user = Auth()->user()->id,
            'company_name' => $this->company_name,
            'company_country' => $this->company_country,
            'company_notes' => $this->company_notes,
            'agent_type' => $this->agent_type,
            'business_source' => $this->business_source,
            'edited_by' => $this->user = Auth()->user()->id,
        ], ['user_id' => function ($company) {
            return $company->exists ? $company->user_id : Auth::user()->id;
        }]);
  
        session()->flash('message', 
            $this->company_id ? 'Company Updated Successfully.' : 'Company Created Successfully.');
  
        $this->closeModal();
        $this->resetInputFields();
    }
    /**
     * The attributes that are mass assignable
     *
     * @var array
     */
    public function edit($id)
    {
        $company = Company::findOrFail($id);
        $this->company_id = $id;
        $this->company_name = $company->company_name;
        $this->company_country = $company->company_country;
        $this->company_notes = $company->company_notes;
        $this->agent_type = $company->agent_type;
        $this->business_source = $company->business_source;
    
        $this->openModal();
    }
     /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function delete($id)
    {
        $company = Company::find($id);
        if ($company && $company->user_id == auth()->user()->id) {
            $company->delete();
            session()->flash('message', 'Company Deleted Successfully.');
        } else {
            $author = $company ? $company->user->name : 'Unknown';
            session()->flash('message', 'Can Only Be Deleted by The Author. The Author is ' . $author);
        }
    }
}