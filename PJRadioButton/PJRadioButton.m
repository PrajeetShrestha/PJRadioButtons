//
//  PJRadioButton.m
//  RadioButtons
//
//  Created by Prajeet Shrestha on 3/12/15.
//  Copyright (c) 2015 Prajeet Shrestha. All rights reserved.
//

#import "PJRadioButton.h"
@interface PJRadioButton()
{
    UIImageView *selectionImage;
}

@end

@implementation PJRadioButton


-(void)awakeFromNib
{
    self.clipsToBounds = YES;
    selectionImage = [[UIImageView alloc]init];
    
}
-(void)highlightedBorderActiveState
{
    self.layer.borderWidth = 1.0f;
    self.layer.borderColor = [UIColor blueColor].CGColor;
    self.layer.cornerRadius = 3.0f;
    self.tintColor = [UIColor blueColor];
    self.backgroundColor = [UIColor whiteColor];
}

-(void)highlightedBorderInactiveState
{
    self.layer.borderWidth = 1.0f;
    self.layer.borderColor = [UIColor grayColor].CGColor;
    self.layer.cornerRadius = 3.0f;
    self.tintColor = [UIColor grayColor];
    self.backgroundColor = [UIColor whiteColor];
}

-(void)buttonWithBeizerShadowActiveState
{
    [self.layer setShadowColor:[UIColor redColor].CGColor];
    [self.layer setShadowOpacity:0.5];
    [self.layer setShadowRadius:1.2];
    UIBezierPath *selfBezierPath =
    [UIBezierPath bezierPathWithRect:CGRectMake(1, 4,self.frame.size.width + 2, self.frame.size.height + 4)];
    [self.layer setShadowPath:selfBezierPath.CGPath];
    
    self.tintColor = [UIColor whiteColor];
}

-(void)buttonWithBeizerShadowInactiveState
{
    [self.layer setShadowColor:[UIColor blackColor].CGColor];
    [self.layer setShadowOpacity:0.5];
    [self.layer setShadowRadius:1.2];
    UIBezierPath *selfBezierPath =
    [UIBezierPath bezierPathWithRect:CGRectMake(1, 4,self.frame.size.width + 2, self.frame.size.height + 4)];
    
    [self.layer setShadowPath:selfBezierPath.CGPath];
    
    self.tintColor = [UIColor whiteColor];
}

-(void)buttonWithShadowActive
{
    self.layer.masksToBounds = NO;
    self.layer.shadowColor = [UIColor redColor].CGColor;
    self.layer.shadowOpacity = 0.5;
    self.layer.shadowRadius = 2;
    self.backgroundColor = [UIColor whiteColor];
    self.layer.shadowOffset = CGSizeMake(1.0f, 1.0f);
    self.tintColor = [UIColor redColor];
}

-(void)buttonWithShadowInactive
{
 
    self.layer.masksToBounds = NO;
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowOpacity = 0.5;
    self.layer.shadowRadius = 2;
    self.backgroundColor = [UIColor whiteColor];
    self.layer.shadowOffset = CGSizeMake(1.0f, 1.0f);
    self.tintColor = [UIColor blackColor];
    [self setImage:nil forState:UIControlStateNormal];

}

-(void)buttonWithCircularSelectionActive
{
    //Calculate the size of the image view
    CGFloat offset = 5;
    CGRect rect = self.frame;
    rect.size = CGSizeMake(rect.size.height-offset, rect.size.height-offset);
    rect.origin = CGPointMake(rect.origin.x-rect.size.height-offset, rect.origin.y-offset);
    
    selectionImage.image = [UIImage imageNamed:@"tick.png"];
    
    selectionImage.frame = rect;
    
    [self.superview addSubview:selectionImage];
}

-(void)buttonWithCircularSelectionInactive
{
    selectionImage.image = nil;
    
}
@end
