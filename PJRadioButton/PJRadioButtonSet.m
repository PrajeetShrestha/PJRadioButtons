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
        //[btn highlightedBorderInactiveState];
        //[btn buttonWithBeizerShadowInactiveState];
        //[btn buttonWithShadowInactive];
        [btn buttonWithCircularSelectionInactive];
        
        [btn addTarget:self action:@selector(pushNpop:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    inactiveBtns=[[NSMutableArray alloc]initWithArray:initialBtnList];
}
-(void)pushNpop:(UIButton *)sender
{
    if ([activeBtns lastObject] != NULL)
    {
        [inactiveBtns addObject:[activeBtns lastObject]];
        
        [activeBtns removeAllObjects];
    }
    
    [activeBtns addObject:sender];
    
    [self setActiveStateForSelectedButtonAndSetValue:sender];
    
    [inactiveBtns removeObject:sender];
    
    [self setInactiveStateForInactiveButtons];
    
}

-(void)setActiveStateForSelectedButtonAndSetValue:(id)sender
{
    PJRadioButton *activebutton = (PJRadioButton *)sender;
    
    activebutton.userInteractionEnabled=NO;
    
    //[activebutton highlightedBorderActiveState];
    //[activebutton buttonWithBeizerShadowActiveState];
    [activebutton buttonWithCircularSelectionActive];
    
    value = activebutton.titleLabel.text;
}


-(void)setInactiveStateForInactiveButtons
{
    for (PJRadioButton *btn in inactiveBtns)
    {
        //[btn highlightedBorderInactiveState];
        //[btn buttonWithBeizerShadowInactiveState];
        //[btn  buttonWithShadowInactive];
        [btn buttonWithCircularSelectionInactive];
        
        btn.userInteractionEnabled=YES;
    }
}



@end
