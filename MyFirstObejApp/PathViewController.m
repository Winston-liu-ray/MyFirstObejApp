//
//  PathViewController.m
//  MyFirstObejApp
//
//  Created by Ｗinston on 7/20/15.
//  Copyright (c) 2015 Ｗinston. All rights reserved.
//

#import "PathViewController.h"

@interface PathViewController ()

@end

@implementation PathViewController
@synthesize latitude;
@synthesize longtitude;

- (void)viewDidLoad {
    [super viewDidLoad];
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

- (IBAction)pathSearch:(id)sender {
    CLLocationCoordinate2D firstGPSLocation;
    firstGPSLocation.latitude  = 24.136845;
    firstGPSLocation.longitude = 120.685009;
    //目的地的大頭針
    MKPlacemark *place1 = [[MKPlacemark alloc] initWithCoordinate:firstGPSLocation addressDictionary:nil];
    //目的地( destination )
    MKMapItem *destination1 = [[MKMapItem alloc] initWithPlacemark:place1];
    destination1.name = latitude.text;
    /*
     * 到台中 SOGO
     */
    CLLocationCoordinate2D secondGPSLocation;
    secondGPSLocation.latitude  = 24.155006;
    secondGPSLocation.longitude = 120.662956;
    MKPlacemark *place2 = [[MKPlacemark alloc] initWithCoordinate:secondGPSLocation addressDictionary:nil];
    MKMapItem *destination2 = [[MKMapItem alloc] initWithPlacemark:place2];
    destination2.name = longtitude.text;
    /*
     * 啟動任二點的導航路徑規劃
     */
    NSDictionary* options = [[NSDictionary alloc] initWithObjectsAndKeys:
                             MKLaunchOptionsDirectionsModeDriving,
                             MKLaunchOptionsDirectionsModeKey,
                             nil];
    //陣列第 1 個為出發地點，第二個為導航目的地
    NSArray *items = [[NSArray alloc] initWithObjects:
                      //destination0,
                      destination1,
                      destination2,
                      nil];
    //導航
    [MKMapItem openMapsWithItems:items launchOptions:options];
}

- (IBAction)oneDestinationPath:(id)sender {
    CLLocationCoordinate2D firstGPSLocation;
    firstGPSLocation.latitude  = 24.136845;
    firstGPSLocation.longitude = 120.685009;
    MKPlacemark *place1 = [[MKPlacemark alloc] initWithCoordinate:firstGPSLocation addressDictionary:nil];
    MKMapItem *destination1 = [[MKMapItem alloc] initWithPlacemark:place1];
    destination1.name = @"台中火車站";
    NSDictionary* options = [[NSDictionary alloc] initWithObjectsAndKeys:
                             MKLaunchOptionsDirectionsModeDriving,
                             MKLaunchOptionsDirectionsModeKey, nil];
    /*
     * 啟動目前位置的導航路徑規劃
     */
    [destination1 openInMapsWithLaunchOptions:options];
}
@end
