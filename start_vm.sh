qemu-system-x86_64 \
                -hda ~/goinfre/iot.qcow2 \
                -enable-kvm \
                -machine q35 \
                -cpu host \
                -m 12G \
                -smp $(nproc) \
                -net user,hostfwd=tcp::5000-:22,hostfwd=tcp::8080-:80 \
                -net nic \
                -cdrom ~/sgoinfre/debian-12.2.0-amd64-netinst.iso
