![gentoo](https://gentoo.org/assets/img/badges/gentoo-badge2.png "gentoo")

# about

rescoo is a gentoo-based linux-distro that aims to be a rescue image.
it's designed to be a single initram that boots via ipxe.

# howto

## boot via ipxe

upload a ssh authorized_keys file and your ipxe config to any public webspace.

    #!ipxe
    dhcp
    set authkey-url http://example.org/ssh/authorized_keys
    set base-url http://fnordpipe.he-hosting.de/rescoo/releases/amd64/autobuilds/latest/hardened
    kernel ${base-url}/vmlinuz authkey=${authkey-url}
    initrd ${base-url}/rootfs.cpio.gz
    boot

# build from source

## setup the toolchain

    $ git clone https://github.com/fnordpipe/rescoo.git
    $ bash ./env.sh <container>

## update the toolchain

    $ bash ./env.sh <container>

## run the build

    $ lxc-attach -n <container> -- /bin/su -l
    $ ebake -aveq rescue-image
    $ bake

The rootfs is located at `/var/lib/rescoo/rootfs`
and the images are located at `/var/lib/rescoo/deploy`

# documentation

* [gentoo devmanual](https://devmanual.gentoo.org)
  * [ebuild writing](https://devmanual.gentoo.org/ebuild-writing/index.html)
  * [variables](https://devmanual.gentoo.org/ebuild-writing/variables/index.html)
  * [install functions](https://devmanual.gentoo.org/function-reference/install-functions/index.html)
* `man 5 ebuild`
* `man portage`
