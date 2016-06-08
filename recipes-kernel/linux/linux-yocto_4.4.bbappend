FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

COMPATIBLE_MACHINE_octeon = "octeon"
KERNEL_FEATURES_append_octeon += " cfg/smp.scc"

SRC_URI += "\
    file://octeon-standard.scc \
    file://octeon-user-config.cfg \
    file://octeon-user-features.scc \
    "

SRCREV_machine_octeon ?= "${AUTOREV}"
SRCREV_meta_octeon ?= "${AUTOREV}"
LINUX_VERSION = "4.4.12"
