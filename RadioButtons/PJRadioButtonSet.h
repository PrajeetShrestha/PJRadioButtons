//
//  RadioButton.h
//  RadioButton
//
//  Created by Prajeet Shrestha on 9/11/14.
//  Copyright (c) 2014 Prajeet Shrestha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RadioButton : NSObject

@property (nonatomic,strong)NSMutableArray *initialBtnList;
@property(nonatomic,strong)NSMutableArray *activeBtns;
@property(nonatomic,strong)NSMutableArray *inactiveBtns;
@property(nonatomic,strong)NSString *textValue;

- (instancetype)initWithButtons:(NSArray *)buttons;
-(void)pushNpop:(UIButton *)sender;
@end
