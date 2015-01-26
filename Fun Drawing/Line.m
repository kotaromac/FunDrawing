//
//  Line.m
//  Fun Drawing
//
//  Created by Kotaro Yama on 1/18/15.
//  Copyright (c) 2015 Kotaro Yamamoto. All rights reserved.
//

#import "Line.h"

@implementation Line

- (id)initWithPoint: (CGPoint)startP end:(CGPoint)endP color:(UIColor *)color {
    self = [super init];
    lineColor = color;
    _start = startP;
    _end = endP;
    return self;
}

@end
