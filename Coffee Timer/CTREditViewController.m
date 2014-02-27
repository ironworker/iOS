//
//  CTREditViewController.m
//  Coffee Timer
//
//  Created by Matthew John on 1/17/14.
//  Copyright (c) 2014 Matthew John. All rights reserved.
//

#import "CTREditViewController.h"

@interface CTREditViewController ()

@end

@implementation CTREditViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
        
    NSInteger numberOfMinutes = self.timerModel.duration / 60;
    NSInteger numberOfSeconds = self.timerModel.duration % 60;
    
    self.nameField.text = self.timerModel.coffeeName;
    [self updateLabelsWithMinutes:numberOfMinutes seconds:numberOfSeconds];
    self.minutesSlider.value = numberOfMinutes;
    self.secondsSlider.value = numberOfSeconds;
  

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)cancelButtonWasPressed:(id)sender
{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:Nil];
}

-(IBAction)doneButtonWasPressed:(id)sender{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

-(void)updateLabelsWithMinutes:(NSInteger)numberOfMinutes
                        seconds:(NSInteger)numberOfSeconds
{
    if (numberOfMinutes == 1){
    
              self.minutesLabel.text = @"1 Minute";
    }
    else
    {
        self.minutesLabel.text =
        [NSString stringWithFormat:@"%d Minutes", numberOfMinutes];
    }
    
    if (numberOfSeconds == 1)
    {
        self.secondsLabel.text = @"1 Second";
    }
    else
    {
        self.secondsLabel.text =
        [NSString stringWithFormat:@"%d Seconds", numberOfSeconds];
    }
}

-(IBAction)sliderValueChanged:(id)sender
{
    NSInteger numberOfMinutes = (NSInteger)self.minutesSlider.value;
    NSInteger numberOfSeconds = (NSInteger)self.secondsSlider.value;
    
    [self updateLabelsWithMinutes:numberOfMinutes
                          seconds:numberOfSeconds];
}

@end
