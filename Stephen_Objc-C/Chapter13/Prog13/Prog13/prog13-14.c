//
//  prog13-14.c
//  Prog13
//
//  Created by Eric Golovin on 11/4/19.
//  Copyright © 2019 EricGolovin. All rights reserved.
//

#include "prog13-14.h"

void exchange(int *pint1, int *pint2) {
    int temp;
    
    temp = *pint1;
    *pint1 = *pint2;
    *pint2 = temp;
}
