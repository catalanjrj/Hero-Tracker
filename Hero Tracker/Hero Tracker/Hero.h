//
//  Hero.h
//  Hero Tracker
//
//  Created by Jorge Catalan on 4/22/16.
//  Copyright © 2016 Jorge Catalan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hero : NSObject
@property (weak,nonatomic) NSString *heroName;
@property (weak,nonatomic) NSString *firstName;
@property (weak,nonatomic) NSString *lastName;
@property (weak,nonatomic) NSString *nickName;
@property (weak,nonatomic) NSString *height;
@property (weak,nonatomic) NSString *weight;
@property (weak,nonatomic) NSString *powers;
@property (weak,nonatomic) NSString *abilities;






+ (Hero *)heroWithDictionary:(NSDictionary *)heroDict;
@end
