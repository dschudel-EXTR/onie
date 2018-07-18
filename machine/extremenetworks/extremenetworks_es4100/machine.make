# Extreme Networks ES4100

ONIE_ARCH ?= x86_64
SWITCH_ASIC_VENDOR = bcm

VENDOR_REV ?= 0

# Translate hardware revision to ONIE hardware revision
ifeq ($(VENDOR_REV),0)
  MACHINE_REV = 0
else
  $(warning Unknown VENDOR_REV '$(VENDOR_REV)' for MACHINE '$(MACHINE)')
  $(error Unknown VENDOR_REV)
endif

# The VENDOR_VERSION string is appended to the overall ONIE version
# string.  HW vendors can use this to appended their own versioning
# information to the base ONIE version string.
VENDOR_VERSION = .0.1

# Vendor ID -- IANA Private Enterprise Number:
# http://www.iana.org/assignments/enterprise-numbers
# Extreme Networks Inc.
VENDOR_ID = 1916

# Enable the i2ctools and the onie-syseeprom command for this platform
I2CTOOLS_ENABLE = yes
I2CTOOLS_SYSEEPROM = yes

# Console parameters
CONSOLE_DEV = 0

# Enable UEFI support
UEFI_ENABLE = yes
#PXE_EFI64_ENABLE = yes
#SYSLINUX_DEFAULT_MODE ?= rescue

# Set Linux kernel version
LINUX_VERSION		= 4.9
LINUX_MINOR_VERSION	= 95

BTRFS_PROGS_ENABLE = no
EXTRA_CMDLINE_LINUX = verbose
# Older GCC required for older 3.14.27 kernel
#GCC_VERSION = 6.3.0

# Specify uClibc version
#UCLIBC_VERSION = 0.9.32.1

#-------------------------------------------------------------------------------
#
# Local Variables:
# mode: makefile-gmake
# End:

