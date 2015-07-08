
INSTALL = /usr/bin/install

SHARED_LIB_OPT := -dynamiclib -Wl,-undefined,dynamic_lookup

# options for partial linking (trailing space is required)
LD_PARTIAL = -r
LD_FILELIST = -filelist 

TRICK_LIB_DIR  := ${TRICK_HOME}/lib
RPATH = -Wl,-rpath,${TRICK_LIB_DIR}
TRICK_LDFLAGS +=
LD_WHOLE_ARCHIVE := -Wl,-all_load
LD_NO_WHOLE_ARCHIVE :=
ifeq ($(MAKELEVEL),0)
TRICK_EXEC_LINK_LIBS += -lm -ldl -lz
endif
