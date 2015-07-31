//
//  SearchController.m
//  MyFirstObejApp
//
//  Created by Ｗinston on 7/6/15.
//  Copyright (c) 2015 Ｗinston. All rights reserved.
//

#import "SearchController.h"
#import "CPR_Controller.h"


@interface SearchController ()
@end

@implementation SearchController
@synthesize searchText;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // the order is important
    contentList = [[NSMutableArray alloc] initWithObjects:@"CPR", @"癲癇", @"頭部外傷", @"暈倒", @"意識不清",@"test",@"CPRRR", nil];
    filteredContentList =[[NSMutableArray alloc] init];
    y=200;
//NSLog(@"width of view in didappear:%f",self.view.frame.size.width);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// searching function
- (IBAction)searchButton:(id)sender {
    
    if (y != 150) {
        for (UIView *subview in [self.view subviews]) {
            // Only remove the subviews with tag not equal to -1
            if (subview.tag!=false) {
                 [subview removeFromSuperview];
            }
        }
    }
    
    y=150;
    index=1;
    
    NSString *searchString = searchText.text;
    //NSLog(@"%@",searchString);
    for (NSString *tempStr in contentList) {
        NSComparisonResult result = [tempStr compare:searchString options:(NSCaseInsensitiveSearch|NSDiacriticInsensitiveSearch) range:NSMakeRange(0, [searchString length])];
        if (result == NSOrderedSame && ![searchString isEqual:@""]) {
           
            [filteredContentList addObject:tempStr];
            UIButton *myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            myButton.frame = CGRectMake((self.view.frame.size.width)/2-150, y, 300, 35 );
            [myButton setTitle:tempStr forState:UIControlStateNormal];
             myButton.tag = index;
            [myButton addTarget:self action:@selector(myCustomFunction:) forControlEvents:UIControlEventTouchUpInside];
            [myButton setBackgroundImage:[UIImage imageNamed:@"black.jpg"] forState:UIControlStateNormal];
            y+=50;
           // NSLog(@"ho");
            [self.view addSubview:myButton];
            
        }
        index++;
  
    }

}

- (void)myCustomFunction:(id)sender{
    UIViewController *CPR_Controller = [self.storyboard instantiateViewControllerWithIdentifier:@"CPR"];
    //CPR_Controller.view.backgroundColor = [UIColor whiteColor];

    NSInteger number = [sender tag];
    
    switch (number) {
        case 1:
            [self.navigationController pushViewController:CPR_Controller animated:YES];
        break;
            
        default:
            break;
    }
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];// this will do the trick
}



@end
