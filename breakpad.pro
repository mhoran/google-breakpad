TEMPLATE = subdirs
CONFIG += ordered
SUBDIRS += src/client/breakpad_client.pro

linux* {
  SUBDIRS += src/tools/linux/dump_syms/dump_syms.pro
}

mac {
  SUBDIRS += src/tools/mac/dump_syms/dump_syms.pro
}
