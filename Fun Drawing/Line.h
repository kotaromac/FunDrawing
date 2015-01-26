//
//  Line.h
//  Fun Drawing
//
//  Created by Kotaro Yama on 1/18/15.
//  Copyright (c) 2015 Kotaro Yamamoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Line : NSObject
{
    @public
    UIColor *lineColor;
}

@property CGPoint start;
@property CGPoint end;

- (id)initWithPoint: (CGPoint)startP end:(CGPoint)endP color:(UIColor *)color;

@end
