

- Use GParted to erase 8GB USB used for Kali install
- Wrote 64-bit Ubuntu ISO to USB with UNetbootin
- Access BIOS, F2 during boot; access boot options, F12 during boot
- Error, because UEFI boot manager dislikes UNetbootin:
    - Wipe USB with GParted
    - install usb-creator-common, usb-creator-kde via Synaptic
    - Verify download: ubuntu.com/download/how-to-verify (SHA256 sum)
        - Had to rename keys w/o spaces and call one at a time from keyserver
    - Wrote to USB with usb-creator (GUI)
- Success, but learn that I hate Ubuntu’s Unity desktop
