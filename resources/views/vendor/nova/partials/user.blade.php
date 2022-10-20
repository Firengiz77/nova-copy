<dropdown-trigger class="h-9 flex items-center">
    @isset($user->email)
        <img
            src="https://secure.gravatar.com/avatar/{{ md5(\Illuminate\Support\Str::lower($user->email)) }}?size=512"
            class="rounded-full w-8 h-8 mr-3"
        />
    @endisset

    <span class="text-90">
        {{ $user->name ?? $user->email ?? __('Nova User') }}
    </span>
</dropdown-trigger>

<dropdown-menu slot="menu" width="200" direction="rtl">
    <ul class="list-reset">
        <li>
            <a href="{{ route('nova.logout') }}" class="block no-underline text-90 hover:bg-30 p-3">
                {{ __('Logout') }}
            </a>
        </li>
{{--        <li>--}}
{{--            <select style="--}}
{{--    width: 100%;--}}
{{--    height: 60px;--}}
{{--    border: 1px solid;--}}
{{--    border-radius: 10%;" name="domain" id="domain_list" onchange="saveOnChange()">--}}
{{--                @foreach($frd['menu'] as $d)--}}
{{--                    <option--}}
{{--                        value="{{$d->id}}" {{session()->get('domain')['id'] == $d->id ? "selected" :""}}>{{$d->name}}</option>--}}
{{--                @endforeach--}}
{{--            </select>--}}
{{--        </li>--}}
    </ul>
</dropdown-menu>
