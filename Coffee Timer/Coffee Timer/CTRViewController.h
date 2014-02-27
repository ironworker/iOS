//
//  CTRViewController.h
//  Coffee Timer
//
//  Created by Matthew John on 10/15/13.
//  Copyright (c) 2013 Matthew John. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CTREditViewController.h"
#include "CTRTimerModel.h"
#import "CTRTimerDetailViewController.h"

@interface CTRViewController : UIViewController
@property (nonatomic, strong) CTRTimerModel *timerModel;
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;


@end
