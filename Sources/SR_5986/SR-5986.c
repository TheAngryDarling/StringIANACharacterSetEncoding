// https://bugs.swift.org/browse/SR-5986
// Temporary workaround

#include "SR-5986.h"

#if !(defined(__APPLE__) && defined(__MACH__))
void * objc_retainAutoreleasedReturnValue(void *object) {
    if (object) { swift_retain(object); }
    return object;
}
#endif
