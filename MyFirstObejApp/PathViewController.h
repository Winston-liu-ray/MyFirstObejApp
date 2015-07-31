//
//  PathViewController.h
//  MyFirstObejApp
//
//  Created by Ｗinston on 7/20/15.
//  Copyright (c) 2015 Ｗinston. All rights reserved.
//
#import <MapKit/MapKit.h>
#import <UIKit/UIKit.h>

@interface PathViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *latitude;
@property (weak, nonatomic) IBOutlet UITextField *longtitude;
- (IBAction)pathSearch:(id)sender;
- (IBAction)oneDestinationPath:(id)sender;

@end
