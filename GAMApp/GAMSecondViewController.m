//
//  GAMSecondViewController.m
//  GAMApp
//
//  Created by student on 8/15/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import "GAMSecondViewController.h"

@interface GAMSecondViewController ()

@end

@implementation GAMSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Accelerometer", @"Accelerometer");
        self.tabBarItem.image = [UIImage imageNamed:@"A-Icon"];
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

- (void)dealloc {
    [xTextField release];
    [yTextField release];
    [zTextField release];
    [super dealloc];
}

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"ACCELEROMETER VIEW APPEAR");
    
    UIAccelerometer *meter = [UIAccelerometer sharedAccelerometer];
    meter.delegate = self;
    meter.updateInterval = 1.0;
}

- (void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"ACCELEROMETER VIEW DISAPPEAR");
    
    UIAccelerometer *meter = [UIAccelerometer sharedAccelerometer];
    meter.delegate = nil;
}

- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration
{
    NSLog(@"Got Acceleromter data");
    
    xTextField.text = [NSString stringWithFormat:@"%f", acceleration.x];
    yTextField.text = [NSString stringWithFormat:@"%f", acceleration.y];
    zTextField.text = [NSString stringWithFormat:@"%f", acceleration.z];
}

@end
