//
//  GAMFirstViewController.m
//  GAMApp
//
//  Created by student on 8/15/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import "GAMFirstViewController.h"

@interface GAMFirstViewController ()

@end

@implementation GAMFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"GPS", @"GPS");
        self.tabBarItem.image = [UIImage imageNamed:@"G-Icon"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"VIEW APPEAR");
    
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    
    [locationManager startUpdatingLocation];
    
}

- (void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"VIEW DISAPPEAR");
    
    [locationManager stopUpdatingLocation];
    [locationManager release];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"got location");
    
    dtTextField.text = [[NSDate date] description];
    latTextField.text = [NSString stringWithFormat:@"%f", newLocation.coordinate.latitude];
    lonTextField.text = [NSString stringWithFormat:@"%f", newLocation.coordinate.longitude];
    
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSString *msg = error.localizedDescription;
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Location Error" message:msg delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    [alert release]; 
}

- (void)dealloc {
    [dtTextField release];
    [latTextField release];
    [lonTextField release];
    [super dealloc];
}
@end
