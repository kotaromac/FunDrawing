//
//  selectColorViewController.m
//  Fun Drawing
//
//  Created by Kotaro Yama on 1/19/15.
//  Copyright (c) 2015 Kotaro Yamamoto. All rights reserved.
//

#import "ColorViewController.h"

@implementation ColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGPoint newPoint = CGPointZero;
    CGRect screen = [[UIScreen mainScreen] bounds];
    CGFloat width = screen.size.width;
    
    /* Blue Button */
    blueBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [blueBtn setTitle:@"Blue" forState:UIControlStateNormal];
    [blueBtn sizeToFit];
    blueBtn.center = CGPointMake(width / 2, 40);
    [blueBtn addTarget:self action:@selector(chooseColor:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:blueBtn];
    
    /* Red Button */
    redBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [redBtn setTitle:@"Red" forState:UIControlStateNormal];
    [redBtn sizeToFit];
    newPoint = blueBtn.center;
    newPoint.y += 30;
    redBtn.center = newPoint;
    [redBtn addTarget:self action:@selector(chooseColor:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:redBtn];
    
    /* Yellow Button */
    yellowBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [yellowBtn setTitle:@"Yellow" forState:UIControlStateNormal];
    [yellowBtn sizeToFit];
    newPoint.y += 30;
    yellowBtn.center = newPoint;
    [yellowBtn addTarget:self action: forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:yellowBtn];
    
    /* Close the button */
    closeBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [closeBtn setTitle:@"Done" forState:UIControlStateNormal];
    [closeBtn sizeToFit];
    closeBtn.center = CGPointMake(width - 45, 35);
    [closeBtn addTarget:self action:@selector(closeView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:closeBtn];
    
}



@end
