//
//  BBSquareView.m
//  BBLearnsDelegate
//
//  Created by Hahn.Chan on 7/18/14.
//  Copyright (c) 2014 Hahn.Chan. All rights reserved.
//

#import "BBSquareView.h"

@implementation BBSquareView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void) run
{
    [UIView animateWithDuration:2.0 animations:^{
        CGRect newFrame = CGRectMake(self.frame.origin.x + 150,
                                     self.frame.origin.y,
                                     self.frame.size.width,
                                     self.frame.size.height);
        self.frame = newFrame;
        self.alpha = 0.5;
    } completion:^(BOOL finished) {
        // do something later..
        if ([_delegate respondsToSelector:@selector(animationBBSquareView:didFinishAnimationWithStatus:)])
        {
            NSDictionary* currentStatus = @{@"status": @"finished"};
            [_delegate animationBBSquareView:self didFinishAnimationWithStatus:currentStatus ];
        }
    }];
}

@end
