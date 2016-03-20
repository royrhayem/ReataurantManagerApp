//
//  NewReservationViewController.h
//  ReataurantManagerApp
//
//  Created by Roy Rhayem on 3/20/16.
//  Copyright © 2016 Roy Rhayem. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewReservationViewController : UIViewController <UIPopoverControllerDelegate>

- (NewReservationViewController *)initWithBranch :(NSString *)branchName;

@end
