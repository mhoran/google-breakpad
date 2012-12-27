INCLUDEPATH += ../../..

OBJECTIVE_SOURCES += dump_syms_tool.mm \
  ../../../common/mac/dump_syms.mm

SOURCES += ../../../common/module.cc \
  ../../../common/dwarf/dwarf2diehandler.cc \
  ../../../common/dwarf/bytereader.cc \
  ../../../common/stabs_to_module.cc \
  ../../../common/dwarf_cu_to_module.cc \
  ../../../common/dwarf_cfi_to_module.cc \
  ../../../common/dwarf_line_to_module.cc \
  ../../../common/language.cc \
  ../../../common/md5.cc \
  ../../../common/mac/macho_reader.cc \
  ../../../common/mac/file_id.cc \
  ../../../common/mac/macho_id.cc \
  ../../../common/mac/macho_utilities.cc \
  ../../../common/mac/macho_walker.cc \
  ../../../common/dwarf/dwarf2reader.cc \
  ../../../common/mac/arch_utilities.cc \
  ../../../common/stabs_reader.cc

TARGET = dump_syms
CONFIG -= app_bundle
DEFINES += HAVE_MACH_O_NLIST_H
LIBS += -framework Foundation
