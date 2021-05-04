BASEDIR="$HOME/git/miCanopus/osbook/devenv/x86_64-elf"
export CPPFLAGS="-I$BASEDIR/include/c++/v1 -I$BASEDIR/include -I$BASEDIR/include/freetype2 -nostdlibinc -D__ELF__ -D_LDBL_EQ_DBL -D_GNU_SOURCE -D_POSIX_TIMERS"
export LDFLAGS="-L$BASEDIR/lib"

cd ~/git/miCanopus/kernel/
make
cd ~/edk2
source edksetup.sh
build
cd ~/git/miCanopus/
~/git/miCanopus/osbook/devenv/run_qemu.sh ~/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi ~/git/miCanopus/kernel/kernel.elf

