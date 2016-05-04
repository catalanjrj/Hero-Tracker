//
//  Hero.h
//  Hero Tracker
//
//  Created by Jorge Catalan on 4/22/16.
//  Copyright © 2016 Jorge Catalan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hero : NSObject
@property (copy,nonatomic) NSString *heroName;
@property (copy,nonatomic) NSString *firstName;
@property (copy,nonatomic) NSString *lastName;
@property (copy,nonatomic) NSString *nickname;
@property (copy,nonatomic) NSString *height;
@property (copy,nonatomic) NSString *weight;
@property (copy,nonatomic) NSString *powers;
@property (copy,nonatomic) NSString *abilities;






+ (Hero *)heroWithDictionary:(NSDictionary *)heroDict;
@end
