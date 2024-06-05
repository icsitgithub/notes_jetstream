<?php

namespace App\Http\Livewire\Notes;

use Livewire\Component;
use App\Models\Company;

class FormInputCompanyNote extends Component
{
    public $company_name, $company_country, $agent_type, $business_source, $company_id, $company_socmed, $link_socmed, $company_notes;
    public $updateMode = false;
    public $inputs = [];
    public $i = 1;

    public function add($i){
        $i = $i + 1;
        $this->i = $i;
        array_push($this->inputs, $i);
    }

    public function remove($i){
        unset($this->inputs[$i]);
    }

    private function resetInputFields(){
        $this->company_socmed = '';
        $this->link_socmed = '';
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
            'company_notes' => 'required',
            'agent_type' => 'required',
            'business_source' => 'required',
        ]);

        Company::updateOrCreate(['id' => $this->company_id], [
            'user_id' => $this->user = auth()->user()->id,
            'company_name' => $this->company_name,
            'company_country' => $this->company_country,
            'company_notes' => $this->company_notes,
            'agent_type' => $this->agent_type,
            'business_source' => $this->business_source,
        ]);
  
        $this->inputs = [];

        session()->flash('message', 
            $this->company_id ? 'Company Updated Successfully.' : 'Company Created Successfully.');
  
        return redirect()->to('/formInputContactNote');
    }

    public function render()
    {
        return view('livewire.notes.form-input-company-note');
    }
}
