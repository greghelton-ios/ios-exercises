//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSString *concatString = @"";
    
    if (number > otherNumber) {
        NSInteger temp = number;
        number = otherNumber;
        otherNumber = temp; 
    }

    for (NSInteger x = number; x <= otherNumber; x++)
    {
        concatString = [concatString stringByAppendingFormat:@"%li", (long)x];
    }

    return concatString;
}

@end
