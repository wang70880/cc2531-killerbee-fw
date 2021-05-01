#!/bin/sh

make clean
make
cp ./cc2531-bumblebee.hex ../flash_cc2531/cc2531-bumblebee.hex
(cd ../flash_cc2531 && sudo ./cc_erase)
(cd ../flash_cc2531 && sudo ./cc_write ./cc2531-bumblebee.hex)
