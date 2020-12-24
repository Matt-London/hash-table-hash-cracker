#ifndef HASH_GUARD
#define HASH_GUARD

#include "../constants.h"

// struct to contain the hash, result, and next in table
typedef struct hash {
    // Contains plain text
    char plainText[HASH_TEXT_MAX];

    // Contains hash
    char hashText[HASH_HASH_MAX];
    
    // Next node
    struct hash *next;

} hash;




#endif