//
//  CameraViewController.h
//  MyFirstObejApp
//
//  Created by Ｗinston on 7/23/15.
//  Copyright (c) 2015 Ｗinston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CameraViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)takePic:(id)sender;
- (IBAction)selectPic:(id)sender;

@end
