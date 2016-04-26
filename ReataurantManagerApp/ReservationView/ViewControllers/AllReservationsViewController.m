//
//  AllReservationsViewController.m
//  ReataurantManagerApp
//
//  Created by Roy Rhayem on 3/25/16.
//  Copyright © 2016 Roy Rhayem. All rights reserved.
//

#import "AllReservationsViewController.h"
#import "ReservationTableViewCell.h"
#import "CommonMacros.h"

@interface AllReservationsViewController ()

@property (nonatomic, strong) IBOutlet UITableView *table;

@end

@implementation AllReservationsViewController

- (AllReservationsViewController *)initWithReservationsList :(NSMutableArray *)reservations
{
    self = [super init];
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    _table.backgroundColor = [UIColor clearColor];
    _table.tableHeaderView.frame = CGRectMake(0, 0, 0, 0);
    _table.sectionHeaderHeight = 0.1f;
    _table.sectionFooterHeight = 0.1f;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

/////////// Table View Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 1.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 40.0f;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, _table.frame.size.width, 40.0)];
    view.backgroundColor = [UIColor whiteColor];
    
//    UILabel *manufacturerLabel = [[UILabel alloc] initWithFrame:CGRectMake(16.0, 11.0, 184.0, 27.0)];
//    UILabel *productNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(215.0, 11.0, 325.0, 27.0)];
//    UILabel *expectedHeaderLabel = [[UILabel alloc] initWithFrame:CGRectMake(570.0, 11.0, 82.0, 27.0)];
//    UILabel *scannedHeaderLabel = [[UILabel alloc] initWithFrame:CGRectMake(678.0, 11.0, 82.0, 27.0)];
//    UILabel *varianceLabel = [[UILabel alloc] initWithFrame:CGRectMake(786.0, 11.0, 82.0, 27.0)];
//    
//    manufacturerLabel.text = NSLocalizedString(@"MH_MANUFACTURER_CAPITAL", @"");
//    productNameLabel.text = NSLocalizedString(@"MH_PROD_COL", @"");
//    expectedHeaderLabel.text = [rfidCount.isIncremental boolValue] ? @"" : NSLocalizedString(@"MH_EXPECTED", @"");
//    scannedHeaderLabel.text = NSLocalizedString(@"MH_SCANNED", @"");
//    varianceLabel.text = [rfidCount.isIncremental boolValue] ? @"" : NSLocalizedString(@"MH_VARIANCE", @"");
//    
//    manufacturerLabel.textAlignment = NSTextAlignmentLeft;
//    productNameLabel.textAlignment = NSTextAlignmentLeft;
//    expectedHeaderLabel.textAlignment = NSTextAlignmentRight;
//    scannedHeaderLabel.textAlignment = NSTextAlignmentRight;
//    varianceLabel.textAlignment = NSTextAlignmentRight;
//    
//    manufacturerLabel.font = [UIFont boldSystemFontOfSize:16.0];
//    productNameLabel.font = [UIFont boldSystemFontOfSize:16.0];
//    expectedHeaderLabel.font = [UIFont boldSystemFontOfSize:16.0];
//    scannedHeaderLabel.font = [UIFont boldSystemFontOfSize:16.0];
//    varianceLabel.font = [UIFont boldSystemFontOfSize:16.0];
//    
//    [view addSubview:manufacturerLabel];
//    [view addSubview:productNameLabel];
//    [view addSubview:expectedHeaderLabel];
//    [view addSubview:scannedHeaderLabel];
//    [view addSubview:varianceLabel];
    
    return view;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"ReservationTableViewCell";
    
    ReservationTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    
    if (cell == nil)
    {
        cell = [[ReservationTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MyIdentifier];
    }
    
    NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ReservationTableViewCell" owner:self options:nil];
    cell = [nib objectAtIndex:0];
    
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
    return cell;
}

@end
