<?php

namespace App\Http\Livewire\Notes;

use Livewire\Component;
use App\Mail\SendMail;
use App\Models\User;
use App\Models\Note;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Mail;

class FormSendMail extends Component
{
    public $notes;
    public $recipient;
    
    public function mount($id)
    {
        $notes = Note::findOrFail($id);
        $this->notes = $notes;
        // dd(auth()->user()->email);
    }

    /**
     * The attributes that are mass assignable.
     *
     * @var array
    */
    public function render()
    {
        return view('livewire.notes.form-send-mail');
    }

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    private function resetInputFields(){
        $this->recipinet = '';
    }

    public function SendMail()
    {
        // dd($this->notes);
        $this->validate([
            'recipient' => 'required|email',
        ]);
        
        Mail::to($this->recipient)
        ->send(new SendMail($this->notes));
        
        // dd("Email is sent successfully.");

        $this->recipinet = '';
    }

     /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function delete($id)
    {
        Note::find($id)->delete();
        session()->flash('message', 'Note Deleted Successfully.');
    }

}
