#! /bin/bash
wget -O /openttd.tar.xz https://cdn.openttd.org/openttd-releases/13.1/openttd-13.1-linux-generic-amd64.tar.xz
wget -O /opengfx.zip https://cdn.openttd.org/opengfx-releases/7.1/opengfx-7.1-all.zip
tar xf /openttd.tar.xz
unzip /opengfx.zip
tar xf /opengfx-7.1.tar

ottd_bin=$(find "$(cd openttd-*; pwd)" -name openttd)
ottd_root=$(dirname $ottd_bin)

ln -s $ottd_root /openttd

mv /opengfx-7.1/* /$ottd_root/baseset/

rm -rf /openttd.tar.xz /opengfx-7.1.tar /opengfx.zip /opengfx-7.1
