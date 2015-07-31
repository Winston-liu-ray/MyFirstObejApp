//
//  StrokeResultController.h
//  MyFirstObejApp
//
//  Created by Ｗinston on 7/7/15.
//  Copyright (c) 2015 Ｗinston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StrokeResultController : UIViewController
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)Redo:(id)sender;
@end
