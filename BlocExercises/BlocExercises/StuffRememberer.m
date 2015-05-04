//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

CGFloat aNumber;

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.arrayCopy = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    self.arrayCopy = [NSMutableArray arrayWithArray: arrayToCopy];
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    aNumber = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    return self.arrayCopy;
}

- (NSMutableArray *) arrayYouShouldCopy {
    
    return self.arrayCopy;
}

- (CGFloat) floatYouShouldRemember {
    
    return aNumber;
}

@end