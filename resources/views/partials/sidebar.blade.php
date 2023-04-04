<aside id="logo-sidebar"
    class="fixed top-0 left-0 z-40 w-64 h-screen transition-transform -translate-x-full bg-white border-r border-gray-200 sm:translate-x-0 dark:bg-gray-800 dark:border-gray-700"
    aria-label="Sidebar">
    <div class="h-full px-3 pb-4 overflow-y-auto bg-white dark:bg-gray-800">
        <div class="px-8">
            <div class="h-16 w-full flex items-center">
                <img src="{{ asset('ics_travel.jpg') }}" class="h-8 mr-3" alt="ICS" />
                <span
                    class="self-center text-xl font-semibold sm:text-2xl whitespace-nowrap dark:text-white">ICS-Notes</span>
            </div>
            <div class="h-16 w-full flex items-center">
                <img class="h-7 w-7 rounded-full object-cover" src="{{ Auth::user()->profile_photo_url }}"
                    alt="{{ Auth::user()->name }}" />
                <span
                    class="ml-3 self-center text-sm font-semibold sm:text-sm whitespace-nowrap dark:text-white">{{ Auth::user()->name }}</span>
            </div>
            <div class="bottom-0">
                <div class="relative">
                    <div class="text-gray-300 absolute ml-4 inset-0 m-auto w-4 h-4">
                        <img src="https://tuk-cdn.s3.amazonaws.com/can-uploader/light_with_icons_at_bottom-svg2.svg"
                            alt="Search">
                    </div>
                    <input
                        class="bg-gray-700 focus:outline-none focus:ring-1 focus:ring-gray-100 rounded w-full text-sm text-gray-300 placeholder-gray-400 pl-10 py-2"
                        type="text" placeholder="Search" />
                </div>
            </div>
            <ul class="mt-5">
                <li
                    class="flex w-full justify-between text-gray-400 hover:text-gray-300 cursor-pointer items-center mb-6">
                    <a href="{{ route('notes') ? 'notes' : '' }}"
                        class="{{ request()->routeIs('notes') ? 'text-white' : '' }} flex items-center focus:outline-none focus:ring-2 focus:ring-white">
                        <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-puzzle"
                            width="18" height="18" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                            fill="none" stroke-linecap="round" stroke-linejoin="round">
                            <path stroke="none" d="M0 0h24v24H0z"></path>
                            <path
                                d="M4 7h3a1 1 0 0 0 1 -1v-1a2 2 0 0 1 4 0v1a1 1 0 0 0 1 1h3a1 1 0 0 1 1 1v3a1 1 0 0 0 1 1h1a2 2 0 0 1 0 4h-1a1 1 0 0 0 -1 1v3a1 1 0 0 1 -1 1h-3a1 1 0 0 1 -1 -1v-1a2 2 0 0 0 -4 0v1a1 1 0 0 1 -1 1h-3a1 1 0 0 1 -1 -1v-3a1 1 0 0 1 1 -1h1a2 2 0 0 0 0 -4h-1a1 1 0 0 1 -1 -1v-3a1 1 0 0 1 1 -1">
                            </path>
                        </svg>
                        <span class="text-sm ml-2">{{ __('Notes') }}</span>
                    </a>
                </li>
                <li
                    class="flex w-full justify-between text-gray-400 hover:text-gray-300 cursor-pointer items-center mb-6">
                    <a href="{{ route('events') }}"
                        class="{{ request()->routeIs('events') ? 'text-white' : '' }} flex items-center focus:outline-none focus:ring-2 focus:ring-white">
                        <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-compass"
                            width="18" height="18" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                            fill="none" stroke-linecap="round" stroke-linejoin="round">
                            <path stroke="none" d="M0 0h24v24H0z"></path>
                            <polyline points="8 16 10 10 16 8 14 14 8 16"></polyline>
                            <circle cx="12" cy="12" r="9"></circle>
                        </svg>
                        <span class="text-sm ml-2">{{ __('Events') }}</span>
                    </a>
                </li>
                <li
                    class="flex w-full justify-between text-gray-400 hover:text-gray-300 cursor-pointer items-center mb-6">
                    <a href="{{ route('contacts') }}"
                        class="{{ request()->routeIs('contacts') ? 'text-white' : '' }} flex items-center focus:outline-none focus:ring-2 focus:ring-white">
                        <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-code" width="20"
                            height="20" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" fill="none"
                            stroke-linecap="round" stroke-linejoin="round">
                            <path stroke="none" d="M0 0h24v24H0z"></path>
                            <polyline points="7 8 3 12 7 16"></polyline>
                            <polyline points="17 8 21 12 17 16"></polyline>
                            <line x1="14" y1="4" x2="10" y2="20"></line>
                        </svg>
                        <span class="text-sm ml-2">{{ __('Contacts') }}</span>
                    </a>
                </li>
                <li
                    class="flex w-full justify-between text-gray-400 hover:text-gray-300 cursor-pointer items-center mb-6">
                    <a href="{{ route('companies') }}"
                        class="{{ request()->routeIs('companies') ? 'text-white' : '' }} flex items-center focus:outline-none focus:ring-2 focus:ring-white">
                        <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-puzzle"
                            width="18" height="18" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                            fill="none" stroke-linecap="round" stroke-linejoin="round">
                            <path stroke="none" d="M0 0h24v24H0z"></path>
                            <path
                                d="M4 7h3a1 1 0 0 0 1 -1v-1a2 2 0 0 1 4 0v1a1 1 0 0 0 1 1h3a1 1 0 0 1 1 1v3a1 1 0 0 0 1 1h1a2 2 0 0 1 0 4h-1a1 1 0 0 0 -1 1v3a1 1 0 0 1 -1 1h-3a1 1 0 0 1 -1 -1v-1a2 2 0 0 0 -4 0v1a1 1 0 0 1 -1 1h-3a1 1 0 0 1 -1 -1v-3a1 1 0 0 1 1 -1h1a2 2 0 0 0 0 -4h-1a1 1 0 0 1 -1 -1v-3a1 1 0 0 1 1 -1">
                            </path>
                        </svg>
                        <span class="text-sm ml-2">{{ __('Companies') }}</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="absolute inset-x-0 bottom-0 h-16 px-8 border-t border-gray-700">
            <ul class="w-full flex items-center justify-between bg-gray-800">
                <li class="cursor-pointer text-white pt-5 pb-3">
                    <button aria-label="show notifications"
                        class="focus:outline-none focus:ring-2 rounded focus:ring-gray-300">
                        <img src="https://tuk-cdn.s3.amazonaws.com/can-uploader/light_with_icons_at_bottom-svg3.svg"
                            alt="notifications">
                    </button>
                </li>
                <li class="cursor-pointer text-white pt-5 pb-3">
                    <button aria-label="open chats"
                        class="focus:outline-none focus:ring-2 rounded focus:ring-gray-300">
                        <img src="https://tuk-cdn.s3.amazonaws.com/can-uploader/light_with_icons_at_bottom-svg4.svg"
                            alt="chat">
                    </button>
                </li>
                <li class="cursor-pointer text-white pt-5 pb-3">
                    <button aria-label="open settings"
                        class="focus:outline-none focus:ring-2 rounded focus:ring-gray-300">
                        <img src="https://tuk-cdn.s3.amazonaws.com/can-uploader/light_with_icons_at_bottom-svg5.svg"
                            alt="settings">
                    </button>
                </li>
                <li class="cursor-pointer text-white pt-5 pb-3" method="POST" action="{{ route('logout') }}">
                    @csrf
                    <button aria-label="open logs" class="focus:outline-none focus:ring-2 rounded focus:ring-gray-300"
                        href="{{ route('logout') }}" @click.prevent="$root.submit();">
                        <i class="fa-sharp fa-regular fa-arrow-right-from-bracket fa-2xs"></i>
                    </button>
                </li>
            </ul>
        </div>
    </div>
</aside>