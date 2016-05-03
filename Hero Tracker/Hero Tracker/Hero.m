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
    {if (heroDict) {
        aHero = [[Hero alloc] init];
        aHero.heroName = heroDict[@"heroname"];
        aHero.firstName = heroDict[@"firstname"];
        aHero.lastName = heroDict[@"lastname"];
        aHero.nickname= heroDict[@"nickname"];
        aHero.height = heroDict[@"height"];
        aHero.weight = heroDict[@"weight"];
        aHero.powers = heroDict[@"powers"];
        aHero.abilities = heroDict[@"abilities"];
    
    }
    return aHero;
    }

}
@end
