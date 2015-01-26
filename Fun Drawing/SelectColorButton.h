//
//  SelectColorButton.h
//  Fun Drawing
//
//  Created by Kotaro Yama on 1/21/15.
//  Copyright (c) 2015 Kotaro Yamamoto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectColorButton : UIButton
{
    @private
    UIImage *image;
}

@property (weak, nonatomic) UIColor *color;
@property (weak, nonatomic) NSString *strColor;

@end
