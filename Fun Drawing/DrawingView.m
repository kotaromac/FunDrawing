//
//  DrawingView.m
//  Fun Drawing
//
//  Created by Kotaro Yama on 1/18/15.
//  Copyright (c) 2015 Kotaro Yamamoto. All rights reserved.
//

#import "DrawingView.h"

@implementation DrawingView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        linesColor = [[NSMutableArray alloc] initWithObjects:[UIColor blackColor], nil];
        lines = [[NSMutableArray alloc] init];
        self.userInteractionEnabled = YES;
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    startPoint = [touch locationInView:self];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    endPoint = [touch locationInView:self];
    [lines addObject:[[Line alloc] initWithPoint:startPoint end:endPoint color:[linesColor lastObject]]];
    startPoint = endPoint;
    
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineCap(context, kCGLineCapRound);
    for (Line *line in lines) {
        CGContextMoveToPoint(context, line.start.x, line.start.y);
        CGContextAddLineToPoint(context, line.end.x, line.end.y);
        CGContextSetStrokeColorWithColor(context, line->lineColor.CGColor);
        CGContextSetLineWidth(context, 8);
        CGContextStrokePath(context);
    }
}

@end
