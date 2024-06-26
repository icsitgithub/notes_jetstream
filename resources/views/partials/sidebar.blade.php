<aside id="logo-sidebar"
    class="fixed top-0 left-0 z-40 w-64 h-screen transition-transform -translate-x-full bg-white border-r border-gray-200 sm:translate-x-0 dark:bg-gray-800 dark:border-gray-700"
    aria-label="Sidebar">
    <div class="h-full px-3 pb-4 overflow-y-auto bg-white dark:bg-gray-800">
        <div class="px-8">
            <div class="h-16 w-full flex items-center">
                <img src="{{ asset('ics_travel_official.jpg') }}" class="h-10 mr-3" alt="ICS" />
                <span
                    class="self-center text-xl font-semibold sm:text-2xl whitespace-nowrap dark:text-white">ICS-Notes</span>
            </div>
            <ul class="mt-5">
                <li
                    class="flex w-full justify-between text-gray-400 hover:text-gray-300 cursor-pointer items-center mb-6">
                    <a href="{{ route('notes') }}"
                        class="{{ request()->routeIs('notes') ? 'text-white' : '' }} flex items-center focus:outline-none focus:ring-2 focus:ring-white">
                        <i class="fa-solid fa-notes-medical"></i>
                        <p class="text-sm ml-2">{{ __('Notes') }}</p>
                    </a>
                </li>
                <li
                    class="flex w-full justify-between text-gray-400 hover:text-gray-300 cursor-pointer items-center mb-6">
                    <a href="{{ route('events') }}"
                        class="{{ request()->routeIs('events') ? 'text-white' : '' }} flex items-center focus:outline-none focus:ring-2 focus:ring-white">
                        <i class="fa-regular fa-calendar-days"></i>
                        <p class="text-sm ml-2">{{ __('Events') }}</p>
                    </a>
                </li>
                <li
                    class="flex w-full justify-between text-gray-400 hover:text-gray-300 cursor-pointer items-center mb-6">
                    <a href="{{ route('contacts') }}"
                        class="{{ request()->routeIs('contacts') ? 'text-white' : '' }} flex items-center focus:outline-none focus:ring-2 focus:ring-white">
                        <i class="fa-solid fa-address-book"></i>
                        <p class="text-sm ml-2">{{ __('Contacts') }}</p>
                    </a>
                </li>
                <li
                    class="flex w-full justify-between text-gray-400 hover:text-gray-300 cursor-pointer items-center mb-6">
                    <a href="{{ route('companies') }}"
                        class="{{ request()->routeIs('companies') ? 'text-white' : '' }} flex items-center focus:outline-none focus:ring-2 focus:ring-white">
                        <i class="fa-solid fa-building"></i>
                        <p class="text-sm ml-2">{{ __('Companies') }}</p>
                    </a>
                </li>
            </ul>
            <div class="h-16 w-full flex items-center">
                <div class="relative">
                    <img class="h-8 w-8 rounded-full object-cover" src="{{ Auth::user()->profile_photo_url }}"
                        alt="{{ Auth::user()->name }}" />
                </div>
                <span
                    class="ml-3 self-center text-sm font-semibold sm:text-sm whitespace-nowrap dark:text-white">{{ Auth::user()->name }}</span>
            </div>
        </div>
        <div class="absolute inset-x-0 bottom-0 h-16 px-8 border-t border-gray-700">
            <ul class="w-full flex items-center justify-between bg-gray-800">
                <li class="cursor-pointer text-white pt-5 pb-3">
                    <a href="{{ route('profile.show') }}">
                        <i class="fa-solid fa-gears"></i>
                    </a>
                </li>
                <li class="cursor-pointer text-white pt-5 pb-3">
                    <form method="POST" action="{{ route('logout') }}" x-data>
                        @csrf
                        <a href="{{ route('logout') }}" @click.prevent="$root.submit();" aria-label="open settings">
                            <i class="fa-solid fa-arrow-right-from-bracket"></i>
                        </a>
                    </form>
                </li>
            </ul>
        </div>
    </div>
</aside>
