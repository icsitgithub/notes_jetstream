<?php
namespace App\Http\Livewire\Companies;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Company;
use Illuminate\Http\Request;

class Companies extends Component
{
    use WithPagination;

    public $company_name, $company_country, $agent_type, $company_id;
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
            'companies' => Company::orderBy('company_name')->paginate(9),
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
        $this->company_name = '';
        $this->company_country = '';
        $this->agent_type = '';
        $this->company_id = '';
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
        ]);
   
        Company::updateOrCreate(['id' => $this->company_id], [
            'company_name' => $this->company_name,
            'company_country' => $this->company_country,
            'agent_type' => $this->agent_type,
        ]);
  
        session()->flash('message', 
            $this->company_id ? 'Company Updated Successfully.' : 'Company Created Successfully.');
  
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
        $company = Company::findOrFail($id);
        $this->company_id = $id;
        $this->company_name = $company->company_name;
        $this->company_country = $company->company_country;
        $this->agent_type = $company->agent_type;
    
        $this->openModal();
    }
     /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function delete($id)
    {
        Company::find($id)->delete();
        session()->flash('message', 'Company Deleted Successfully.');
    }
}