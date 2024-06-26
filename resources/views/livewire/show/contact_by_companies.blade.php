<div class="py-1">
    <div class="mx-auto sm:px-6 lg:px-8">
        <x-slot name="header">
            <h1 class="font-semibold text-xl text-gray-800 leading-tight">
                {{ __('Contact Lists') }}
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
                <button class="absolute bg-transparent text-2xl font-semibold leading-none right-0 top-0 mt-4 mr-6 outline-none focus:outline-none" onclick="closeAlert(event)">
                    <span>×</span>
                </button>
            </div>
        @endif
        <div class="mt-3 grid grid-cols-2">
            <form class="flex items-center">
                <div class="relative w-full">
                    <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                        <svg aria-hidden="true" class="w-5 h-5 text-gray-500 dark:text-gray-400" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z" clip-rule="evenodd"></path>
                        </svg>
                    </div>
                    <input type="search" wire:model="search" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-10 p-2.5 dark:bg-white dark:border-gray-600 dark:placeholder-black dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Search" name="search">
                </div>
            </form>

            <div class="grid place-content-end">
                <button wire:click="create()" class="inline items-center px-4 py-2 my-3 bg-black border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-gray-700 active:bg-gray-900 focus:outline-none focus:border-gray-900 focus:shadow-outline-gray disabled:opacity-25 transition ease-in-out duration-150">
                    Create New Contact
                </button>
            </div>
            @if ($isOpen)
                @include('livewire.contacts.create')
            @endif
        </div>

        <div class="grid grid-cols-4 gap-2">
            @foreach ($contacts as $contact)
                <article class="w-full max-w-sm px-4 py-3 rounded-md shadow-md bg-white border border-gray-600">
                    <div>
                        <div class="flex flex-row mt-2">
                            <span class="text-sm font-light text-gray-800 dark:text-gray-800">{{ $contact->created_at->format('Y-m-d') }}</span>
                        </div>
                        <div>
                            <h1 class="mt-2 text-lg font-semibold text-gray-800 dark:text-black">
                                {{ $contact->contact_gender }} {{ $contact->first_name }} {{ $contact->last_name }}
                            </h1>
                            <p class="font-normal text-sm text-gray-700 dark:text-black"><i class="fa-solid fa-building"></i> {{ $contact->company->company_name }}</p>
                            <p class="font-normal text-sm text-gray-700 dark:text-black"><i class="fa-solid fa-thumbtack"></i> {{ $contact->title }}</p>
                            <p class="font-normal text-sm text-gray-700 dark:text-black"><i class="fa-solid fa-phone"></i> {{ $contact->phone_number }}</p>
                            <p class="font-normal text-sm text-gray-700 dark:text-black"><i class="fa-solid fa-envelope"></i> {{ $contact->email }}</p>
                        </div>
                        <div class="flex flex-row-reverse">
                            <button wire:click="delete({{ $contact->id }})" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-black bg-gray-0 rounded-lg hover:bg-gray-400 focus:ring-4 focus:outline-none focus:ring-gray-300 dark:bg-gray-0 dark:hover:bg-gray-400 dark:focus:ring-gray-300 ease-in-out duration-150">
                                <svg aria-hidden="true" class="w-4 h-4" fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                                    <path d="M135.2 17.7L128 32H32C14.3 32 0 46.3 0 64S14.3 96 32 96H416c17.7 0 32-14.3 32-32s-14.3-32-32-32H320l-7.2-14.3C307.4 6.8 296.3 0 284.2 0H163.8c-12.1 0-23.2 6.8-28.6 17.7zM416 128H32L53.2 467c1.6 25.3 22.6 45 47.9 45H346.9c25.3 0 46.3-19.7 47.9-45L416 128z"/>
                                </svg>
                            </button>
                            <button wire:click="edit({{ $contact->id }})" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-black bg-gray-0 rounded-lg hover:bg-gray-400 focus:ring-4 focus:outline-none focus:ring-gray-300 dark:bg-gray-0 dark:hover:bg-gray-400 dark:focus:ring-gray-300 ease-in-out duration-150">
                                <i class="fa-solid fa-pen"></i>
                            </button>
                            <a href="/showNoteByContact/{{ $contact->id }}">
                                <button class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-black bg-gray-0 rounded-lg hover:bg-gray-400 focus:ring-4 focus:outline-none focus:ring-gray-300 dark:bg-gray-0 dark:hover:bg-gray-400 dark:focus:ring-gray-300 ease-in-out duration-150">
                                    <i class="fa-solid fa-magnifying-glass"></i>
                                </button>
                            </a>
                        </div>
                    </div>
                </article>
            @endforeach
        </div>
        <nav class="mt-3" aria-label="Page navigation example">
            <ul class="flex-col -space-x-px">
                {{ $contacts->links() }}
            </ul>
        </nav>
    </div>
</div>
<script>
    function closeAlert(event) {
        let element = event.target;
        while (element.nodeName !== "BUTTON") {
            element = element.parentNode;
        }
        element.parentNode.parentNode.removeChild(element.parentNode);
    }
</script>
