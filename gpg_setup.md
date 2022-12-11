2022-12-12 00:55:31

# commands related to setting up gpg keys and adding them to sign commits and tags

gpg --list-keys

gpg --full-generate-key

gpg --list-secret-keys --keyid-format=long

git config --global user.signingkey 8CA453F35058F61B

[ -f ~/.bashrc ] && echo 'export GPG_TTY=$(tty)' >> ~/.bashrc

git commit -S -m "signed commit"

vi ~/.gitconfig 

git log --show-signature

gpg --export --armour naverdocker@gmail.com | clip.exe
