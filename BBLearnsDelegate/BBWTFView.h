//
//  BBWTFView.h
//  BBLearnsDelegate
//
//  Created by Hahn.Chan on 7/18/14.
//  Copyright (c) 2014 Hahn.Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BBWTFView;

@protocol BBWTFdelegate <NSObject>

@optional
-(void) buttonPressed;

@end

@interface BBWTFView : UIView

@property (strong, nonatomic) UIButton *aButton;

@property (weak, nonatomic) id <BBWTFdelegate> bbWTFDelegate;

- (void) bbrun;

@end
