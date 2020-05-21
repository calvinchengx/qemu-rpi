# Run RPi on Qemu on macOS

```bash
brew install qemu

# download debian jessie linux kernel for qemu
# download raspbian image
./download.sh

# convert kernel raw to qcow2 format
./convert.sh

# run RPi on Qemu
./run.sh

# enable ssh inside the Qemu RPi guest vm first
systemctl enable ssh
systemctl start ssh

# in host machine, we can now ssh into our Qemu RPi guest
ssh -vvv -p 5022 pi@localhost
```
