//
//  ViewController.h
//  RadioButtons
//
//  Created by Prajeet Shrestha on 3/12/15.
//  Copyright (c) 2015 Prajeet Shrestha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PJRadioButton.h"
#import "PJRadioButtonSet.h"
@interface ViewController : UIViewController


@property (strong, nonatomic) IBOutletCollection(PJRadioButton) NSArray *topRadioButtonCollections;


@property (strong, nonatomic) IBOutletCollection(PJRadioButton) NSArray *centerRadioButtonCollections;

@property (strong, nonatomic) IBOutletCollection(PJRadioButton) NSArray *bottomRadioButtonCollections;

@end

