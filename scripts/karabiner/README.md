### `hjkl_remap.json`
Remaps the hjkl equivalent on Colemak to arrow keys when not in kitty, otherwise leaves them as is

### `Alt+W,B -> Word Forward,Backward (Shift to select).json`
Technically replicates the function of the `e` key in neovim (for both forwards and backwards)

### `Alt+D,W -> Delete word forward.json`
Requires `Alt+D -> Pending delete operator (500ms timeout).json`. Adds the `dw` (`de` but that's pedantic) functionality from neovim.

### `Alt+D,B -> Delete word backward.json`
Requires `Alt+D -> Pending delete operator (500ms timeout).json`. Adds the `db` (again not exactly) functionality from neovim.

### `Alt+D -> Pending delete operator (500ms timeout).json`
Adds a pending operator mode to allow chaining of actions
