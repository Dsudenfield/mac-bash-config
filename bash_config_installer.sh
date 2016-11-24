cp .bash_profile ~/.bash_profile
cp .bash_aliases ~/bash_aliases
if [ ! -f .git/hooks/pre-push ]; then
    cp pre-push .git/hooks
    chmod 755 .git/hooks/pre-push
fi
source ~/.bash_profile
