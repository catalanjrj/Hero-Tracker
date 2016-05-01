//
//  HeroTableViewContoller.m
//  Hero Tracker
//
//  Created by Jorge Catalan on 4/22/16.
//  Copyright © 2016 Jorge Catalan. All rights reserved.
//

#import "HeroTableViewContoller.h"
#import "Hero.h"
#import "HeroDetailViewController.h"

@interface HeroTableViewContoller ()
@property NSMutableArray *heroes;
@property (nonatomic) Hero *selectedHero;


-(void)loadHeroes;

@end

@implementation HeroTableViewContoller;




    


- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"S.H.I.E.L.D. Hero Tracker";
    self.heroes = [[NSMutableArray alloc] init];
    [self loadHeroes];

  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)loadHeroes{
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource: @"heroes"ofType:@"json"];
    
    NSArray *heroes = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:filePath] options:NSJSONReadingAllowFragments error:nil];
    
    for(NSDictionary *hero in heroes) {
        
   [self.heroes addObject:[Hero heroWithDictionary:hero]];
        
       // [self.tableView reloadData];
        
}
    [self.heroes sortUsingDescriptors:[NSArray arrayWithObjects:[NSSortDescriptor sortDescriptorWithKey:@"heroName" ascending:YES],nil]];
    
    
    [self.tableView reloadData];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.heroes.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HeroTableViewCell" forIndexPath:indexPath];
    
    Hero *hero = self.heroes[indexPath.row];
    
    cell.textLabel.text = hero.heroName;
   

    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
     //Deselect our row first
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    
     //Get the selected hero
    self.selectedHero = self.heroes[indexPath.row];
    
    // Perform segue
    [self performSegueWithIdentifier:@"heroDetails" sender:self];
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"heroDetails"]) {
        [(HeroDetailViewController *)segue.destinationViewController setHero:self.selectedHero];
        [self setSelectedHero:nil];
    }
}


@end
