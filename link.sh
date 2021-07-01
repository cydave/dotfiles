#!/bin/bash

for f in "$HOME/.dot/openbox/"*
do
    ln -s "$f" "$HOME/.config/openbox/"
done

ln -s "$HOME/.dot/zshrc" "$HOME/.zshrc"
