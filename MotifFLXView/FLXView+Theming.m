//
//  FLXView+Theming.m
//  MotifFLXView
//
//  Created by Eric Horacek on 5/13/15.
//  Copyright (c) 2015 Eric Horacek. All rights reserved.
//

@import Motif;

#import "NSValueTransformer+MotifFLXPadding.h"

#import "FLXView+Theming.h"

@implementation FLXView (Theming)

+ (void)load {
    [self
        mtf_registerThemeProperty:@"direction"
        forKeyPath:NSStringFromSelector(@selector(direction))
        withValuesByKeyword:@{
           @"column": @(FLXDirectionColumn),
           @"row": @(FLXDirectionRow)
        }];

    [self
        mtf_registerThemeProperty:@"childAlignment"
        forKeyPath:NSStringFromSelector(@selector(childAlignment))
        withValuesByKeyword:@{
           @"start": @(FLXChildAlignmentStart),
           @"center": @(FLXChildAlignmentCenter),
           @"end": @(FLXChildAlignmentEnd),
           @"stretch": @(FLXChildAlignmentStretch)
       }];

    [self
        mtf_registerThemeProperty:@"justification"
        forKeyPath:NSStringFromSelector(@selector(justification))
        withValuesByKeyword:@{
           @"start": @(FLXJustificationStart),
           @"center": @(FLXJustificationCenter),
           @"end": @(FLXJustificationEnd),
           @"spaceBetween": @(FLXJustificationSpaceBetween),
           @"spaceAround": @(FLXJustificationSpaceAround)
       }];

    [self
        mtf_registerThemeProperty:@"paddingTop"
        requiringValueOfClass:NSNumber.class
        applierBlock:^(NSNumber *value, FLXView *view){
            FLXPadding padding = view.padding;
            padding.top = value.floatValue;
            view.padding = padding;
        }];

    [self
        mtf_registerThemeProperty:@"paddingRight"
        requiringValueOfClass:NSNumber.class
        applierBlock:^(NSNumber *value, FLXView *view){
            FLXPadding padding = view.padding;
            padding.right = value.floatValue;
            view.padding = padding;
        }];

    [self
        mtf_registerThemeProperty:@"paddingBottom"
        requiringValueOfClass:NSNumber.class
        applierBlock:^(NSNumber *value, FLXView *view){
            FLXPadding padding = view.padding;
            padding.bottom = value.floatValue;
            view.padding = padding;
        }];

    [self
        mtf_registerThemeProperty:@"paddingLeft"
        requiringValueOfClass:NSNumber.class
        applierBlock:^(NSNumber *paddingValue, FLXView *view){
            FLXPadding padding = view.padding;
            padding.left = paddingValue.floatValue;
            view.padding = padding;
        }];
}

@end
