//
//  GoogleMap.h
//  MyFirstObejApp
//
//  Created by Ｗinston on 7/13/15.
//  Copyright (c) 2015 Ｗinston. All rights reserved.
//
#import <MapKit/MapKit.h>
#import <UIKit/UIKit.h>

@interface GoogleMap : UIViewController< MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet UISearchBar *searchPerform;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end
