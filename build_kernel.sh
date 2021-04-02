source ./osbook/devenv/buildenv.sh
cd ./kernel/
clang++ $CPPFLAGS -O2 --target=x86_64-elf -ffreestanding -fno-exceptions -c main.cpp
ld.lld $LDFLAGS --entry KernelMain -z norelro --image-base 0x100000 --static -o kernel.elf main.o
cd ../
