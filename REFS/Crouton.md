

# Cheatsheet

- Put Chrombook into recovery mode: `esc + refresh + power`
- Enter dev mode: `ctrl + D`
- [Download crouton](https://goo.gl/fd3zc)
- Launch crosh: `crtl + alt + T`
- Enter shell: `shell`
- View possible targets: `sh ~/Downloads/crouton -t help`
- Launch chroot with name and chosen target: `sudo sh ~/Downloads/crouton -n my_chroot_name -t xfce,xiwi,cli-extra`
    - The `sh` command creates a new shell
    - View current targets: `sudo edit-chroot -l my_chroot_name`
    - Add a target to existing chroot: `sudo sh ~/Downloads/crouton -u -n my_chroot_name -t core`  
        - I installed extension, core, cli-extra, xfce
- Target-specific start commands:
    - Command line: `sudo enter-chroot -n my_chroot_name`
    - XFCE window: `sudo enter-chroot -n my_chroot_name startxfce4`
        - Toggle between Chrome OS and chroot: `crtl + alt + shift + forward/back`
        - Open in browser with [Crouton extension](https://chrome.google.com/webstore/detail/crouton-integration/gcpneefbbnfalgjniomfjknbcgkbijom): xiwi or extension targets must be installed
- Delete the chroot: `sudo delete-chroot my_chroot_name`


# Sources

- [GitHub repo for crouton](https://github.com/dnschneid/crouton)
- [Author's cheatsheet](https://github.com/dnschneid/crouton/wiki/Crouton-Command-Cheat-Sheet)
- From HowToGeek:
  - [How to install](http://www.howtogeek.com/162120/how-to-install-ubuntu-linux-on-your-chromebook-with-crouton/)
  - [How to run in browser](http://www.howtogeek.com/208368/how-to-run-a-full-linux-desktop-in-a-browser-tab-on-your-chromebook/)
  - [How to manage](http://www.howtogeek.com/210047/how-to-manage-the-crouton-linux-system-on-your-chromebook/)
