//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    NSString *fav = [NSString stringWithFormat: @"My favorite cheese is %@.", cheeseName];
    return fav;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
    
    NSRange cheeseRange = [cheeseName rangeOfString: cheeseName];
    
    NSString *cheese = [cheeseName stringByReplacingOccurrencesOfString: @" cheese" withString: @"" options: NSCaseInsensitiveSearch range: cheeseRange];
    
    return cheese;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *formattedString;
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        formattedString = [NSString stringWithFormat: @"%ld cheese", cheeseCount];
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        formattedString = [NSString stringWithFormat: @"%ld cheeses", cheeseCount];
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return formattedString;
}

@end
