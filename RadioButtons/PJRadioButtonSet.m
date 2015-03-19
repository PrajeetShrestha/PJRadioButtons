//
//  RadioButton.m
//  RadioButton
//
//  Created by Prajeet Shrestha on 9/11/14.
//  Copyright (c) 2014 Prajeet Shrestha. All rights reserved.
//

#import "RadioButton.h"
@implementation RadioButton
@synthesize initialBtnList;
@synthesize activeBtns,inactiveBtns;
@synthesize textValue;

- (instancetype)initWithButtons:(NSArray *)buttons
{
    self = [super init];
    if (self) {
        activeBtns=[[NSMutableArray alloc]init];
        inactiveBtns=[[NSMutableArray alloc]init];
        self.initialBtnList=[[NSMutableArray alloc]initWithArray:buttons];
        [self initialState];
    }
    return self;
}
-(void)initialState
{
    for (UIButton * btn in initialBtnList) {
        [self buttonInactiveState:btn];
    }
    inactiveBtns=[[NSMutableArray alloc]initWithArray:initialBtnList];
}
-(void)pushNpop:(UIButton *)sender
{
    if ([inactiveBtns containsObject:sender]) {
        if ([activeBtns lastObject]!=NULL) {
            [inactiveBtns addObject:[activeBtns lastObject]];
            [activeBtns removeAllObjects];
        }
        [activeBtns addObject:sender];
        UIButton *btn=[activeBtns lastObject];
        textValue=btn.titleLabel.text;
        
        [inactiveBtns removeObject:sender];
        
        
        for (UIButton *btn in inactiveBtns)
        {
            [self buttonInactiveState:btn];
            btn.userInteractionEnabled=YES;
        }
        for (UIButton *btn in activeBtns)
        {
            btn.userInteractionEnabled=NO;
            [self buttonActiveState:btn];
        }
    }
}
-(void)buttonInactiveState:(UIButton *)btn
{
    btn.layer.borderWidth=BORDER_WIDTH_INACTIVE;
    btn.layer.borderColor=[INACTIVE_COLOR CGColor];
    btn.layer.cornerRadius=BORDER_RADIUS;
    btn.tintColor=INACTIVE_COLOR;
    btn.backgroundColor=TEXTBACKGROUND;
    btn.clipsToBounds=YES;
}
-(void)buttonActiveState:(UIButton *)btn
{
    btn.layer.borderWidth=BORDER_WIDTH_ACTIVE;
    btn.layer.borderColor=[ACTIVE_COLOR CGColor];
    btn.layer.cornerRadius=BORDER_RADIUS;
    btn.tintColor=ACTIVE_COLOR;
    btn.backgroundColor=TEXTBACKGROUND;
    btn.clipsToBounds=YES;
}

@end
