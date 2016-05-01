//
//  HeroDetailViewController.m
//  Hero Tracker
//
//  Created by Jorge Catalan on 4/22/16.
//  Copyright © 2016 Jorge Catalan. All rights reserved.
//

#import "HeroDetailViewController.h"
#import "HeroTableViewContoller.h"
#import "Hero.h"


@interface HeroDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *heroNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *heightLabel;
@property (weak, nonatomic) IBOutlet UILabel *weightLabel;
@property (weak, nonatomic) IBOutlet UILabel *powersLabel;
@property (weak, nonatomic) IBOutlet UILabel *abilitiesLabel;

- (void)loadDetail;


@end

@implementation HeroDetailViewController

- (void)setHero:(Hero *)newHero {
    if (_hero != newHero) {
        _hero = newHero;
        [self loadDetail];
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
     [self loadDetail];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadDetail {
    if (self.hero) {
        self.title = self.hero.heroName;
        if (![self.hero.nickName isEqualToString:@""]) {
            self.heroNameLabel.text = [NSString stringWithFormat:@"%@ %@ %@", self.hero.firstName, self.hero.nickName, self.hero.lastName];
        } else {
            self.heroNameLabel.text = [NSString stringWithFormat:@"%@ %@", self.hero.firstName, self.hero.lastName];
        }
        self.heightLabel.text = ![self.hero.height isEqualToString:@"none"] ? self.hero.height : @"none";
        self.weightLabel.text = ![self.hero.weight isEqualToString:@"none"] ? self.hero.weight : @"none";
        self.powersLabel.text = ![self.hero.powers isEqualToString:@"none"] ? self.hero.powers : @"none";
        self.abilitiesLabel.text = ![self.hero.abilities isEqualToString:@"none"] ? self.hero.abilities : @"none";
    } else {
        self.title = @"Error";
        self.heroNameLabel.text = @"No data found";
        self.heightLabel.text = @"No data found";
        self.weightLabel.text = @"No data found";
        self.powersLabel.text = @"No data found";
        self.abilitiesLabel.text = @"No data found";
    }
}


@end
