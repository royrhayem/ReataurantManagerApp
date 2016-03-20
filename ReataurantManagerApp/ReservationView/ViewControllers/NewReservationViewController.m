//
//  NewReservationViewController.m
//  ReataurantManagerApp
//
//  Created by Roy Rhayem on 3/20/16.
//  Copyright © 2016 Roy Rhayem. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "NewReservationViewController.h"
#import "CommonMacros.h"
#import "Utilities.h"

@interface NewReservationViewController ()

@property (strong, nonatomic) IBOutlet UIButton *datePickerButton;
@property (strong, nonatomic) IBOutlet UIStepper *adultsStepper;
@property (strong, nonatomic) IBOutlet UIStepper *kidsStepper;

@property (strong, nonatomic) IBOutlet UITextField *fullNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *telephoneTextField;
@property (strong, nonatomic) IBOutlet UITextField *numberOfAdultsTextField;
@property (strong, nonatomic) IBOutlet UITextField *numberOfKidsTextField;
@property (strong, nonatomic) IBOutlet UITextView *noteTextArea;

@property (strong, nonatomic) IBOutlet UILabel *fullNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *telephoneLabel;
@property (strong, nonatomic) IBOutlet UILabel *numberOfAdultsLabel;
@property (strong, nonatomic) IBOutlet UILabel *numberOfKidsLabel;
@property (strong, nonatomic) IBOutlet UILabel *noteLabel;

@end

@implementation NewReservationViewController

- (NewReservationViewController *)initWithBranch :(NSString *)branchName
{
    self = [super init];
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:NO animated:NO];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self initDatePickerButton];
    [self initTextFields];
    [self initSteppers];
}

- (void)initSteppers
{
    _adultsStepper.value = 1;
    _adultsStepper.minimumValue = 0;
    _adultsStepper.continuous = YES;
    [_adultsStepper addTarget:self action:@selector(incrementValue:) forControlEvents:UIControlEventTouchDown];
    [_adultsStepper addTarget:self action:@selector(cancelIncrement) forControlEvents:UIControlEventTouchUpInside];
    [_adultsStepper addTarget:self action:@selector(cancelIncrement) forControlEvents:UIControlEventTouchUpOutside];

    _kidsStepper.value = 1;
    _kidsStepper.minimumValue = 0;
    _kidsStepper.continuous = YES;
    [_kidsStepper addTarget:self action:@selector(incrementValue:) forControlEvents:UIControlEventTouchDown];
    [_kidsStepper addTarget:self action:@selector(cancelIncrement) forControlEvents:UIControlEventTouchUpInside];
    [_kidsStepper addTarget:self action:@selector(cancelIncrement) forControlEvents:UIControlEventTouchUpOutside];
}

- (void)cancelIncrement
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
}

- (void)incrementValue :(UIStepper*)sender
{
    if(sender == _adultsStepper)
    {
         _numberOfAdultsTextField.text = [NSString stringWithFormat:@"%d", (int)sender.value];
    }
    else if(sender == _kidsStepper)
    {
         _numberOfKidsTextField.text = [NSString stringWithFormat:@"%d", (int)sender.value];
    }
    
    [self performSelector:@selector(incrementValue:) withObject:sender afterDelay:0.1];
}

- (void)initDatePickerButton
{
    _datePickerButton.layer.borderColor = LIGHT_GRAY_COLOR.CGColor;
    _datePickerButton.layer.borderWidth = 0.7f;
    
    [_datePickerButton setTitle:NSLocalizedString(@"RM_SELECT_RESERVATION_DATE", @"") forState:UIControlStateNormal];
    [_datePickerButton addTarget:self action:@selector(initDatePickerPopover) forControlEvents:UIControlEventTouchUpInside];
}

- (void)initTextFields
{
    _fullNameTextField.layer.borderColor = [LIGHT_GRAY_COLOR CGColor];
    _telephoneTextField.layer.borderColor = LIGHT_GRAY_COLOR.CGColor;
    _numberOfAdultsTextField.layer.borderColor = LIGHT_GRAY_COLOR.CGColor;
    _numberOfKidsTextField.layer.borderColor = LIGHT_GRAY_COLOR.CGColor;
    _noteTextArea.layer.borderColor = LIGHT_GRAY_COLOR.CGColor;
    
    _fullNameTextField.layer.borderWidth = 0.7f;
    _telephoneTextField.layer.borderWidth = 0.7f;
    _numberOfAdultsTextField.layer.borderWidth = 0.7f;
    _numberOfKidsTextField.layer.borderWidth = 0.7f;
    _noteTextArea.layer.borderWidth = 0.7f;
}

- (void)initDatePickerPopover
{
    UIViewController* popoverContent = [[UIViewController alloc] init];
    UIView *popoverView = [[UIView alloc] init];
    
    popoverView.backgroundColor = [UIColor clearColor];
    
    UIDatePicker *datePicker = [[UIDatePicker alloc]init];
    datePicker.frame=CGRectMake(0,44,320, 216);
    datePicker.datePickerMode = UIDatePickerModeDateAndTime;
    
    [datePicker setMinuteInterval:5];
    [datePicker addTarget:self action:@selector(datePicked:) forControlEvents:UIControlEventValueChanged];
    [popoverView addSubview:datePicker];
    
    popoverContent.view = popoverView;
    UIPopoverController *popoverController = [[UIPopoverController alloc] initWithContentViewController:popoverContent];
    popoverController.delegate = self;
    
    [[[popoverController contentViewController] view] setAlpha:1.0f];
    [popoverController setPopoverContentSize:CGSizeMake(320, 264) animated:NO];
    [popoverController presentPopoverFromRect:_datePickerButton.frame inView:self.view permittedArrowDirections:UIPopoverArrowDirectionUp animated:YES];
}

- (void)datePicked :(UIDatePicker*)datePicker
{
    NSDate *datePicked = datePicker.date;
    [_datePickerButton setTitle:[Utilities convertDateTostring:datePicked] forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
