# Find Valgrind.
#
# This module defines:
#  VALGRIND_INCLUDE_DIR, where to find valgrind/memcheck.h, etc.
#  VALGRIND_PROGRAM, the valgrind executable.
#  VALGRIND_FOUND, If false, do not try to use valgrind.
#
# If you have valgrind installed in a non-standard place, you can define
# VALGRIND_PREFIX to tell cmake where it is.

find_path(VALGRIND_INCLUDE_DIR include/valgrind/memcheck.h ${VALGRIND_PREFIX} /usr/local /usr)
find_program(VALGRIND_PROGRAM NAMES valgrind PATH ${VALGRIND_PREFIX}/bin /usr/local/bin /usr/bin)

find_package_handle_standard_args(VALGRIND DEFAULT_MSG
    VALGRIND_INCLUDE_DIR
    VALGRIND_PROGRAM)

mark_as_advanced(VALGRIND_INCLUDE_DIR VALGRIND_PROGRAM)