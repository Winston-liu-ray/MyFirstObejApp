//
//  Item1.m
//  MyFirstObejApp
//
//  Created by Ｗinston on 7/3/15.
//  Copyright (c) 2015 Ｗinston. All rights reserved.
//

#import "Item1.h"

@interface Item1 ()

@end

@implementation Item1
@synthesize subview1;
@synthesize subview2;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //[self.view addSubview: subview2];
   // [self.view addSubview: subview1];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)category:(id)sender {
     switch (((UISegmentedControl *) sender).selectedSegmentIndex){
        case 0:
            [self.view bringSubviewToFront: subview1];
           
        break;
        case 1:
            [self.view bringSubviewToFront: subview2];
        break;
            
        default:
            break;
    }
}


@end
