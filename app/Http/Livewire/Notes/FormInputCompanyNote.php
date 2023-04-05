<?php

namespace App\Http\Livewire\Notes;

use Livewire\Component;
use App\Models\Company;

class FormInputCompanyNote extends Component
{
    public $company_name, $company_country, $agent_type, $company_id;

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
  
        return redirect()->to('/formInputContactNote');
    }

    public function render()
    {
        return view('livewire.notes.form-input-company-note');
    }
}
