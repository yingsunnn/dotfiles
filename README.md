# [SketchyBar](https://github.com/FelixKratz/SketchyBar)

## Installation
- [Brew Install](https://felixkratz.github.io/SketchyBar/setup)
- Update `.config/yabai/yabairc`
  ```
  yabai -m config external_bar all:0:22
  ```

## Configuration
### Network plugin
- Install ifstat
  ```shell
  brew install ifstat
  ```
- Find the correct network card (command: ifstat) and update plugins `network_down.sh` and `network_up.sh` 