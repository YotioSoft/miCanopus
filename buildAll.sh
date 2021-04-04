source ./osbook/devenv/buildenv.sh
cd ./kernel/
make
cd ~/edk2
source edksetup.sh
build
cd ~/git/miCanopus/
~/git/miCanopus/osbook/devenv/run_qemu.sh ~/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi ~/git/miCanopus/kernel/kernel.elf

