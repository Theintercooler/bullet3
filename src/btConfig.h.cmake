#ifndef BT_CONFIG_H
#define BT_CONFIG_H

#define BT_USE_MEMCPY @USE_MEMCPY@
#define BT_USE_PLACEMENT_NEW @USE_PLACEMENT_NEW@

#if defined(BT_USE_MEMCPY) && BT_USE_MEMCPY
# include <memory.h>
# include <string.h>
#elif defined(BT_USE_MEMCPY)
# undef BT_USE_MEMCPY
#endif //BT_USE_MEMCPY

#if defined(BT_USE_PLACEMENT_NEW) && BT_USE_PLACEMENT_NEW
# include <new> //for placement new
#elif defined(BT_USE_PLACEMENT_NEW)
# undef BT_USE_PLACEMENT_NEW
#include "@USE_CUSTOM_NEW@"
#endif //BT_USE_PLACEMENT_NEW

#endif //BT_CONFIG_H
