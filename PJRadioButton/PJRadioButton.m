//
//  PJRadioButton.m
//  RadioButtons
//
//  Created by Prajeet Shrestha on 3/12/15.
//  Copyright (c) 2015 Prajeet Shrestha. All rights reserved.
//

#import "PJRadioButton.h"

@implementation PJRadioButton 

-(void)awakeFromNib
{
    self.clipsToBounds = YES;
}
-(void)activeState
{
    self.layer.borderWidth = kActivePJButtonBorderWidth;
    self.layer.borderColor = kActivePJButtonBorderColor;
    self.layer.cornerRadius = kActivePJButtonCornerRadius;
    self.tintColor = kActivePJButtonTintColor;
    self.backgroundColor = kActivePJButtonBackgroundColor;
}

-(void)inactiveState
{
    self.layer.borderWidth = kInActivePJButtonBorderWidth;
    self.layer.borderColor = kInActivePJButtonBorderColor;
    self.layer.cornerRadius = kInActivePJButtonCornerRadius;
    self.tintColor = kInActivePJButtonTintColor;
    self.backgroundColor = kInActivePJButtonBackgroundColor;
}
@end
