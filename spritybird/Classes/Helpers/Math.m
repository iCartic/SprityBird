//
//  Math.m
//  spritybird
//
//  Created by Alexis Creuzot on 09/02/2014.
//  Copyright (c) 2014 Alexis Creuzot. All rights reserved.
//

#import "Math.h"
#import <Skillz/Skillz.h>

static unsigned int _seed = 0;

@implementation Math

+ (void)setRandomSeed:(unsigned int)seed
{
    _seed = seed;
    srand(_seed);
}

+ (float) randomFloatBetween:(int) min and:(int) max
{
    if ([[Skillz skillzInstance] tournamentIsInProgress]) {
        // Use the Skillz random number generator to ensure that players
        // competing against each other have the same experiance
        return [Skillz getRandomNumberWithMin:0 andMax:max] * 1.0;
    } else {
        return ((rand()%RAND_MAX)/(RAND_MAX*1.0))*(max-min)+min;
    }}

@end
