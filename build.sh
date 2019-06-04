#!/bin/sh

git clone https://github.com/Godin/jdk.git
pushd jdk

#curl https://builds.shipilev.net/source-snapshots/shenandoah-jdk11.tar.xz | tar xJf -
#pushd shenandoah-jdk11

bash ./configure
LOG=cmdlines make hotspot
make
make images

popd
#tar -czf jdk13-macosx.tar.gz jdk/build/macosx-x86_64-normal-server-release/images/jdk/
tar -czf jdk13-macosx.tar.gz jdk/build/macosx-x86_64-server-release/images/jdk/
