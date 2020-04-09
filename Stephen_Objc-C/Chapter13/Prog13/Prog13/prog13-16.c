//
//  prog13-16.c
//  Prog13
//
//  Created by Eric Golovin on 11/4/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#include "prog13-16.h"

void copyString (char *to, char *from) {
    
    while (*from) {
        *to++ = *from++;
    }
    
//    for (; *from != '\0'; ++from, ++to) {
//        *to = *from;
//    }
    
    *to = '\0';
}
