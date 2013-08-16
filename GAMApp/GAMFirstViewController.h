//
//  GAMFirstViewController.h
//  GAMApp
//
//  Created by student on 8/15/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface GAMFirstViewController : UIViewController <CLLocationManagerDelegate>
{

    IBOutlet UITextField *dtTextField;
    IBOutlet UITextField *latTextField;
    IBOutlet UITextField *lonTextField;
    
    CLLocationManager *locationManager;
}


- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation;
- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error;

@end
