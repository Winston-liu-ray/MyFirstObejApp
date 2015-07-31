//
//  MapController.h
//  MyFirstObejApp
//
//  Created by Ｗinston on 7/3/15.
//  Copyright (c) 2015 Ｗinston. All rights reserved.
//

#ifndef MyFirstObejApp_MapController_h
#define MyFirstObejApp_MapController_h


#endif
#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapController : UIViewController<CLLocationManagerDelegate, MKMapViewDelegate>{
    
}
- (IBAction)setMap:(id)sender;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UISearchBar *ibSearchBar;
@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) UISearchController *searchController;
@property(nonatomic, weak) id< UISearchResultsUpdating > searchResultsUpdater;


@end