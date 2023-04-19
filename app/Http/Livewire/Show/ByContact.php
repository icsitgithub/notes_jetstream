<?php

namespace App\Http\Livewire\Show;

use App\Models\Note;
use Livewire\WithPagination;
use Livewire\Component;

class ByContact extends Component
{
    use WithPagination;

    public function mount($id)
    {
        $this->contact_id = $id;
        // dd($notes);
    }

    public function render()
    {
        $notes = Note::where('contact_id', $this->contact_id)->orderBy('created_at', 'DESC')->filter(request(['search']))->paginate(10);
        return view('livewire.show.by-contact',[
            'notes' => $notes
        ]);
    }
}
