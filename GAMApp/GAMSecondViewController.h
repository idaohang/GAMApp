//
//  GAMSecondViewController.h
//  GAMApp
//
//  Created by student on 8/15/13.
//  Copyright (c) 2013 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GAMSecondViewController : UIViewController <UIAccelerometerDelegate>
{
    IBOutlet UITextField *xTextField;
    IBOutlet UITextField *yTextField;
    IBOutlet UITextField *zTextField;
}

- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration;

@end
