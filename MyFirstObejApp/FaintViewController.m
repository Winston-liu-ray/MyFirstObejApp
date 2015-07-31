//
//  FaintViewController.m
//  MyFirstObejApp
//
//  Created by Ｗinston on 7/16/15.
//  Copyright (c) 2015 Ｗinston. All rights reserved.
//

#import "FaintViewController.h"
#import <UIView+Toast.h>
@interface FaintViewController () <UIAlertViewDelegate>

@end

@implementation FaintViewController
int x;
- (void)viewDidLoad {
    [super viewDidLoad];
    x=0;
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

- (IBAction)inputAccount:(id)sender {
    x=0;
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Title" message:@"This is the message." delegate:self  cancelButtonTitle:@"OK"otherButtonTitles:nil ];
    
    alert.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    [alert show];
   /* UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello!" message:@"Please enter 'abc' " delegate:self cancelButtonTitle:@"Continue" otherButtonTitles:nil];
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    UITextField *alertTextField = [alert textFieldAtIndex:0];
    
    dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(void){
        if (![alertTextField.text  isEqual: @"abc"]) {
            UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Hello!" message:@"do it again " delegate:self cancelButtonTitle:@"Continue" otherButtonTitles:nil];
            alert.alertViewStyle = UIAlertViewStyleDefault;
            alertTextField.placeholder = @"do it again";
            [alert show];
        }
        else{
            UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Hello!" message:@"Thank you" delegate:self cancelButtonTitle:@"Continue" otherButtonTitles:nil];
            alert.alertViewStyle = UIAlertViewStyleDefault;
            alertTextField.placeholder = @"Thank you";
            [alert show];
            
        }
           dispatch_async(dispatch_get_main_queue(), ^(void){
               
               alertTextField.keyboardType = UIKeyboardTypeNumberPad;
               alertTextField.placeholder = @"Enter your answer";
               [alert show];
           });
    });*/

}

- (IBAction)toastTest:(id)sender {

    
    // toast with duration, title, and position
    [self.view makeToast:@"This is a toast test."
                duration:3.0
                position:CSToastPositionCenter
                   title:@"Toast Title"];
    
    
  
}

- (void)alertView:(UIAlertView *)theAlert clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (x==0) {
        NSLog(@"The %@ button was tapped.", [theAlert buttonTitleAtIndex:0]);
        if (![[theAlert textFieldAtIndex:0].text  isEqual: @"abc"]) {
            UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Hello!" message:@"do it again " delegate:self cancelButtonTitle:@"Continue" otherButtonTitles:nil];
            alert.alertViewStyle = UIAlertViewStyleDefault;
            x=1;
            [alert show];
            
        }
        else{
            UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Hello!" message:@"Thank you" delegate:self cancelButtonTitle:@"Continue" otherButtonTitles:nil];
            alert.alertViewStyle = UIAlertViewStyleDefault;
            x=1;
            [alert show];
            
        }

    }
    

}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
@end
