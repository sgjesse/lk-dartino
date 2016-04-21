# copy this and makefile to your external root directory and customize
# according to how you want to use a split repository

LOCAL_DIR=disco-dartino

# the top level directory that all paths are relative to
LKMAKEROOT := ..

# paths relative to LKMAKEROOT where additional modules should be searched
LKINC := $(LOCAL_DIR)

# the path relative to LKMAKEROOT where the main lk repository lives
LKROOT := lk

# set the directory relative to LKMAKEROOT where output will go
BUILDROOT ?= $(LOCAL_DIR)

# set the default project if no args are passed
DEFAULT_PROJECT ?= testproject

#TOOLCHAIN_PREFIX := <relative path to toolchain>
