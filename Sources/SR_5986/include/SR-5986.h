// https://bugs.swift.org/browse/SR-5986
// Temporary workaround
void swift_retain(void *object);
void * objc_retainAutoreleasedReturnValue(void *object);

