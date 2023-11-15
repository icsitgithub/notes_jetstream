<div class="py-1">
    <div class="mx-auto sm:px-6 lg:px-8">
        <x-slot name="header">
            <h1 class="font-semibold text-xl text-gray-800 leading-tight">
                {{ __('Note Lists') }}
            </h1>
        </x-slot>
        @if (session()->has('message'))
            <div class="px-6 py-4 border-0 rounded relative mb-4 bg-teal-100 border-t-4 border-teal-500 rounded-b text-teal-900">
                <span class="text-xl inline-block mr-5 align-middle">
                    <i class="fas fa-bell"></i>
                </span>
                <span class="inline-block align-middle mr-8">
                    {{ session('message') }}
                </span>
                <button
                    class="absolute bg-transparent text-2xl font-semibold leading-none right-0 top-0 mt-4 mr-6 outline-none focus:outline-none"
                    onclick="closeAlert(event)">
                    <span>×</span>
                </button>
            </div>
        @endif
        <div class="mt-3 flex justify-between">
            <form class="flex items-center">
                <div class="relative w-64">
                    <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                        <svg aria-hidden="true" class="w-5 h-5 text-gray-500 dark:text-gray-400" fill="currentColor"
                            viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
                                d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"
                                clip-rule="evenodd"></path>
                        </svg>
                    </div>
                    <input type="search"
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-10 p-2.5  dark:bg-white dark:border-gray-600 dark:placeholder-black dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500"
                        placeholder="Search" name="search" value="{{ request('search') }}">
                </div>
                <button type="submit"
                    class="p-2.5 ml-2 text-sm font-medium text-white bg-gray-700 rounded-lg border border-gray-700 hover:bg-gray-800 focus:ring-4 focus:outline-none focus:ring-gray-300 dark:bg-gray-600 dark:hover:bg-gray-700 dark:focus:ring-gray-800">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"
                        xmlns="http://www.w3.org/2000/svg">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                    </svg>
                    <span class="sr-only">Search</span>
                </button>
            </form>
        </div>
        @if ($isOpen)
            @include('livewire.notes.create')
        @endif
        @foreach ($notes as $note)
            <div class="max-w mt-3 mb-5">
                <div
                    class="divide-y divide-gray-100 overflow-hidden rounded-lg border border-gray-200 bg-white shadow-sm">
                    <details class="group" open>
                        <summary
                            class="flex cursor-pointer list-none items-center justify-between p-2 text-lg font-medium text-secondary-900 group-open:bg-gray-50">
                            {{ $note->title }}
                            <div class="flex items-center justify-between">
                            </div>
                            <div class="text-secondary-500">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor"
                                    class="block h-5 w-5 transition-all duration-300 group-open:rotate-180">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M19.5 8.25l-7.5 7.5-7.5-7.5" />
                                </svg>
                            </div>
                        </summary>
                        <div class="border-t border-t-gray-100 p-4 text-secondary-500">{!! $note->body !!}</div>
                        <div class="p-2 group-open:bg-gray-50">
                            Company : 
                            <a href="/showNoteByCompany/{{ $note->contact->company_id }}">{{ $note->contact->company->company_name }}</a> |
                            Contact Name : 
                            <a href="/showNoteByContact/{{ $note->contact_id }}">{{ $note->contact->contact_name }}</a> |
                            Event : 
                            <a href="/showNoteByEvent/{{ $note->event_id }}">{{ $note->event->event_name }}</a>
                            <div class="flex flex-row-reverse">
                                <a href="/formSendMail/{{ $note->id }}">
                                    <button
                                        class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-black bg-gray-0 rounded-lg hover:bg-gray-400 focus:ring-4 focus:outline-none focus:ring-gray-300 dark:bg-gray-0 dark:hover:bg-gray-400 dark:focus:ring-gray-300 ease-in-out duration-150">
                                        <i class="fa-solid fa-share-from-square"></i>
                                    </button>
                                </a>
                                <button wire:click="edit({{ $note->id }})"
                                    class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-black bg-gray-0 rounded-lg hover:bg-gray-400 focus:ring-4 focus:outline-none focus:ring-gray-300 dark:bg-gray-0 dark:hover:bg-gray-400 dark:focus:ring-gray-300 ease-in-out duration-150">
                                    <i class="fa-solid fa-pen"></i>
                                </button>
                                <button wire:click="delete({{ $note->id }})"
                                    class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-black bg-gray-0 rounded-lg hover:bg-gray-400 focus:ring-4 focus:outline-none focus:ring-gray-300 dark:bg-gray-0 dark:hover:bg-gray-400 dark:focus:ring-gray-300 ease-in-out duration-150">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </div>
                        </div>
                    </details>
                </div>
            </div>
        @endforeach
        <nav class="mt-3" aria-label="Page navigation example">
            <ul class="flex-col -space-x-px">
                {{ $notes->links() }}
            </ul>
        </nav>
    </div>
</div>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
