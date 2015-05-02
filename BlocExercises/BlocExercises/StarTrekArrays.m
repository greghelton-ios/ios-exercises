//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    //return @[];
    
    NSArray *characters = [characterString componentsSeparatedByString:@";"];
    
    return characters;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    //return @"";
    
    NSString *characters = [characterArray componentsJoinedByString:@";"];

    return characters;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    //return @[];

    NSArray *sortedArray = [characterArray sortedArrayUsingSelector:@selector(compare:)];
    
    return sortedArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    //return NO;
    BOOL found = NO;
    for (NSString *s in characterArray)
    {
        if ([s containsString:@"Worf"]) {
            found = YES;
            break;
        }
    }
    return found;;
    
}

@end
