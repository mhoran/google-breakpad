TEMPLATE = app
TARGET = dump_syms
DEFINES += HAVE_A_OUT_H

INCLUDEPATH += ../../..
SOURCES += ../../../common/dwarf_cfi_to_module.cc \
  ../../../common/dwarf_cu_to_module.cc \
  ../../../common/dwarf_line_to_module.cc \
  ../../../common/language.cc \
  ../../../common/module.cc \
  ../../../common/stabs_reader.cc \
  ../../../common/stabs_to_module.cc \
  ../../../common/dwarf/bytereader.cc \
  ../../../common/dwarf/dwarf2diehandler.cc \
  ../../../common/dwarf/dwarf2reader.cc \
  ../../../common/linux/dump_symbols.cc \
  ../../../common/linux/elf_symbols_to_module.cc \
  ../../../common/linux/elfutils.cc \
  ../../../common/linux/file_id.cc \
  ../../../common/linux/linux_libc_support.cc \
  ../../../common/linux/memory_mapped_file.cc \
  ../../../common/linux/safe_readlink.cc \
  dump_syms.cc

