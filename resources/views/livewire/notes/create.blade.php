<div class="fixed z-10 inset-0 overflow-y-auto ease-out duration-400">
    <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">

        <div class="fixed inset-0 transition-opacity">
            <div class="absolute inset-0 bg-gray-500 opacity-75"></div>
        </div>

        <!-- This element is to trick the browser into centering the modal contents. -->
        <span class="hidden sm:inline-block sm:align-middle sm:h-screen"></span>

        <div class="inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full"
            role="dialog" aria-modal="true" aria-labelledby="modal-headline">
            {{-- <form>
                <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                    <div class="">
                        <label for="event_id"
                            class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-700">Event</label>
                        <select wire:model="event_id"
                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-black focus:border-black block w-full p-2.5 dark:text-black dark:focus:ring-black dark:focus:border-black">
                            <option value="" selected disabled>Select Event</option>
                            @foreach ($events as $event)
                                <option value="{{ $event->id }}">{{ $event->event_name }}</option>
                            @endforeach
                        </select>
                        <div>
                            <button
                                class="px-4 py-2 text-sm font-medium tracking-wide text-white capitalize transition-colors duration-300 transform bg-blue-700 rounded-md sm:mx-2 hover:bg-blue-600 focus:outline-none focus:bg-blue-600">
                                Get Started
                            </button>
                        </div>

                        <label for="company_id"
                            class="block mt-4 mb-2 text-sm font-medium text-gray-900 dark:text-gray-700">Company</label>
                        <select wire:model="company_id"
                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-black focus:border-black block w-full p-2.5 dark:text-black dark:focus:ring-black dark:focus:border-black">
                            <option value="" selected disabled>Select Company</option>
                            @foreach ($companies as $company)
                                <option value="{{ $company->id }}">{{ $company->company_name }}</option>
                            @endforeach
                        </select>

                        @if (!is_null($company_id))
                            <label for="contact_id"
                                class="block mt-4 mb-2 text-sm font-medium text-gray-900 dark:text-gray-700">Contact</label>
                            <select wire:model="contact_id"
                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-black focus:border-black block w-full p-2.5 dark:text-black dark:focus:ring-black dark:focus:border-black">
                                <option value="" selected disabled>Select Contact</option>
                                @foreach ($contacts as $contact)
                                    <option value="{{ $contact->id }}">{{ $contact->contact_name }}</option>
                                @endforeach
                            </select>
                        @endif

                        <div class="mt-4 mb-4">
                            <label for="title" class="block text-gray-700 text-sm font-bold mb-2">Note Title
                                :</label>
                            <input type="text"
                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                id="title" placeholder="Enter Note Title" wire:model="title">
                            @error('title')
                                <span class="text-red-500">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="mt-4 form-group" wire:model.debounce.365ms="body" wire:ignore>
                            <label for="body" class="block text-gray-700 text-sm font-bold mb-2">Note</label>
                            <input
                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                type="hidden" name="content" id="body">
                            <trix-editor input="body"></trix-editor>
                            @error('body')
                                <span class="text-red-500">{{ $message }}</span>
                            @enderror
                        </div>

                    </div>
                </div>

                <div class="bg-gray-50 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                    <span class="flex w-full rounded-md shadow-sm sm:ml-3 sm:w-auto">
                        <button wire:click.prevent="store()" type="button"
                            class="inline-flex justify-center w-full rounded-md border border-transparent px-4 py-2 bg-green-600 text-base leading-6 font-medium text-white shadow-sm hover:bg-green-500 focus:outline-none focus:border-green-700 focus:shadow-outline-green transition ease-in-out duration-150 sm:text-sm sm:leading-5">
                            Save
                        </button>
                    </span>
                    <span class="mt-3 flex w-full rounded-md shadow-sm sm:mt-0 sm:w-auto">

                        <button wire:click="closeModal()" type="button"
                            class="inline-flex justify-center w-full rounded-md border border-gray-300 px-4 py-2 bg-white text-base leading-6 font-medium text-gray-700 shadow-sm hover:text-gray-500 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue transition ease-in-out duration-150 sm:text-sm sm:leading-5">
                            Cancel
                        </button>
                    </span>
                </div>
            </form> --}}
            <form>
                <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                    <label for="event_id"
                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-700">Event</label>
                    <div class="flex flex-row">
                        <select wire:model="event_id"
                            class="w-full bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-black focus:border-black p-2.5 dark:text-black dark:focus:ring-black dark:focus:border-black">
                            <option value="" selected disabled>Select Event</option>
                            @foreach ($events as $event)
                                <option value="{{ $event->id }}">{{ $event->event_name }}</option>
                            @endforeach
                        </select>
                        <div class="ml-2">
                            <button wire:click="create()"
                                class="inline items-center bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-black focus:border-black p-2.5 dark:text-black dark:focus:ring-black dark:focus:border-black">
                                +
                            </button>
                            {{-- @if ($isOpen)
                                @include('livewire.events.create')
                            @endif --}}
                        </div>
                    </div>
                    <label for="company_id"
                        class="block mt-2 mb-2 text-sm font-medium text-gray-900 dark:text-gray-700">Company</label>
                    <div class="flex flex-row">
                        <select wire:model="company_id"
                            class="w-full bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-black focus:border-black p-2.5 dark:text-black dark:focus:ring-black dark:focus:border-black">
                            <option value="" selected disabled>Select Company</option>
                            @foreach ($companies as $company)
                                <option value="{{ $company->id }}">{{ $company->company_name }}</option>
                            @endforeach
                        </select>
                        <div class="ml-2">
                            <button wire:click="create()"
                                class="inline items-center bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-black focus:border-black p-2.5 dark:text-black dark:focus:ring-black dark:focus:border-black">
                                +
                            </button>
                            {{-- @if ($isOpen)
                                @include('livewire.events.create')
                            @endif --}}
                        </div>
                    </div>
                    <label for="contact_id"
                        class="block mt-2 mb-2 text-sm font-medium text-gray-900 dark:text-gray-700">Contact</label>
                    <div class="flex flex-row">
                        <select wire:model="contact_id"
                            class="w-full bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-black focus:border-black p-2.5 dark:text-black dark:focus:ring-black dark:focus:border-black">
                            <option value="" selected disabled>Select Contact</option>
                            @foreach ($contacts as $contact)
                                <option value="{{ $contact->id }}">{{ $contact->contact_name }}</option>
                            @endforeach
                        </select>
                        <div class="ml-2">
                            <button wire:click="create()"
                                class="inline items-center bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-black focus:border-black p-2.5 dark:text-black dark:focus:ring-black dark:focus:border-black">
                                +
                            </button>
                            {{-- @if ($isOpen)
                                @include('livewire.events.create')
                            @endif --}}
                        </div>
                    </div>

                    <div class="mt-4 mb-4">
                        <label for="title" class="block text-gray-700 text-sm font-bold mb-2">Note Title
                            :</label>
                        <input type="text"
                            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="title" placeholder="Enter Note Title" wire:model="title">
                        @error('title')
                            <span class="text-red-500">{{ $message }}</span>
                        @enderror
                    </div>

                    <div class="mt-4 form-group" wire:model.debounce.365ms="body" wire:ignore>
                        <label for="body" class="block text-gray-700 text-sm font-bold mb-2">Note</label>
                        <input
                            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            type="hidden" name="content" id="body">
                        <trix-editor input="body"></trix-editor>
                        @error('body')
                            <span class="text-red-500">{{ $message }}</span>
                        @enderror
                    </div>

                    <div class="bg-gray-50 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                        <span class="flex w-full rounded-md shadow-sm sm:ml-3 sm:w-auto">
                            <button wire:click.prevent="store()" type="button"
                                class="inline-flex justify-center w-full rounded-md border border-transparent px-4 py-2 bg-green-600 text-base leading-6 font-medium text-white shadow-sm hover:bg-green-500 focus:outline-none focus:border-green-700 focus:shadow-outline-green transition ease-in-out duration-150 sm:text-sm sm:leading-5">
                                Save
                            </button>
                        </span>
                        <span class="mt-3 flex w-full rounded-md shadow-sm sm:mt-0 sm:w-auto">
    
                            <button wire:click="closeModal()" type="button"
                                class="inline-flex justify-center w-full rounded-md border border-gray-300 px-4 py-2 bg-white text-base leading-6 font-medium text-gray-700 shadow-sm hover:text-gray-500 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue transition ease-in-out duration-150 sm:text-sm sm:leading-5">
                                Cancel
                            </button>
                        </span>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/trix/1.3.1/trix.min.js"></script>
<script>
    $(document).ready(function() {
        $('#company_id').on('change', function() {
            var companyID = $(this).val();
            // console.log(companyID);
            if (companyID) {
                $.ajax({
                    url: '/notes/' + companyID,
                    type: "GET",
                    data: {
                        "_token": "{{ csrf_token() }}"
                    },
                    dataType: "json",
                    success: function(data) {
                        // console.log(data);
                        if (data) {
                            $('#contact_id').empty();
                            $('#contact_id').focus;
                            $('#contact_id').append(
                                '<option value="">-- Select Contact --</option>');
                            $.each(data, function(key, value) {
                                console.log(value);
                                $('#contact_id').append(
                                    '<option value="' +
                                    value.id + '">' + value.contact_name +
                                    '</option>');
                            });
                        } else {
                            $('#contact_id').empty();
                        }
                    }
                });
            } else {
                $('#contact_id').empty();
            }
        });
    });
</script>
