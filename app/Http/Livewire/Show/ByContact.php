<?php

namespace App\Http\Livewire\Show;

use App\Models\Note;
use Livewire\WithPagination;
use Livewire\Component;

class ByContact extends Component
{
    use WithPagination;
    public $title, $body, $note_id;
    public $companies, $contacts, $search;
    public $company_id, $event_id,$contact_id;

    public function mount($id)
    {
        $notes = Note::where('contact_id', $id)->orderBy('created_at', 'DESC')->filter(request(['search']))->get();
        $this->notes = $notes;
        // dd($notes);
    }

    public function render()
    {
        return view('livewire.show.by-contact');
    }
}
