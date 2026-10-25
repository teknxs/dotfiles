# dotfiles

My personal dotfiles.

## Information

Each top-level directory in this repository corresponds to each program. Their 
contents must be placed in the user's home directory. I recommend using GNU 
Stow as it utilizes symlinking and makes installation simpler.

For instance, if you wish to install `cwm` and `lemonbar` in your user's home 
directory, run the following command:

```sh
$ stow -t "$HOME"/ cwm lemonbar    # Without -t, installation occurs
                                   # inside the parent directory.
```

## License

All files included are licensed under the BSD Zero Clause License (0BSD). 
Read the `LICENSE` file in the project root for more information.
