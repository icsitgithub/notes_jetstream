<?php

namespace App\Http\Livewire\Show;

use App\Models\Note;
use Livewire\WithPagination;
use Livewire\Component;

class ByCompany extends Component
{
    use WithPagination;

    public function mount($id)
    {
        $this->company_id = $id;
    }

    public function render()
    {
        $notes = Note::where('company_id', $this->company_id)->orderBy('created_at', 'DESC')->filter(request(['search']))->paginate(10);
        return view('livewire.show.by-company',[
            'notes' => $notes
        ]);
    }
}
