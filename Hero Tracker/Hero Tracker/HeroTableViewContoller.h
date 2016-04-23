//
//  HeroTableViewContoller.h
//  Hero Tracker
//
//  Created by Jorge Catalan on 4/22/16.
//  Copyright © 2016 Jorge Catalan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeroTableViewContoller : UITableViewController

@property(weak,nonatomic) NSObject *customHeroModels;



-(void)_loadHeroes;
@end
