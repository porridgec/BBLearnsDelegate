//
//  BBSquareView.h
//  BBLearnsDelegate
//
//  Created by Hahn.Chan on 7/18/14.
//  Copyright (c) 2014 Hahn.Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BBSquareView;
@protocol BBAnimationDelegate <NSObject>

@optional
- (void) animationBBSquareView:(BBSquareView *) squareView didFinishAnimationWithStatus:(NSDictionary *)status;

@end

@interface BBSquareView : UIView

@property (weak, nonatomic) id <BBAnimationDelegate> delegate;
- (void) run;

@end
