//
//  IQCropSelectionBeginView.m
// https://github.com/hackiftekhar/IQAudioRecorderController
// Created by Iftekhar Qurashi
// Copyright (c) 2015-16 Iftekhar Qurashi
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "IQCropSelectionBeginView.h"

@implementation IQCropSelectionBeginView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        timeLabel.textAlignment = NSTextAlignmentRight;
    }
    return self;
}

-(void)layoutSubviews
{
    [super layoutSubviews];

    static CGFloat timeLabelheight = 20;
    
    lineView.frame =CGRectMake(CGRectGetMidX(self.bounds), timeLabelheight, CGRectGetWidth(lineView.frame), CGRectGetHeight(self.bounds)-timeLabelheight*2);

    smallLineView.frame =CGRectMake(CGRectGetMidX(lineView.frame), CGRectGetMaxY(lineView.frame)-CGRectGetWidth(lineView.frame), CGRectGetWidth(self.bounds)/2, CGRectGetWidth(lineView.frame));

    timeLabel.frame = CGRectMake(-20, 0, 45, timeLabelheight);
//    timeLabel.frame = CGRectMake(0, 0, CGRectGetWidth(self.bounds), timeLabelheight);
}

@end
