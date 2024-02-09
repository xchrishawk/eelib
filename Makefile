#
# Makefile
# Chris Vig (chris@invictus.so)
#

# -- VARIABLES --

# Project info
PROJECT_NAME			:= eelib
PROJECT_VERSION			:= 0.1.0
PROJECT_DIR			:= .
PROJECT_KEY			:= $(PROJECT_NAME)-$(PROJECT_VERSION)

# Input
INPUT_DIR			:= $(PROJECT_DIR)/$(PROJECT_NAME)
INPUT_FILES			:= COPYING					\
				   DESCRIPTION
INPUT_PATHS			:= $(addprefix $(INPUT_DIR)/,$(INPUT_FILES))

# Output
OUTPUT_DIR			:= $(PROJECT_DIR)
TAR_OUTPUT_PATH			:= $(OUTPUT_DIR)/$(PROJECT_KEY).tar
GZ_OUTPUT_PATH			:= $(OUTPUT_DIR)/$(PROJECT_KEY).tar.gz
OUTPUT_PATHS			:= $(TAR_OUTPUT_PATH) $(GZ_OUTPUT_PATH)

# Toolchain
TAR				:= tar
TARFLAGS			:= -cf
GZIP				:= gzip
GZIPFLAGS			:= -f -k
OCTAVE				:= octave

# -- RULES --

.PHONY: all clean rebuild install uninstall

all: $(OUTPUT_PATHS)

clean:
	$(RM) $(OUTPUT_PATHS)

rebuild: clean all

install: $(GZ_OUTPUT_PATH)
	$(OCTAVE) --eval "pkg install $(GZ_OUTPUT_PATH)"

uninstall:
	$(OCTAVE) --eval "pkg uninstall $(PROJECT_NAME)"

$(GZ_OUTPUT_PATH): $(TAR_OUTPUT_PATH)
	$(GZIP) $(GZIPFLAGS) $<

$(TAR_OUTPUT_PATH): $(INPUT_PATHS)
	$(TAR) $(TARFLAGS) $@ $(INPUT_DIR)
