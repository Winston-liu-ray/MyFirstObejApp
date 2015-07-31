//
//  CPR_Process.m
//  MyFirstObejApp
//
//  Created by Ｗinston on 7/6/15.
//  Copyright (c) 2015 Ｗinston. All rights reserved.
//

#import "CPR_Process.h"

@interface CPR_Process ()

@end

@implementation CPR_Process
@synthesize CPR_View;
- (void)viewDidLoad {
    [super viewDidLoad];
    CPR_View.contentSize=CGSizeMake(320,800);
    [CPR_View setScrollEnabled:YES];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)LookingForAED:(id)sender {
    UIViewController *map = [self.storyboard instantiateViewControllerWithIdentifier:@"map"];
    [self.navigationController pushViewController:map animated:YES];
}
@end
