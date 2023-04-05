<div class="py-1">
    <div class="mx-auto sm:px-6 lg:px-8">
        <x-slot name="header">
            <h1 class="font-semibold text-xl text-gray-800 leading-tight">
                {{ __('Form Add Company') }}
            </h1>
        </x-slot>
        <form>
            <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                <div class="">
                    <div class="mb-4">
                        <label for="company_name" class="block text-gray-700 text-sm font-bold mb-2">Company
                            Name :</label>
                        <input type="text"
                            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="company_name" placeholder="Enter Company Name" wire:model="company_name">
                        @error('name')
                            <span class="text-red-500">{{ $message }}</span>
                        @enderror
                    </div>
                    <div class="mb-4">
                        <label for="company_country" class="block text-gray-700 text-sm font-bold mb-2">Company
                            Country :</label>
                        <input type="text"
                            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="company_country" placeholder="Enter Name" wire:model="company_country">
                        @error('company_country')
                            <span class="text-red-500">{{ $message }}</span>
                        @enderror
                    </div>
                    <label for="agent_type"
                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-700">Agent Type</label>
                    <select wire:model="agent_type" placeholder="Choose Agent Type"
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-black focus:border-black block w-full p-2.5 dark:text-black dark:focus:ring-black dark:focus:border-black">
                        <option value="" selected disabled>Select Option</option>
                        <option value="Travel Agent">Travel Agent</option>
                        <option value="Tour Operator">Tour Operator</option>
                    </select>

                </div>
            </div>

            <div class="bg-gray-50 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                <span class="flex w-full rounded-md shadow-sm sm:ml-3 sm:w-auto">
                    <button wire:click.prevent="store()" type="button"
                        class="inline-flex justify-center w-full rounded-md border border-transparent px-4 py-2 bg-green-600 text-base leading-6 font-medium text-white shadow-sm hover:bg-green-500 focus:outline-none focus:border-green-700 focus:shadow-outline-green transition ease-in-out duration-150 sm:text-sm sm:leading-5">
                        Save
                    </button>
                </span>
                <a href="/formInputContactNote">
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