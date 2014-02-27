//
//  CTREditViewController.h
//  Coffee Timer
//
//  Created by Matthew John on 1/17/14.
//  Copyright (c) 2014 Matthew John. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CTRTimerModel.h"

@interface CTREditViewController : UIViewController

@property(nonatomic, strong)CTRTimerModel *timerModel;
@property(nonatomic, strong)IBOutlet UITextField *nameField;
@property(nonatomic, strong)IBOutlet UILabel *minutesLabel;
@property(nonatomic, strong)IBOutlet UILabel *secondsLabel;
@property(nonatomic, strong)IBOutlet UISlider *minutesSlider;
@property(nonatomic, strong)IBOutlet UISlider *secondsSlider;
-(IBAction)sliderValueChanged:(id)sender;
-(IBAction)cancelButtonWasPressed:(id)sender;
-(IBAction)doneButtonWasPressed:(id)sender;


@end
