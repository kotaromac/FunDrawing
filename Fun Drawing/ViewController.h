//
//  ViewController.h
//  Fun Drawing
//
//  Created by Kotaro Yama on 1/18/15.
//  Copyright (c) 2015 Kotaro Yamamoto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DrawingView.h"
#import "SelectColorButton.h"

@interface ViewController : UIViewController <UIAlertViewDelegate>
{
    BOOL btnFlag;
    UIImage *image;
    UIImage *fromView;
    UIColor *theColor;
    UIColor *backgroundColor;
    UIButton *clearBtn;
    UIButton *lastBtn;
    UIButton *saveBtn;
    SelectColorButton *selectBlackBtn;
    SelectColorButton *selectRedBtn;
    SelectColorButton *selectBlueBtn;
    SelectColorButton *selectYellowBtn;
    SelectColorButton *selectGreenBtn;
    SelectColorButton *selectOrangeBtn;
    SelectColorButton *selectPurpleBtn;
    SelectColorButton *selectWhiteBtn;
    DrawingView *drawingView;
}

- (void)clearDraw;
- (void)saveAsPhoto;
- (void)selectColor:(UIButton *)sender;
- (void)highlightButton:(UIButton *)button;

@end

