//
//  prog13-15.c
//  Prog13
//
//  Created by Eric Golovin on 11/4/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#include "prog13-15.h"

int arraySum(int array[], int n) {
    int sum = 0, *ptr;
    int *arrayEnd = array + n;
    
    for (ptr = array; ptr < arrayEnd; ++ptr) {
        sum += *ptr;
    }
    
    return sum;
}
