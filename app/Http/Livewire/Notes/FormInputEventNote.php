<?php

namespace App\Http\Livewire\Notes;

use Livewire\Component;
use App\Models\Event;

class FormInputEventNote extends Component
{
    public $event_name, $event_id;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function store()
    {
        $this->validate([
            'event_name' => 'required',
        ]);
   
        Event::updateOrCreate(['id' => $this->event_id], [
            'event_name' => $this->event_name
        ]);
  
        session()->flash('message', 
            $this->event_id ? 'Event Updated Successfully.' : 'Event Created Successfully.');

        return redirect()->to('/formInputNote');
    }

    public function render()
    {
        return view('livewire.notes.form-input-event-note');
    }
}
