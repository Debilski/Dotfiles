set fish_function_path $fish_function_path /Data/Projects/powerline/powerline/bindings/fish/
powerline-setup

set -xg __fish_git_prompt_showdirtystate 1
set -xg __fish_git_prompt_showupstream auto

# Add GHC 7.8.2 to the PATH, via http://ghcformacosx.github.io/
set -x GHC_DOT_APP "/opt/homebrew-cask/Caskroom/ghc/7.8.3-r0/ghc-7.8.3.app"

if [ -d "$GHC_DOT_APP" ]
    set GHC_PATH "$GHC_DOT_APP/Contents/bin"
end

set PATH $HOME/bin $HOME/.cabal/bin $GHC_PATH (brew --prefix)/opt/ruby/bin /usr/local/sbin /usr/local/bin $PATH /usr/local/share/npm/bin

set -x SHELL (which fish)
set -x EDITOR (which vim)

. ~/perl5/perlbrew/etc/perlbrew.fish

. /usr/local/share/chruby/chruby.fish
. /usr/local/share/chruby/auto.fish

. /Data/Projects/z-fish/z.fish

bash_env /Users/rike/.nix-profile/etc/profile.d/nix.sh NIX_LINK NIX_PATH > /dev/null

set PATH $NIX_LINK/bin $NIX_LINK/sbin $PATH

