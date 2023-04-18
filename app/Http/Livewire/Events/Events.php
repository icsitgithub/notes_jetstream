<?php
namespace App\Http\Livewire\Events;

use Livewire\WithPagination;
use Livewire\Component;
use App\Models\Event;
use App\Models\User;

class Events extends Component
{
    use WithPagination;
    public $event_name, $event_id, $user_id;
    public $isOpen = 0;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
    */
    public function render()
    {
        // $this->events = Event::all();
        // dd(auth()->user()->id);
        return view('livewire.events.events',[
            'events' => Event::orderBy('created_at', 'DESC')->filter(request(['search']))->paginate(8)
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
        $this->user_id = '';
        $this->event_name = '';
        $this->event_id = '';
    }

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
            'user_id' => $this->user = auth()->user()->id,
            'event_name' => $this->event_name
        ]);

        session()->flash('message', 
            $this->event_id ? 'Event Updated Successfully.' : 'Event Created Successfully.');
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
        $event = Event::findOrFail($id);
        $this->event_id = $id;
        $this->event_name = $event->event_name;
    
        $this->openModal();
    }
     /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function delete($id)
    {
        Event::find($id)->delete();
        session()->flash('message', 'Event Deleted Successfully.');
    }
}