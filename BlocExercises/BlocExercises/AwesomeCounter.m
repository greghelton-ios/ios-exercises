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
    NSMutableString *concatString = [[NSMutableString alloc] init];
    
    /*
         number should be the lower of the two numbers so make the switch if necessary
     */
    if (number > otherNumber) {
        NSInteger temp = number;
        number = otherNumber;
        otherNumber = temp; 
    }

    /*
          from lower number to higher number append so that
     */
    for (NSInteger x = number; x <= otherNumber; x++)
    {
        [concatString appendFormat: @"%li", (long)x];
    }

    return concatString;
}

@end
