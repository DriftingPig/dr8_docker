/*
 * This file is autogenerated by autogen.pl. Do not edit this file by hand.
 */
#ifndef OPAL_FRAMEWORKS_H
#define OPAL_FRAMEWORKS_H

#include <opal/mca/base/mca_base_framework.h>

extern mca_base_framework_t opal_backtrace_base_framework;
extern mca_base_framework_t opal_compress_base_framework;
extern mca_base_framework_t opal_crs_base_framework;
extern mca_base_framework_t opal_db_base_framework;
extern mca_base_framework_t opal_dl_base_framework;
extern mca_base_framework_t opal_event_base_framework;
extern mca_base_framework_t opal_hwloc_base_framework;
extern mca_base_framework_t opal_if_base_framework;
extern mca_base_framework_t opal_installdirs_base_framework;
extern mca_base_framework_t opal_memchecker_base_framework;
extern mca_base_framework_t opal_memcpy_base_framework;
extern mca_base_framework_t opal_memory_base_framework;
extern mca_base_framework_t opal_pstat_base_framework;
extern mca_base_framework_t opal_sec_base_framework;
extern mca_base_framework_t opal_shmem_base_framework;
extern mca_base_framework_t opal_timer_base_framework;

static mca_base_framework_t *opal_frameworks[] = {
    &opal_backtrace_base_framework,
    &opal_compress_base_framework,
    &opal_crs_base_framework,
    &opal_db_base_framework,
    &opal_dl_base_framework,
    &opal_event_base_framework,
    &opal_hwloc_base_framework,
    &opal_if_base_framework,
    &opal_installdirs_base_framework,
    &opal_memchecker_base_framework,
    &opal_memcpy_base_framework,
    &opal_memory_base_framework,
    &opal_pstat_base_framework,
    &opal_sec_base_framework,
    &opal_shmem_base_framework,
    &opal_timer_base_framework,
    NULL
};

#endif /* OPAL_FRAMEWORKS_H */

