//
//  selectColorViewController.h
//  Fun Drawing
//
//  Created by Kotaro Yama on 1/19/15.
//  Copyright (c) 2015 Kotaro Yamamoto. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ColorViewControllerDelegate <NSObject>

- (void)chooseColor:(UIButton *)sender;

@end

@interface ColorViewController : UIViewController
{
    @public
    UIColor *color;
    @private
    UIButton *redBtn;
    UIButton *blueBtn;
    UIButton *yellowBtn;
    UIButton *closeBtn;
}

@property id <ColorViewControllerDelegate> delegate;

@end
