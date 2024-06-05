<div class="py-1">
    <div class="mx-auto sm:px-6 lg:px-8">
        <x-slot name="header">
            <h1 class="font-semibold text-xl text-gray-800 leading-tight">
                {{ __('Form Add Note') }}
            </h1>
        </x-slot>
        @if (session()->has('message'))
            <div class="bg-teal-100 border-t-4 border-teal-500 rounded-b text-teal-900 px-4 py-3 shadow-md my-3"
                role="alert">
                <div class="flex">
                    <div>
                        <p class="text-sm">{{ session('message') }}</p>
                    </div>
                </div>
            </div>
        @endif
        <a href="/formInputEventNote">
            <button type="button"
                class="inline items-center px-4 py-2 my-3 bg-black border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-gray-700 active:bg-gray-900 focus:outline-none focus:border-gray-900 focus:shadow-outline-gray disabled:opacity-25 transition ease-in-out duration-150">
                Create New Event
            </button>
        </a>
        <a href="/formInputContactNote" class="ml-4">
            <button type="button"
                class="inline items-center px-4 py-2 my-3 bg-black border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-gray-700 active:bg-gray-900 focus:outline-none focus:border-gray-900 focus:shadow-outline-gray disabled:opacity-25 transition ease-in-out duration-150">
                Create New Contact
            </button>
        </a>
        <form>
            <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                <label for="event_id"
                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-700">Event</label>
                <div class="flex flex-row">
                    <select wire:model="event_id"
                        class="w-full bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-black focus:border-black p-2.5 dark:text-black dark:focus:ring-black dark:focus:border-black">
                        <option value=0 selected>Select Event</option>
                        @foreach ($events as $event)
                            <option value="{{ $event->id }}">{{ $event->event_name }}</option>
                        @endforeach
                    </select>
                </div>
                <label for="company_id"
                    class="block mt-2 mb-2 text-sm font-medium text-gray-900 dark:text-gray-700">Company</label>
                <div class="flex flex-row">
                    <select wire:model="company_id"
                        class="w-full bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-black focus:border-black p-2.5 dark:text-black dark:focus:ring-black dark:focus:border-black">
                        <option value=0 selected>Select Company</option>
                        @foreach ($companies as $company)
                            <option value="{{ $company->id }}">{{ $company->company_name }}</option>
                        @endforeach
                    </select>
                </div>
                @if (!is_null($company_id))
                    <label for="contact_id"
                        class="block mt-2 mb-2 text-sm font-medium text-gray-900 dark:text-gray-700">Contact</label>
                    <div class="flex flex-row">
                        <select wire:model="contact_id"
                            class="w-full bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-black focus:border-black p-2.5 dark:text-black dark:focus:ring-black dark:focus:border-black">
                            <option value=0 selected>Select Contact</option>
                            @foreach ($contacts as $contact)
                                <option value="{{ $contact->id }}">{{ $contact->first_name }}</option>
                            @endforeach
                        </select>
                    </div>
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

                <div class="bg-gray-50 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                    <span class="flex w-full rounded-md shadow-sm sm:ml-3 sm:w-auto">
                        <button wire:click.prevent="store()" type="button"
                            class="inline-flex justify-center w-full rounded-md border border-transparent px-4 py-2 bg-green-600 text-base leading-6 font-medium text-white shadow-sm hover:bg-green-500 focus:outline-none focus:border-green-700 focus:shadow-outline-green transition ease-in-out duration-150 sm:text-sm sm:leading-5">
                            Save
                        </button>
                    </span>
                    <a href="/notes">
                        <span class="mt-3 flex w-full rounded-md shadow-sm sm:mt-0 sm:w-auto">

                            <button type="button"
                                class="inline-flex justify-center w-full rounded-md border border-gray-300 px-4 py-2 bg-white text-base leading-6 font-medium text-gray-700 shadow-sm hover:text-gray-500 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue transition ease-in-out duration-150 sm:text-sm sm:leading-5">
                                Cancel
                            </button>
                        </span>
                    </a>
                </div>
            </div>
        </form>
    </div>
</div>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
