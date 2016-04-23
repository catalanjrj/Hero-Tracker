//
//  Hero.m
//  Hero Tracker
//
//  Created by Jorge Catalan on 4/22/16.
//  Copyright © 2016 Jorge Catalan. All rights reserved.
//

#import "Hero.h"

@implementation Hero
+ (Hero *)heroWithDictionary:(NSDictionary *)heroDict
{
    Hero *aHero = nil;
    if (heroDict)
    {
        aHero = [[Hero alloc] init];
        aHero.heroName = [heroDict objectForKey:@"neroName"];
        
       
        aHero.homeWorld = [heroDict objectForKey:@"homeWorld"];
        
      
        aHero.powers = [heroDict objectForKey:@"heroPowers"];
    }
    return aHero;
}
@end
