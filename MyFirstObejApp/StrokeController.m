//
//  StrokeController.m
//  MyFirstObejApp
//
//  Created by Ｗinston on 7/7/15.
//  Copyright (c) 2015 Ｗinston. All rights reserved.
//

#import "StrokeController.h"

@interface StrokeController ()

@end

@implementation StrokeController
@synthesize _abnormal;
@synthesize _normal;
@synthesize point1;
@synthesize point2;
@synthesize point3;
@synthesize scroll;
@synthesize forwardButton;
int count;
bool didSelect;
NSArray *tableData;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_normal setBackgroundColor:[UIColor greenColor]];
    [_abnormal setBackgroundColor:[UIColor yellowColor]];
    [point1 setBackgroundColor:[UIColor blueColor]];
    //scroll.contentSize=CGSizeMake(500,276);
    tableData = [NSArray arrayWithObjects:@"1 正常",@"2 不正常", nil];
    didSelect = false;
    count = 0;


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (IBAction)normal:(id)sender {
    [_normal setBackgroundColor:[UIColor greenColor]];
    [_abnormal setBackgroundColor:[UIColor yellowColor]];
}

- (IBAction)abnormal:(id)sender {
    [_normal setBackgroundColor:[UIColor yellowColor]];
    [_abnormal setBackgroundColor:[UIColor greenColor]];

}
- (IBAction)forward:(UIButton *)sender {

    if (didSelect == false) {
        UIAlertView *messageAlert = [[UIAlertView alloc] initWithTitle:@"Warning" message:@"請輸入" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [messageAlert show];

    }
    else if(didSelect == true && count == 0){
        UIButton *backwardButton = [[UIButton alloc] initWithFrame:CGRectMake(20, self.view.frame.size.height-120, 50, 50)];
        [backwardButton setTitle:@"Back" forState:UIControlStateNormal];
        [backwardButton addTarget:self action:@selector(backward) forControlEvents:UIControlEventTouchUpInside];
        [backwardButton setBackgroundImage:[UIImage imageNamed:@"black.jpg"] forState:UIControlStateNormal];
        backwardButton.tag = 1;
        [self.view addSubview:backwardButton];

        [point2 setBackgroundColor:[UIColor blueColor]];
        count++;
    }
    else if(didSelect == true && count == 1){
        [point3 setBackgroundColor:[UIColor blueColor]];
        count++;
        [forwardButton setBackgroundImage:[UIImage imageNamed:@"phone.jpg"] forState:UIControlStateNormal];
        [forwardButton setTitle:nil forState:UIControlStateNormal];
    }
    else{
        NSLog(@"tets");
        UIViewController *StrokeResult = [self.storyboard instantiateViewControllerWithIdentifier:@"StrokeResult"];

        [StrokeResult setHidesBottomBarWhenPushed:NO];
        [self.navigationController pushViewController:StrokeResult animated:YES];
    }
    
    
}

-(void)backward{
    
    if ( count == 1) {
        
        count--;
        [point2 setBackgroundColor:[UIColor whiteColor]];
        UIView *viewToRemove = [self.view viewWithTag:1];
        [viewToRemove removeFromSuperview];

    }
    else if(count == 2){
        [point3 setBackgroundColor:[UIColor whiteColor]];
        count--;
    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    didSelect = true;
    
    UIAlertView *messageAlert = [[UIAlertView alloc]
                                 initWithTitle:@"Row Selected" message:[tableData objectAtIndex:indexPath.row] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    //NSLog(@"%ld",(long)indexPath.row);
    // Display  Message
    [messageAlert show];
    
    // Checked the selected row
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (cell.accessoryType == UITableViewCellAccessoryCheckmark) {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    else{
        cell.accessoryType = UITableViewCellAccessoryCheckmark;

    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
