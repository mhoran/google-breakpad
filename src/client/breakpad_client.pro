TEMPLATE = lib
CONFIG += static create_prl

linux*|mac {
    INCLUDEPATH += ..

    SOURCES += minidump_file_writer.cc \
      ../common/convert_UTF.c \
      ../common/md5.cc \
      ../common/string_conversion.cc
}

linux* {
  SOURCES += linux/crash_generation/crash_generation_client.cc \
    linux/crash_generation/crash_generation_server.cc \
    linux/handler/exception_handler.cc \
    linux/handler/minidump_descriptor.cc \
    linux/log/log.cc \
    linux/minidump_writer/linux_dumper.cc \
    linux/minidump_writer/linux_ptrace_dumper.cc \
    linux/minidump_writer/minidump_writer.cc \
    ../common/linux/elfutils.cc \
    ../common/linux/file_id.cc \
    ../common/linux/guid_creator.cc \
    ../common/linux/linux_libc_support.cc \
    ../common/linux/memory_mapped_file.cc \
    ../common/linux/safe_readlink.cc
}

mac {
    SOURCES += mac/crash_generation/crash_generation_client.cc \
      mac/handler/exception_handler.cc \
      mac/handler/minidump_generator.cc \
      mac/handler/dynamic_images.cc \
      mac/handler/breakpad_nlist_64.cc \
      ../common/mac/bootstrap_compat.cc \
      ../common/mac/file_id.cc \
      ../common/mac/macho_id.cc \
      ../common/mac/macho_utilities.cc \
      ../common/mac/macho_walker.cc \
      ../common/mac/string_utilities.cc

    OBJECTIVE_SOURCES += ../common/mac/MachIPC.mm

    LIBS += -framework CoreFoundation -framework CoreServices
}

