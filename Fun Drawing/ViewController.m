//
//  ViewController.m
//  Fun Drawing
//
//  Created by Kotaro Yama on 1/18/15.
//  Copyright (c) 2015 Kotaro Yamamoto. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /* Set the background of self.view */
    self.view.backgroundColor = [UIColor colorWithRed:1 green:1 blue:0.94 alpha:1];
    
    /* Drawing View */
    drawingView = [[DrawingView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width,
                                                                self.view.bounds.size.height - 70)];
    backgroundColor = [UIColor colorWithRed:1.00 green:0.97 blue:0.86 alpha:1];
    drawingView.backgroundColor = backgroundColor;
    [self.view addSubview:drawingView];
    
    /* Clear Button */
    clearBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    image = [UIImage imageNamed:@"trashcan.png"];
    [clearBtn setImage:image forState:UIControlStateNormal];
    clearBtn.contentMode = UIViewContentModeScaleAspectFit;
    clearBtn.frame = CGRectMake(20, drawingView.frame.size.height + 10, 30, 55);
    [clearBtn addTarget:self action:@selector(clearDraw) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:clearBtn];
    
    /* Select black button */
    selectBlackBtn = [SelectColorButton buttonWithType:UIButtonTypeCustom];
    selectBlackBtn.frame = CGRectMake(self.view.bounds.size.width - 20, clearBtn.frame.origin.y - 5, 20, 70);
    selectBlackBtn.color = [UIColor blackColor];
    selectBlackBtn.strColor = @"black.png";
    image = [UIImage imageNamed:selectBlackBtn.strColor];
    [selectBlackBtn setImage:image forState:UIControlStateNormal];
    [selectBlackBtn addTarget:self action:@selector(selectColor:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:selectBlackBtn];
    
    /* Select blue button */
    selectPurpleBtn = [SelectColorButton buttonWithType:UIButtonTypeCustom];
    selectPurpleBtn.frame = CGRectMake(self.view.bounds.size.width - 40, clearBtn.frame.origin.y - 5, 20, 70);
    selectPurpleBtn.color = [UIColor purpleColor];
    selectPurpleBtn.strColor = @"purple.png";
    image = [UIImage imageNamed:selectPurpleBtn.strColor];
    [selectPurpleBtn setImage:image forState:UIControlStateNormal];
    [selectPurpleBtn addTarget:self action:@selector(selectColor:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:selectPurpleBtn];
    
    /* Select blue button */
    selectBlueBtn = [SelectColorButton buttonWithType:UIButtonTypeCustom];
    selectBlueBtn.frame = CGRectMake(self.view.bounds.size.width - 60, clearBtn.frame.origin.y - 5, 20, 70);
    selectBlueBtn.color = [UIColor blueColor];
    selectBlueBtn.strColor = @"blue.png";
    image = [UIImage imageNamed:selectBlueBtn.strColor];
    [selectBlueBtn setImage:image forState:UIControlStateNormal];
    [selectBlueBtn addTarget:self action:@selector(selectColor:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:selectBlueBtn];
    
    /* Select green button */
    selectGreenBtn = [SelectColorButton buttonWithType:UIButtonTypeCustom];
    selectGreenBtn.frame = CGRectMake(self.view.bounds.size.width - 80, clearBtn.frame.origin.y - 5, 20, 70);
    selectGreenBtn.color = [UIColor greenColor];
    selectGreenBtn.strColor = @"green.png";
    image = [UIImage imageNamed:selectGreenBtn.strColor];
    [selectGreenBtn setImage:image forState:UIControlStateNormal];
    [selectGreenBtn addTarget:self action:@selector(selectColor:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:selectGreenBtn];
    
    /* Select yellow button */
    selectYellowBtn = [SelectColorButton buttonWithType:UIButtonTypeCustom];
    selectYellowBtn.frame = CGRectMake(self.view.bounds.size.width - 100, clearBtn.frame.origin.y - 5, 20, 70);
    selectYellowBtn.color = [UIColor yellowColor];
    selectYellowBtn.strColor = @"yellow.png";
    image = [UIImage imageNamed:selectYellowBtn.strColor];
    [selectYellowBtn setImage:image forState:UIControlStateNormal];
    [selectYellowBtn addTarget:self action:@selector(selectColor:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:selectYellowBtn];
    
    /* Select orange button */
    selectOrangeBtn = [SelectColorButton buttonWithType:UIButtonTypeCustom];
    selectOrangeBtn.frame = CGRectMake(self.view.bounds.size.width - 120, clearBtn.frame.origin.y - 5, 20, 70);
    selectOrangeBtn.color = [UIColor orangeColor];
    selectOrangeBtn.strColor = @"orange.png";
    image = [UIImage imageNamed:selectOrangeBtn.strColor];
    [selectOrangeBtn setImage:image forState:UIControlStateNormal];
    [selectOrangeBtn addTarget:self action:@selector(selectColor:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:selectOrangeBtn];
    
    /* Select red button */
    selectRedBtn = [SelectColorButton buttonWithType:UIButtonTypeCustom];
    selectRedBtn.frame = CGRectMake(self.view.bounds.size.width - 140, clearBtn.frame.origin.y - 5, 20, 70);
    selectRedBtn.color = [UIColor redColor];
    selectRedBtn.strColor = @"red.png";
    image = [UIImage imageNamed:selectRedBtn.strColor];
    [selectRedBtn setImage:image forState:UIControlStateNormal];
    [selectRedBtn addTarget:self action:@selector(selectColor:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:selectRedBtn];
    
    /* Select eraser button */
    selectWhiteBtn = [SelectColorButton buttonWithType:UIButtonTypeCustom];
    CGRect newFrame = clearBtn.frame;
    newFrame.origin.x += 55;
    selectWhiteBtn.frame = CGRectMake(newFrame.origin.x, clearBtn.frame.origin.y, 30, 55);
    selectWhiteBtn.color = backgroundColor;
    image = [UIImage imageNamed:@"eraser"];
    selectWhiteBtn.contentMode = UIViewContentModeScaleAspectFit;
    [selectWhiteBtn setImage:image forState:UIControlStateNormal];
    [selectWhiteBtn addTarget:self action:@selector(selectColor:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:selectWhiteBtn];
    
    /* Save button */
    saveBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    newFrame.origin.x += 30;
    saveBtn.frame = CGRectMake(newFrame.origin.x, selectWhiteBtn.frame.origin.y - 7, 95, 70);
    image = [UIImage imageNamed:@"save"];
    saveBtn.contentMode = UIViewContentModeScaleAspectFit;
    [saveBtn setImage:image forState:UIControlStateNormal];
    [saveBtn addTarget:self action:@selector(saveAsPhoto) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:saveBtn];
    
}

- (void)clearDraw {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                    message:@"Clear ALL?"
                                                   delegate:self
                                          cancelButtonTitle:@"Cancel"
                                          otherButtonTitles:@"Clear ALL", nil];
    alert.delegate = self;
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
        drawingView->lines = nil;
        drawingView->lines = [[NSMutableArray alloc] init];
        [drawingView setNeedsDisplay];
    }
}

- (void)saveAsPhoto {
    UIGraphicsBeginImageContext(drawingView.bounds.size);
    [drawingView.layer renderInContext:UIGraphicsGetCurrentContext()];
    fromView = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    // Save the image
    UIImageWriteToSavedPhotosAlbum(fromView, self, @selector(savingImageIsFinished:didFinishSavingWithError:contextInfo:), nil);
}

- (void)savingImageIsFinished:(UIImage *)imaged didFinishSavingWithError:(NSError *)error contextInfo:(void*)contextInfo {
    if (error) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:@"Can't save the image"
                                                       delegate:nil
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"OK", nil];
        [alert show];
    } else {
        NSLog(@"The image has been saved!");
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Saved!"
                                                        message:nil
                                                       delegate:nil
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"OK", nil];
        [alert show];
    }
}



- (void)selectColor:(SelectColorButton *)sender {
    theColor = sender.color;
    [drawingView->linesColor addObject:theColor];
    [self performSelector:@selector(highlightButton:) withObject:sender afterDelay:0.0];
}



- (void)highlightButton:(UIButton *)button {
    if ([button isEqual:lastBtn] && btnFlag) {
        button.highlighted = NO;
        btnFlag = NO;
    } else {
        lastBtn.highlighted = NO;
        button.highlighted = YES;
        btnFlag = YES;
    }
    lastBtn = button;
}

@end
