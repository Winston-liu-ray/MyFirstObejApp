//
//  CSVParsingViewController.m
//  MyFirstObejApp
//
//  Created by Ｗinston on 7/22/15.
//  Copyright (c) 2015 Ｗinston. All rights reserved.
//

#import "CSVParsingViewController.h"
#import "CHCSVParser.h"
@interface CSVParsingViewController ()

@end

@implementation CSVParsingViewController
@synthesize numberOfData;
@synthesize lastOne;

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.navigationItem.title = @"Title B";
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSURL *fileURL = [bundle URLForResource:@"Data" withExtension:@"csv"];
    NSArray *rows = [NSArray arrayWithContentsOfCSVURL:fileURL];  // stupid method name, misleading me
    
    if (rows == nil) {
        NSLog(@"error parsing file");
        return;
    }

    for (NSArray* currentArray in rows) {
        NSString *currentString = [currentArray componentsJoinedByString:@" "];
        NSArray *partOneArray = [currentString  componentsSeparatedByString:@" "];
        NSString *firstElem = [partOneArray objectAtIndex:6];
        NSLog(@"S:%@",firstElem);
        self.lastOne.text = firstElem;
    }
    self.numberOfData.text = [NSString stringWithFormat:@"%lu",(unsigned long)[rows count]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}
@end
