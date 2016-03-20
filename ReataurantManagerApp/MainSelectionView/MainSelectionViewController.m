//
//  MainSelectionViewController.m
//  ReataurantManagerApp
//
//  Created by Roy Rhayem on 3/20/16.
//  Copyright © 2016 Roy Rhayem. All rights reserved.
//

#import "MainSelectionViewController.h"
#import "NewReservationViewController.h"

@interface MainSelectionViewController ()

@property (strong, nonatomic) IBOutlet UIButton *firstBranchButton;
@property (strong, nonatomic) IBOutlet UIButton *secondBranchButton;

@end

@implementation MainSelectionViewController

- (MainSelectionViewController *)initMainSelection
{
    self = [super init];
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES animated:NO];
    
    [self initFirstBranchButton];
    [self initSecondBranchButton];
}

- (void)initFirstBranchButton
{
    UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"FunZoneLogo.png"]];
    image.frame = CGRectMake(40, 35, 130, 130);
    image.contentMode = UIViewContentModeScaleAspectFit;
    
    _firstBranchButton.backgroundColor = [UIColor clearColor];
    _firstBranchButton.layer.borderColor = [UIColor groupTableViewBackgroundColor].CGColor;
    _firstBranchButton.layer.borderWidth = 1.0f;
    
    [_firstBranchButton addSubview:image];
    [_firstBranchButton addTarget:self action:@selector(goToFirstBranch) forControlEvents:UIControlEventTouchUpInside];
}

- (void)initSecondBranchButton
{
    UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"SportsZoneLogo"]];
    image.frame = CGRectMake(35, 35, 130, 130);
    image.contentMode = UIViewContentModeScaleAspectFit;
    
    _secondBranchButton.backgroundColor = [UIColor clearColor];
    _secondBranchButton.layer.borderColor = [UIColor groupTableViewBackgroundColor].CGColor;
    _secondBranchButton.layer.borderWidth = 1.0f;
    
    [_secondBranchButton addSubview:image];
}

- (void)goToFirstBranch
{
    NewReservationViewController *viewController = [[NewReservationViewController alloc] initWithBranch:@"FunZone"];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
