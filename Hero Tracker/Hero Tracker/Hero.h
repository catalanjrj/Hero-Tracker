//
//  Hero.h
//  Hero Tracker
//
//  Created by Jorge Catalan on 4/22/16.
//  Copyright © 2016 Jorge Catalan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hero : NSObject
@property (nonatomic) NSString *heroName;
@property (nonatomic) NSString *homeWorld;
@property (nonatomic)    NSString *powers;

+ (Hero *)heroWithDictionary:(NSDictionary *)heroDict;
@end
