// https://bugs.swift.org/browse/SR-5986
// Temporary workaround

#include "SR-5986.h"

void * objc_retainAutoreleasedReturnValue(void *object) {
    if (object) { swift_retain(object); }
    return object;
}
