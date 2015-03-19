//
//  RadioButton.m
//  RadioButton
//
//  Created by Prajeet Shrestha on 9/11/14.
//  Copyright (c) 2014 Prajeet Shrestha. All rights reserved.
//

#import "PJRadioButtonSet.h"
#import "PJRadioButton.h"

@implementation PJRadioButtonSet

@synthesize initialBtnList;
@synthesize activeBtns,inactiveBtns;
@synthesize value;

- (instancetype)initWithButtons:(NSArray *)buttons
{
    self = [super init];
    
    if (self)
    {
        activeBtns=[NSMutableArray new];
        
        inactiveBtns=[NSMutableArray new];
        
        self.initialBtnList=[[NSMutableArray alloc]initWithArray:buttons];
        
        [self initialState];
        
        
    }
    return self;
}
-(void)initialState
{
    for (PJRadioButton *btn in initialBtnList)
    {
        [btn inactiveState];
        
        [btn addTarget:self action:@selector(pushNpop:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    inactiveBtns=[[NSMutableArray alloc]initWithArray:initialBtnList];
}
-(void)pushNpop:(UIButton *)sender
{
    if ([inactiveBtns containsObject:sender])
    {
        if ([activeBtns lastObject]!=NULL)
        {
            [inactiveBtns addObject:[activeBtns lastObject]];
            
            [activeBtns removeAllObjects];
        }
        [activeBtns addObject:sender];
        
        UIButton *btn=[activeBtns lastObject];
        
        value=btn.titleLabel.text;
        
        [inactiveBtns removeObject:sender];
        
        
        for (UIButton *btn in inactiveBtns)
        {
            [(PJRadioButton *)btn inactiveState];
            
            btn.userInteractionEnabled=YES;
        }
        
        for (UIButton *btn in activeBtns)
        {
            btn.userInteractionEnabled=NO;
            
            [(PJRadioButton *)btn activeState];
        }
    }
}


@end
