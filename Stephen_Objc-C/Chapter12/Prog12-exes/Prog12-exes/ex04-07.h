//
//  ex04-05.h
//  Prog12-exes
//
//  Created by Eric Golovin on 10/26/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#ifndef ex04_05_h
#define ex04_05_h

#define IS_UPPER_CASE(x) (((x) >= ('A')) && ((x) <= ('Z')))
#define IS_LOWER_CASE(x) (((x) >= ('a')) && ((x) <= ('z')))

#define IS_ALPHABETIC(x) ((IS_UPPER_CASE(x)) || (IS_LOWER_CASE(x)))
#define IS_DIGIT(x) ((x) == 0 || (x) == 1 || (x) == 2 || (x) == 3 || (x) == 4 || (x) == 5 || (x) == 6 || (x) == 7 || (x) == 8 || (x) == 9)

#define IS_SPECIAL(x) (!IS_ALPHABETIC(x) && !IS_DIGIT(x))

#define ABSOLUTE_VALUE(x) ((x) < 0 ? -(x) : (x))


#endif /* ex04_05_h */
