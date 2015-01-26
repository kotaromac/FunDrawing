//
//  DrawingView.h
//  Fun Drawing
//
//  Created by Kotaro Yama on 1/18/15.
//  Copyright (c) 2015 Kotaro Yamamoto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Line.h"

@interface DrawingView : UIView
{
    @public
    NSMutableArray *lines;
    NSMutableArray *linesColor;
    @private
    CGPoint startPoint;
    CGPoint endPoint;
}

@end
