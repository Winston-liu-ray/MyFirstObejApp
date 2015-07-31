//
//  SearchController.h
//  MyFirstObejApp
//
//  Created by Ｗinston on 7/6/15.
//  Copyright (c) 2015 Ｗinston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchController : UIViewController <UISearchDisplayDelegate>
{
    NSMutableArray *contentList;
    NSMutableArray *filteredContentList;
    int y,index;
}
@property (strong, nonatomic) IBOutlet UISearchBar *searchText;
- (IBAction)searchButton:(id)sender;
- (void)myCustomFunction:(id)sender;

@end
