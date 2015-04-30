//
//  EqualityDeterminer.m
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import "EqualityDeterminer.h"

@implementation EqualityDeterminer

- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2 {
    /* WORK HERE */
    BOOL equality = [string1 isEqualToString: string2];
    return equality;
}

- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2 {
    /* WORK HERE */
    BOOL equality = [number1 isEqualToNumber: number2];
    return equality;
}

- (BOOL) integer:(NSInteger)integer1 isGreaterThan:(NSInteger)integer2 {
    /* WORK HERE */
    // NSComparisonResult greaterThan = [[[NSNumber numberWithInt: integer1] compare: [NSNumber numberWithInt: integer2]];
    BOOL greaterThan = integer1 > integer2;
    return greaterThan;
}

@end
