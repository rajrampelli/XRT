include $(RDI_MAKEROOT)/top.mk
include $(RDI_MAKEROOT)/subdir.mk

ifdef ENABLE_PMD
 MYINCLUDES := \
  $(RDI_SRCROOT)/products/sdx/ocl/src/include/1_2 \
  $(RDI_SRCROOT)/products/sdx/ocl/src/runtime_src \
  $(RDI_SRCROOT)/products/sdx/ocl/src/runtime_src/driver/include \
  $(RDI_SRCROOT)/products/sdx/ocl/src/runtime_src/driver/user \

 CPP_SUFFIX := .cpp
 MYDEFINES := -DPMD_OCL
 include $(RDI_MAKEROOT)/objs.mk
endif

include $(RDI_MAKEROOT)/bottom.mk