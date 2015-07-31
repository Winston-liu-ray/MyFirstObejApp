#import "GoogleMap.h"
#import <Foundation/Foundation.h>

@import GoogleMaps;

@implementation GoogleMap {
    }
@synthesize mapView;
@synthesize searchPerform;

- (void)viewDidLoad {
    [[self navigationController] setNavigationBarHidden:NO animated:YES];
    self.tabBarController.tabBar.hidden = YES;
    self.mapView.delegate = self;
    // Create a GMSCameraPosition that tells the map to display the
    
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:25.03 longitude:121.5 zoom:13];
    GMSMapView *mapView_ = [GMSMapView mapWithFrame:CGRectMake(0,0,300,300) camera:camera]; //ISSUE: resizing doesn't work
    
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
    mapView_.mapType = kGMSTypeSatellite;
    mapView_.settings.myLocationButton = YES;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(25.03, 121.5);
    marker.title = @"學悅科技";
    marker.snippet = @"Taipei";
    marker.icon = [GMSMarker markerImageWithColor:[UIColor purpleColor]];
    marker.appearAnimation = kGMSMarkerAnimationPop;
    marker.map = mapView_;

    
    GMSMarker *marker2 = [[GMSMarker alloc] init];
    marker.appearAnimation = kGMSMarkerAnimationPop;
    marker2.position = CLLocationCoordinate2DMake(25, 121.5);
    marker2.title = @"Hello World";
    marker2.map = mapView_;
    
    GMSMutablePath *path = [GMSMutablePath path];
    [path addLatitude:25.03 longitude:121.5];
    [path addLatitude:25 longitude: 121.5];
    
    
    GMSPolyline *polyline = [GMSPolyline polylineWithPath:path];
    polyline.strokeColor = [UIColor blueColor];
    polyline.strokeWidth = 5.f;
    polyline.map = mapView_;


    [[GMSGeocoder geocoder] reverseGeocodeCoordinate:CLLocationCoordinate2DMake(24.03,121.5) completionHandler:^(GMSReverseGeocodeResponse* response, NSError* error) {
        NSLog(@"reverse geocoding results:");
        for(GMSAddress* addressObj in [response results])
        {
            NSLog(@"coordinate.latitude=%f", addressObj.coordinate.latitude);
            NSLog(@"coordinate.longitude=%f", addressObj.coordinate.longitude);
            NSLog(@"thoroughfare=%@", addressObj.thoroughfare);
            NSLog(@"locality=%@", addressObj.locality);
            NSLog(@"subLocality=%@", addressObj.subLocality);
            NSLog(@"administrativeArea=%@", addressObj.administrativeArea);
            NSLog(@"postalCode=%@", addressObj.postalCode);
            NSLog(@"country=%@", addressObj.country);
            NSLog(@"lines=%@", addressObj.lines);
        }
    }];

}
-(void)viewWillDisappear:(BOOL)animated{
    
    self.tabBarController.tabBar.hidden = NO;

}
@end
