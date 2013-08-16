//
//  GAMThirdViewController.m
//  GAMApp
//
//  Created by student on 8/15/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import "GAMThirdViewController.h"

@interface GAMThirdViewController ()

@end

@implementation GAMThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Map";
        self.tabBarItem.image = [UIImage imageNamed:@"M-Icon"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    map.showsUserLocation = TRUE;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [map release];
    [super dealloc];
}
@end
