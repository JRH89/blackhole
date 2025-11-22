# Blackhole Theme Pack

Blackhole is a cohesive UI theme built around deep charcoal backgrounds and muted pastel highlights. The repository bundles ready-to-use configuration snippets for Wayland components, terminals, editors, and companion utilities so you can give your entire desktop a consistent look in minutes.

## Installation

```bash
omarchy-theme-install https://github.com/JRH89/blackhole
```

## Screenshots

![Blackhole desktop overview](https://firebasestorage.googleapis.com/v0/b/hookerhillstu.appspot.com/o/blackhole%2Fscreenshot-2025-11-21_16-51-06.png?alt=media&token=8b6d4ec0-df55-49cc-9e47-35d090675f48)

![Terminal and widgets](https://firebasestorage.googleapis.com/v0/b/hookerhillstu.appspot.com/o/blackhole%2Fscreenshot-2025-11-21_17-06-30.png?alt=media&token=3f71efc4-9702-45e7-ae17-791ba40e4fd9)

![Launcher and panels](https://firebasestorage.googleapis.com/v0/b/hookerhillstu.appspot.com/o/blackhole%2Fscreenshot-2025-11-21_17-07-09.png?alt=media&token=254ebc74-a05d-49d0-a397-ecc4be95045c)

## Color Palette

| Token | Hex | Usage |
| --- | --- | --- |
| Base Background | `#070912` | Primary background across all apps |
| Accent Border | `#32374d` | Window borders, separators |
| Primary Foreground | `#ffffff` | Text and icons |
| Warm Accent | `#cd9a79` | Highlights, progress bars |
| Cool Accent | `#8c80d5` | Selection, focus states |
| Soft Neutral | `#D3C7B7` | Secondary text / graphs |

Refer to individual configs for the full 16-color terminal palette.

## Repository Contents

| File / Folder | Description |
| --- | --- |
| `backgrounds/processed-wallpaper-1763772248533.jpg` | Default wallpaper image to match the palette |
| `aether.override.css` | Overrides for the `aether` GTK theme |
| `alacritty.toml`, `kitty.conf`, `ghostty.conf`, `warp.yaml` | Terminal color schemes |
| `btop.theme` | Theme file for the `btop` system monitor |
| `chromium.theme` | JSON color overrides for Chromium-based browsers |
| `hyprland.conf`, `hyprlock.conf` | Snippets for Hyprland window borders and Hyprlock colors |
| `icons.theme` | GTK icon theme definition |
| `mako.ini`, `swayosd.css`, `walker.css`, `waybar.css`, `wofi.css` | Styling for Wayland status/launcher utilities |
| `neovim.lua` | LazyVim plugin spec that injects the `aether.nvim` palette |
| `vscode.json` | VS Code workbench color customizations |

## Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/<your-account>/blackhole ~/.local/share/blackhole-theme
   cd ~/.local/share/blackhole-theme
   ```
2. **Back up existing configs** before overwriting: `cp ~/.config/alacritty/alacritty.toml{,.bak}`
3. **Copy or symlink** the files you need into their respective config directories. Examples:

### Hyprland & Hyprlock

1. Include the snippet inside your main Hyprland config:
   ```ini
   source = ~/.local/share/blackhole-theme/hyprland.conf
   ```
2. Point Hyprlock to the themed colors:
   ```ini
   source = ~/.local/share/blackhole-theme/hyprlock.conf
   ```

### Terminals

| App | Action |
| --- | --- |
| Alacritty | Copy `alacritty.toml` to `~/.config/alacritty/colors.toml` and import from your main config. |
| Kitty | Place `kitty.conf` in `~/.config/kitty/themes/blackhole.conf` and `include` it. |
| Ghostty | Copy to `~/Library/Application Support/com.mitchellh.ghostty/config` (macOS) or `~/.config/ghostty/`. |
| Warp | Import the `warp.yaml` color preset via Warp Settings → Themes → Import. |

### Wayland Utilities

| Component | File | Destination |
| --- | --- | --- |
| Waybar | `waybar.css` | `~/.config/waybar/style.css` |
| Wofi | `wofi.css` | `~/.config/wofi/style.css` |
| Walker | `walker.css` | `~/.config/walker/style.css` |
| Mako | `mako.ini` | `~/.config/mako/config` |
| swayOSD | `swayosd.css` | `~/.config/swayosd/style.css` |

### Editors & IDEs

| Editor | Steps |
| --- | --- |
| Neovim (LazyVim) | Drop `neovim.lua` into `~/.config/nvim/lua/plugins/blackhole.lua` (or merge with an existing plugin file). Requires `bjarneo/aether.nvim`. |
| VS Code | Open Command Palette → “Preferences: Open Settings (JSON)” and merge the contents of `vscode.json`. |

### Background

Set the bundled wallpaper through your compositor or display manager. With Hyprland/Wpaperd:
```ini
wallpaper = ,~/.local/share/blackhole-theme/backgrounds/processed-wallpaper-1763772248533.jpg
```

## Customization Tips

1. **Adjust opacity** by editing alpha channels (e.g., `rgba(7, 9, 18, 0.8)` in Hyprlock or CSS files).
2. **Tweak accents**: most configs expose highlight colors near the top, so swapping between warm (`#cd9a79`) and cool (`#8c80d5`) accents is straightforward.
3. **Keep configs modular** by `include`/`source`-ing these files instead of copying, letting you pull updates with `git pull`.

## Contributing

Feel free to extend the pack for additional apps. Please keep new assets aligned with the palette and document required dependencies in this README.
