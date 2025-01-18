<div class="py-1">
    <div class="mx-auto sm:px-6 lg:px-8">
        <x-slot name="header">
            <h1 class="font-semibold text-xl text-gray-800 leading-tight">
                {{ __('Form Add Contact') }}
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
        <a href="/formInputCompanyNote">
            <button type="button" class="inline items-center px-4 py-2 my-3 bg-black border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-gray-700 active:bg-gray-900 focus:outline-none focus:border-gray-900 focus:shadow-outline-gray disabled:opacity-25 transition ease-in-out duration-150">
                Create New Company
            </button>
        </a>
        <form>
            <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                <div class="">
                    <div wire:ignore>
                        <label for="company_id"
                            class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-700">Company</label>
                        <select wire:model="company_id" placeholder="Choose Agent Type"
                            class="select2 bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-black focus:border-black block w-full p-2.5 dark:text-black dark:focus:ring-black dark:focus:border-black">
                            <option value="" selected>Select Company</option>
                            @foreach ($companies as $company)
                                <option value="{{ $company->id }}">{{ $company->company_name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="mt-4 mb-4">
                        <label for="contact_gender"
                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-700">Gender</label>
                        <select wire:model="contact_gender" placeholder="Choose Agent Type"
                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-black focus:border-black block w-full p-2.5 dark:text-black dark:focus:ring-black dark:focus:border-black">
                            <option value="" selected disabled>Select Option</option>
                            <option value="Mr.">Mr. </option>
                            <option value="Mrs.">Mrs. </option>
                            <option value="Ms.">Ms. </option>
                        </select>
                    </div>
                    <div class="mt-4 mb-4">
                        <label for="first_name" class="block text-gray-700 text-sm font-bold mb-2">First
                            Name :</label>
                        <input type="text"
                            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="first_name" placeholder="Enter First Name" wire:model="first_name">
                        @error('first_name')
                            <span class="text-red-500">{{ $message }}</span>
                        @enderror
                    </div>
                    <div class="mt-4 mb-4">
                        <label for="last_name" class="block text-gray-700 text-sm font-bold mb-2">Last
                            Name :</label>
                        <input type="text"
                            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="last_name" placeholder="Enter Last Name" wire:model="last_name">
                        @error('last_name')
                            <span class="text-red-500">{{ $message }}</span>
                        @enderror
                    </div>
                    <div class="mb-4">
                        <label for="title" class="block text-gray-700 text-sm font-bold mb-2">Title :</label>
                        <input type="text"
                            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="title" placeholder="Enter Title" wire:model="title">
                        @error('title')
                            <span class="text-red-500">{{ $message }}</span>
                        @enderror
                    </div>
                    <div class="mb-4">
                        <label for="phone_number" class="block text-gray-700 text-sm font-bold mb-2">Phone Number
                            :</label>
                        <input type="tel"
                            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="phone_number" placeholder="Enter Phone Number" wire:model="phone_number">
                        @error('phone_number')
                            <span class="text-red-500">{{ $message }}</span>
                        @enderror
                    </div>
                    <div class="mb-4">
                        <label for="email" class="block text-gray-700 text-sm font-bold mb-2">Email
                            :</label>
                        <input type="text"
                            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="email" placeholder="Enter Email" wire:model="email">
                        @error('email')
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
                <a href="/formInputNote">
                    <span class="mt-3 flex w-full rounded-md shadow-sm sm:mt-0 sm:w-auto">

                        <button type="button"
                            class="inline-flex justify-center w-full rounded-md border border-gray-300 px-4 py-2 bg-white text-base leading-6 font-medium text-gray-700 shadow-sm hover:text-gray-500 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue transition ease-in-out duration-150 sm:text-sm sm:leading-5">
                            Back
                        </button>
                    </span>
                </a>
        </form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/intl-tel-input@18.2.1/build/js/intlTelInput.min.js"></script>
<script>
    const input = document.querySelector("#phone_number");
    window.intlTelInput(input, {
      utilsScript: "https://cdn.jsdelivr.net/npm/intl-tel-input@18.2.1/build/js/utils.js",
    });
</script>
@push('scripts')
<script>
    $(document).ready(function() {
        $('.select2').select2();
    });
</script>
@endpush