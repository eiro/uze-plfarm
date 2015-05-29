# PLFARM

helps you farming perl apps. please perldoc =uze/plfarm the reference
documentation.

## Install

the goal of this documentation is to set all the required variables and
functions up and running from `.zshenv`. so those are examples: pick one of
those or choose another one.

Actually, an optimistic installation script (assuming you have a dedicated
account using its home directory as working one) should be the one described in
[optimistic.install](optimistic.install). so for a quick install, just run

    curl -sL https://raw.githubusercontent.com/eiro/uze-plfarm/master/optimistic.install |
        sudo -iu rt sh

### fatpacked install 

see `fatpacking` section in the [uze documentation](https://github.com/eiro/uze/blob/master/uze).

    xargs -n1 curl -sL <<LIBS > ~/.plfarm.fatpacked.zsh
        https://raw.githubusercontent.com/eiro/uze/master/uze
        https://raw.githubusercontent.com/eiro/uze-plfarm/master/lib/uze/plfarm
    LIBS

then your `.zshenv`could be

    . ~/.plfarm.fatpacked.zsh

### be sure directories exists

    mkdir $RTFARM_DIST $RTFARM_SITE $RTFARM_NGINX

### install a first dist

    dist/install 4.2.10

### make your first site running

create a env file for the site (say `foo.txt`)

    # site config (see the plfarm POD for details)
    ST_NAME=foo.example.fr
    RT_VER=4.2.10
    site/set/defaults

build the site

    site/install foo.txt

finalize the site setup

    s=foo.example.fr
    site/go $s
    vim etc/RT_SiteConfig.pm
    site/fcgi $s

## Todo

* variable documentations in the POD
* translate perldoc from french to english
* LICENSE file
* remove references to RT in variable and function names
  (this should be reusable in other contexts)
