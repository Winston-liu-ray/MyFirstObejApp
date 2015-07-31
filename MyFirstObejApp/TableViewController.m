//
//  TableViewController.m
//  MyFirstObejApp
//
//  Created by Ｗinston on 7/20/15.
//  Copyright (c) 2015 Ｗinston. All rights reserved.
//

#import "TableViewController.h"
@interface TableViewController ()

@end

@implementation TableViewController{
    NSString *supplement;
    NSMutableDictionary *animals;
    NSArray *animalSectionTitles;
    NSArray *animalIndexTitles;

    
}
@synthesize tableViewPrototype;

- (void)viewDidLoad {
    [super viewDidLoad];
     animals = [NSMutableDictionary dictionaryWithDictionary :
              @{@"B" : @[@"Bear", @"Black Swan", @"Buffalo"],
                @"C" : @[@"Camel", @"Cockatoo"],
                @"D" : @[@"Dog", @"Donkey"],
                @"E" : @[@"Emu"],
                @"G" : @[@"Giraffe", @"Greater Rhea"],
                @"H" : @[@"Hippopotamus", @"Horse"],
                @"K" : @[@"Koala"],
                @"L" : @[@"Lion", @"Llama"],
                @"M" : @[@"Manatus", @"Meerkat"],
                @"P" : @[@"Panda", @"Peacock", @"Pig", @"Platypus", @"Polar Bear"],
                @"R" : @[@"Rhinoceros"],
                @"S" : @[@"Seagull"],
                @"T" : @[@"Tasmania Devil"],
                @"W" : @[@"Whale", @"Whale Shark", @"Wombat"]} ];
    
    
    //[animals setObject:@[@"Mary"] forKey:@"M"];
    // NSLog(@"%@",animals);
    animalSectionTitles = [[animals allKeys] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return [animalSectionTitles count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    NSString *sectionTitle = [animalSectionTitles objectAtIndex:section];
    NSArray *sectionAnimals = [animals objectForKey:sectionTitle];
    return [sectionAnimals count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [animalSectionTitles objectAtIndex:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    NSString *sectionTitle = [animalSectionTitles objectAtIndex:indexPath.section];
    NSArray *sectionAnimals = [animals objectForKey:sectionTitle];
    NSString *animal = [sectionAnimals objectAtIndex:indexPath.row];
    cell.textLabel.text = animal;
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index
{
    return [animalSectionTitles indexOfObject:title];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}
- (IBAction)add:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Title" message:@"This is the message." delegate:self  cancelButtonTitle:@"OK"otherButtonTitles:nil ];
    
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    [alert show];
 
}
- (void)alertView:(UIAlertView *)theAlert clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    supplement = [[theAlert textFieldAtIndex:0] text];
   // NSDictionary *test = [NSDictionary dictionaryWithObject:@[supplement] forKey:@"A"];
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    [tempArray addObjectsFromArray:[animals valueForKey:@"B"]];
    [tempArray addObject:supplement];
    [animals setValue:tempArray forKey:@"B"];
    
    //animals[@"A"]=@[supplement];   // this will REPLACE the A section, not adding to it.
   // [animals addEntriesFromDictionary:test];
    animalSectionTitles = [[animals allKeys] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
  //  NSLog(@"%@",animals);
    [self.tableViewPrototype reloadData];
    
}
@end
