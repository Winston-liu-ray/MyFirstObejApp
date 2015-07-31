//
//  ViewController.m
//  MyFirstObejApp
//
//  Created by Ｗinston on 6/14/15.
//  Copyright (c) 2015 Ｗinston. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.userInteractionEnabled = true;
    //self.account = [NSString init] ;
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    //NSLog(@"hi");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
