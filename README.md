# Backspace Beeps

A hyper-niche config addition to add beeps when hitting backspace in the `fish` shell within KDE's `konsole` whilst using the **Starship.rs** prompt.

- Open konsole
  - Settings > Edit Current Profile... > Terminal Bell Mode
  - Choose "System Notifications"
  - Apply
- Open System Settings
  - Notifications > Application-specific Settings > Configure
  - Select "Konsole"
  - Click "Bell in Focused Session"
  - Check "Play a Sound"
  - Click folder icon immediately right
  - Choose a sound file of choice
    I recommend `file:///usr/share/sounds/ocean/stereo/bell-window-system.oga`
  - Apply
- Open konsole
  - `$EDITOR ~/.config/fish/config.fish`
  - Append this repo's `config.fish`
  - Save and reopen konsole

Konsole should now beep when you press backspace on an empty prompt line!
