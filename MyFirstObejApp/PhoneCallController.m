//
//  PhoneCallController.m
//  MyFirstObejApp
//
//  Created by Ｗinston on 7/7/15.
//  Copyright (c) 2015 Ｗinston. All rights reserved.
//

#import "PhoneCallController.h"

@interface PhoneCallController ()

@end

@implementation PhoneCallController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)phoneCall:(id)sender {
    NSString *phNo = @"+919876543210";    // change the number here
    NSURL *phoneUrl = [NSURL URLWithString:[NSString  stringWithFormat:@"telprompt:%@",phNo]];
    
    if ([[UIApplication sharedApplication] canOpenURL:phoneUrl]) {
        [[UIApplication sharedApplication] openURL:phoneUrl];
    } else
    {
        UIAlertView *calert = [[UIAlertView alloc]initWithTitle:@"Alert" message:@"Call facility is not available!!!" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [calert show];
    }
}
@end
