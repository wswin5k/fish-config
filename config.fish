if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_prompt_pwd_dir_length 0

function fish_title
    set -q argv[1]; or set argv fish
    # Looks like ~/docs/fish: git log
    # or /etc/apt: fish
    echo (fish_prompt_pwd_dir_length=0 prompt_pwd): $argv;
end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/fed/.ghcup/bin # ghcup-env
