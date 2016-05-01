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

-(void)configureView;


@end

@implementation HeroDetailViewController

- (void)setHero:(Hero *)newHero {
    if (_hero != newHero) {
        _hero = newHero;
        
         [self configureView];
    }
}

- (void)configureView
{
    if (self.hero)
    {
        self.title = self.hero.heroName;
        self.heroNameLabel.text = [NSString stringWithFormat:@"Name: %@ %@ %@", self.hero.firstName,self.hero.nickName, self.hero.lastName ];
        self.powersLabel.text = [NSString stringWithFormat:@"Powers: %@", self.hero.powers];
        self.heightLabel.text = [NSString stringWithFormat:@"Height: %@", self.hero.height];
        self.weightLabel.text = [NSString stringWithFormat:@"Weight: %@", self.hero.weight];
        self.abilitiesLabel.text = [NSString stringWithFormat:@"Abilities: %@", self.hero.abilities];
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
     [self configureView];
    
//     [self loadDetail];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
