//
//  ViewController.m
//  ReataurantManagerApp
//
//  Created by Roy Rhayem on 3/20/16.
//  Copyright © 2016 Roy Rhayem. All rights reserved.
//

#import "ViewController.h"
#import "MainSelectionViewController.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UIButton *goToButton;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initGoToButton];
}

- (void)initGoToButton
{
    [_goToButton addTarget:self action:@selector(goToSelectionView) forControlEvents:UIControlEventTouchUpInside];
}

- (void)goToSelectionView
{
    MainSelectionViewController *mainView = [[MainSelectionViewController alloc] initMainSelection];
    [self.navigationController pushViewController:mainView animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
