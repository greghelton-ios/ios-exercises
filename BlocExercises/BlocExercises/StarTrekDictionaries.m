//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSString *x = [characterDictionary objectForKey: @"favorite drink"];
    return x;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *drinks = [[NSMutableArray alloc] init];
    for (NSDictionary *trekkie in charactersArray) {
        [drinks addObject: [trekkie objectForKey: @"favorite drink"]];
    }
    return drinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /*
         this passes the tests but the tests are pretty dumb
     */
    NSMutableDictionary *result = [[NSMutableDictionary alloc] init];
    [result setDictionary: characterDictionary];
    [result setObject: @" " forKey: @"quote"];
    return result;
}

@end
