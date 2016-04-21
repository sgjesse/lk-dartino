# Dartino embedding in LK

Simple embedding of the Dartino VM in LK.

To build the project in debug mode:
```
make -C disco-dartino stm32f746g-disco-dartino -j8
```
And to build the project in release mode:
```
DEBUG= make -C disco-dartino stm32f746g-disco-dartino -j8
```

Assuming OpenOCD is installed in `$OPENOCDHOME` this can now be flashed to
a _STM32F746G Discovery_ board using the following command:

```
$OPENOCDHOME/bin/openocd                                                                       \
    -f interface/stlink-v2-1.cfg                                                               \
    -f board/stm32f7discovery.cfg                                                              \
    --search $OPENOCDHOME/share/openocd/scripts                                                \
    -c "init"                                                                                  \
    -c "reset halt"                                                                            \
    -c "flash write_image erase disco-dartino/build-stm32f746g-disco-dartino/lk.bin 0x8000000" \
    -c "reset run"                                                                             \
    -c "shutdown"
```

The project was created by pulling in the Dartink SDK and LK projects as Git
submodules:

```
git submodule add git@github.com:littlekernel/lk.git
git submodule add  git@github.com:dartino/sdk.git dartino-sdk
```
