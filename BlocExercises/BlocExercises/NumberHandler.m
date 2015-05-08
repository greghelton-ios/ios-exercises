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
    
    return @(2 * number.intValue);
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
    NSNumber *lowest = @(NSIntegerMax);    // I can't refer to NSIntegerMax but have to use @(NSIntegerMax) ?
                                            // I never would have figured this out without looking at your code.
    for (NSNumber *num in arrayOfNumbers) {
        if ( num.intValue < lowest.intValue ) {
            lowest = num;
        }
    }
    return lowest.integerValue;
}

@end
