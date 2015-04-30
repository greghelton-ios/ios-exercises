//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    //return @0;
    
    return @(2 * [number intValue]);
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableArray *ary = [[NSMutableArray alloc] init];
    for (NSInteger x = number; x <= otherNumber; x++) {
        [ary addObject:@(x)];
    }
    return ary;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    //return 0;
    long lowest = NSIntegerMax;
    for (int x = 0; x < [arrayOfNumbers count]; x++) {
        if ([arrayOfNumbers[x] integerValue] < lowest) {
            NSLog(@"number in array: %@", arrayOfNumbers[x]);
            lowest = [arrayOfNumbers[x] integerValue];
        }
    }
    return lowest;
}

@end
