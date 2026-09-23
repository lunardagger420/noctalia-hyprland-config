if status is-interactive
    # Commands to run in interactive sessions can go here
    fastfetch
    set -g fish_greeting


    function fish_prompt
        set_color cyan
        echo (prompt_pwd)

        set_color normal
        echo "> "
    end
end
