//
//  TableViewController.h
//  MyFirstObejApp
//
//  Created by Ｗinston on 7/20/15.
//  Copyright (c) 2015 Ｗinston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
- (IBAction)add:(id)sender;

@property (weak, nonatomic) IBOutlet UITableView *tableViewPrototype;
@end
