<div class="py-1">
    <div class="mx-auto sm:px-6 lg:px-8">
        <x-slot name="header">
            <h1 class="font-semibold text-xl text-gray-800 leading-tight">
                {{ __('Note Lists') }}
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
        <div class="mt-3 flex justify-between">
            <form action="#" class="flex items-center">
                <label for="simple-search" class="sr-only">Search</label>
                <div class="relative w-full">
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

            <a href="/formInputNote" class="ml-4">
                <button type="button"
                    class="inline items-center px-4 py-2 my-3 bg-black border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-gray-700 active:bg-gray-900 focus:outline-none focus:border-gray-900 focus:shadow-outline-gray disabled:opacity-25 transition ease-in-out duration-150">
                    Create New Note
                </button>
            </a>
            @if ($isOpen)
                @include('livewire.notes.create')
            @endif
        </div>

        <div class="grid grid-cols-4 gap-2">
            @foreach ($notes as $note)
                <article class="w-auto max-w-sm h-fit px-4 py-3 rounded-md shadow-md bg-gray-50 border border-gray-800">
                    <div>
                        <div class="flex items-center justify-between">
                            <span
                                class="text-sm font-light text-gray-800 dark:text-gray-800">{{ $note->created_at->format('Y-m-d') }}</span>
                            <button wire:click="delete({{ $note->id }})"
                                class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-black bg-gray-0 rounded-lg hover:bg-gray-400 focus:ring-4 focus:outline-none focus:ring-gray-300 dark:bg-gray-0 dark:hover:bg-gray-400 dark:focus:ring-gray-300 ease-in-out duration-150">
                                <svg aria-hidden="true" class="w-4 h-4"
                                    fill="currentColor"xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                                    <!--! Font Awesome Pro 6.3.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
                                    <path
                                        d="M135.2 17.7L128 32H32C14.3 32 0 46.3 0 64S14.3 96 32 96H416c17.7 0 32-14.3 32-32s-14.3-32-32-32H320l-7.2-14.3C307.4 6.8 296.3 0 284.2 0H163.8c-12.1 0-23.2 6.8-28.6 17.7zM416 128H32L53.2 467c1.6 25.3 22.6 45 47.9 45H346.9c25.3 0 46.3-19.7 47.9-45L416 128z" />
                                </svg>
                            </button>

                        </div>

                        <div>
                            <h1 class="mt-2 text-lg font-semibold text-gray-800 dark:text-black">{{ $note->title }}
                            </h1>
                            <p class="mt-2 text-sm font-semibold text-gray-800 dark:text-black ">{!! $note->body !!}
                            </p>
                        </div>

                        <div class="flex justify-between">
                            <div class="flex flex-col items-center justify-between">
                                <a class="mt-2 mr-2 text-gray-800 cursor-pointer dark:text-gray-400 hover:text-gray-800 dark:hover:text-gray-600"
                                    tabindex="0" role="link" aria-label="twitter link">
                                    <p class="font-normal text-gray-700 dark:text-black"><i
                                            class="fa-solid fa-building"></i>
                                        {{ $note->contact->company->company_name }} </p>
                                    <p class="font-normal text-gray-700 dark:text-black"><i
                                            class="fa-solid fa-calendar-days"></i> {{ $note->event->event_name }}</p>
                                    <p class="font-normal text-gray-700 dark:text-black"><i
                                            class="fa-solid fa-address-book"></i> {{ $note->contact->contact_name }}</p>
                                </a>
                            </div>
                            <div class="order-last mt-6 text-gray-800">
                                <button wire:click="edit({{ $note->id }})"
                                    class="w-8 h-8 rounded-full bg-gray-800 text-white flex items-center justify-center">
                                    <img src="https://tuk-cdn.s3.amazonaws.com/can-uploader/single_card_with_title_and_description-svg1.svg"
                                        alt="icon" />
                                </button>
                            </div>
                        </div>
                    </div>
                </article>
            @endforeach
        </div>
        <nav class="mt-3" aria-label="Page navigation example">
            <ul class="flex-col -space-x-px">
                {{ $notes->links() }}
            </ul>
        </nav>
    </div>
</div>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
