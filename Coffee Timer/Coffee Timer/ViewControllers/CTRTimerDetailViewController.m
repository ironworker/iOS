//
//  CTRTimerDetailViewController.m
//  Coffee Timer
//
//  Created by Matthew John on 10/28/13.
//  Copyright (c) 2013 Matthew John. All rights reserved.
//

#import "CTRTimerDetailViewController.h"

@interface CTRTimerDetailViewController ()
@property (nonatomic, strong) IBOutlet UILabel *durationLabel;
@end

@implementation CTRTimerDetailViewController

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
    self.title = self.timerModel.coffeeName;
    self.durationLabel.text = [NSString
                                stringWithFormat:@"%d min %d sec",
                                self.timerModel.duration / 60,
                                self.timerModel.duration % 60];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
