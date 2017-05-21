#!/usr/bin/env bash

dnf install nano git -y

declare CWD=$(pwd)
declare TEMPDIRECTORY=$(mktemp --directory)

# postgres
cd "$TEMPDIRECTORY"
git clone https://github.com/rudolfb/fedora-postgres-install.git
cd fedora-postgres-install
chmod +x postgres.sh
./postgres.sh

elixir, erlang, elm
cd "$TEMPDIRECTORY"
git clone https://github.com/rudolfb/fedora-elixir-erlang-install.git
cd fedora-elixir-erlang-install
chmod +x elixir-erlang.sh
./elixir-erlang.sh

sublime text 3 dev
cd "$TEMPDIRECTORY"
git clone https://github.com/rudolfb/sublime-text-3-install.git
cd sublime-text-3-install
chmod +x sublime-text-3.sh
./sublime-text-3.sh -d

cd "$CWD"

# Clean up the dynamically created temp directory.
# if [ -d "$TEMPDIRECTORY" ]; then
    sudo rm -r "$TEMPDIRECTORY"
# fi
