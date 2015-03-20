//
//  PJRadioButton.h
//  RadioButtons
//
//  Created by Prajeet Shrestha on 3/12/15.
//  Copyright (c) 2015 Prajeet Shrestha. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PJRadioButton : UIButton

-(void)highlightedBorderInactiveState;
-(void)highlightedBorderActiveState;

-(void)buttonWithBeizerShadowActiveState;
-(void)buttonWithBeizerShadowInactiveState;

-(void)buttonWithShadowActive;
-(void)buttonWithShadowInactive;

-(void)buttonWithCircularSelectionActive;
-(void)buttonWithCircularSelectionInactive;
@end
