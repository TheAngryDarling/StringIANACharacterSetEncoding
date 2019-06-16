// https://bugs.swift.org/browse/SR-5986
// Temporary workaround

#if !(defined(__APPLE__) && defined(__MACH__))
void swift_retain(void *object);
void * objc_retainAutoreleasedReturnValue(void *object);
#endif

