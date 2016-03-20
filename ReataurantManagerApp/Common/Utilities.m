//
//  Utilities.m
//  ReataurantManagerApp
//
//  Created by Roy Rhayem on 3/20/16.
//  Copyright © 2016 Roy Rhayem. All rights reserved.
//

#import "Utilities.h"

@implementation Utilities

+ (NSString *) convertDateTostring:(NSDate *)date
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];

    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    
    NSString *dateStr = [formatter stringFromDate:date];
    
    return dateStr;
}

@end
