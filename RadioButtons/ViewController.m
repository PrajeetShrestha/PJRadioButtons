//
//  ViewController.m
//  RadioButtons
//
//  Created by Prajeet Shrestha on 3/12/15.
//  Copyright (c) 2015 Prajeet Shrestha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    PJRadioButtonSet *topSet;
    PJRadioButtonSet *centerSet;
    PJRadioButtonSet *bottomSet;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    topSet = [[PJRadioButtonSet alloc]initWithButtons:self.topRadioButtonCollections];
    
    centerSet = [[PJRadioButtonSet alloc]initWithButtons:self.centerRadioButtonCollections];
    
    bottomSet = [[PJRadioButtonSet alloc]initWithButtons:self.bottomRadioButtonCollections];
}


- (IBAction)getValues:(id)sender {
    
    NSLog(@"\nBtnset Value : %@\nCenterSet value : %@ \nBottomButton Value: %@",topSet.value ,centerSet.value,bottomSet.value);
}

@end
