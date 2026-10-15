# Guide to set up softlink between the pywal.toml and the cache file, so that the theme gets updated when pywal is run.

1. Create a softlink between the pywal.toml and the cache file. This can be done using the following command in the terminal:

    ```bash
    ln -s ~/.cache/wal/colors.json ~/.local/share/vicinae/themes/pywal.toml
    ```

> [!NOTE]
> Remember to update vicinae using `vicinae theme set matugen` to apply the theme.
