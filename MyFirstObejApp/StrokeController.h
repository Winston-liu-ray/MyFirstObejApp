//
//  StrokeController.h
//  MyFirstObejApp
//
//  Created by Ｗinston on 7/7/15.
//  Copyright (c) 2015 Ｗinston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StrokeController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UIScrollView *scroll;
- (IBAction)normal:(id)sender;
- (IBAction)abnormal:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *point1;
@property (strong, nonatomic) IBOutlet UILabel *point2;
@property (strong, nonatomic) IBOutlet UILabel *point3;
- (IBAction)forward:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UIButton *_normal;
@property (strong, nonatomic) IBOutlet UIButton *_abnormal;
@property (strong, nonatomic) IBOutlet UIButton *forwardButton;

@end
