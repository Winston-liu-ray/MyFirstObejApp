//
//  StrokeResultController.m
//  MyFirstObejApp
//
//  Created by Ｗinston on 7/7/15.
//  Copyright (c) 2015 Ｗinston. All rights reserved.
//

#import "StrokeResultController.h"

@interface StrokeResultController ()

@end

@implementation StrokeResultController
@synthesize scrollView;
@synthesize imageView;
- (void)viewDidLoad {
    [super viewDidLoad];
    scrollView.contentSize=CGSizeMake(600, 1000);
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)Redo:(id)sender {
    UIViewController *Stroke = [self.storyboard instantiateViewControllerWithIdentifier:@"Stroke"];
    [Stroke setHidesBottomBarWhenPushed:NO];
    [self.navigationController pushViewController:Stroke animated:YES];
}
@end
