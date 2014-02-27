//
//  CTRViewController.m
//  Coffee Timer
//
//  Created by Matthew John on 10/15/13.
//  Copyright (c) 2013 Matthew John. All rights reserved.
//

#import "CTRViewController.h"

@interface CTRViewController ()

@property (nonatomic, strong) IBOutlet UILabel *label;
@property (nonatomic, strong) IBOutlet UISlider *slider;
@property (nonatomic, strong) IBOutlet UIProgressView *progressView;

@end

@implementation CTRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"View Loaded");
    [self setupModel];
    self.title =@"Root";
    //change background color
    //self.view.backgroundColor = [UIColor orangeColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)buttonWasPressed:(id)sender
{
    //IBAction is actually returning void. 
    NSLog(@"Button was pressed");
    NSDate * date = [NSDate date];
    self.label.text = [NSString stringWithFormat:@"Button pressed at %@", date];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"Preparing for segue with identifier:%@", segue.identifier);
    if ([segue.identifier isEqualToString:@"pushDetail"])
    {
        CTRTimerDetailViewController *viewController =
        segue.destinationViewController;
        viewController.timerModel = self.timerModel;
    }
    else if ([segue.identifier isEqualToString:@"editDetail"])
    {
        UINavigationController *navigationController =
        segue.destinationViewController;
        CTREditViewController *viewController =
        (CTREditViewController *)(navigationController.topViewController\
                                       );
        viewController.timerModel = self.timerModel;
    }


}
-(void)setupModel
{
    self.timerModel = [[CTRTimerModel alloc] initWithCoffeeName:@"Columbian Coffee" duration:240];
}

-(void)updateUserInterface{
    self.label.text = self.timerModel.coffeeName;
}

//override setter for timerModel
-(void)setTimerModel:(CTRTimerModel *)timerModel
{
    
    _timerModel= timerModel;
    [self updateUserInterface];
}
@end
