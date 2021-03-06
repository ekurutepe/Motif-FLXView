//
//  NSValueTransformer+MotifFLXPadding.h
//  MotifFLXView
//
//  Created by Eric Horacek on 5/19/15.
//  Copyright (c) 2015 Eric Horacek. All rights reserved.
//

@import Foundation;

@interface NSValueTransformer (MotifFLXPadding)

@end

/**
 The name of the value transformer responsible for transforming an NSNumber to
 a NSValue wrapping a FLXPadding struct.
 */
extern NSString * const MTFFLXPaddingFromNumberTransformerName;

/**
 The name of the value transformer responsible for transforming an NSArray to
 a NSValue wrapping a FLXPadding struct.
 */
extern NSString * const MTFFLXPaddingFromArrayTransformerName;

/**
 The name of the value transformer responsible for transforming an NSDictionary
 to a NSValue wrapping a FLXPadding struct.
 */
extern NSString * const MTFFLXPaddingFromDictionaryTransformerName;
