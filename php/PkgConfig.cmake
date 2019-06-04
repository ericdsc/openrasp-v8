cmake_minimum_required(VERSION 3.0.0)
set(PREFIX ${CMAKE_CURRENT_LIST_DIR})
list(JOIN INCLUDE_DIRECTORIES " -I" CFLAGS)
set(CFLAGS "-I${CFLAGS}")
list(JOIN LINK_LIBRARIES " " LDFLAGS)
set(LDFLAGS "${TARGET_FILE} ${LDFLAGS}")
configure_file(${PREFIX}/openrasp-v8.pc.in ${PREFIX}/openrasp-v8.pc)