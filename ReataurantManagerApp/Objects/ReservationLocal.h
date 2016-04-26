//
//  ReservationLocal.h
//  ReataurantManagerApp
//
//  Created by Roy Rhayem on 3/24/16.
//  Copyright © 2016 Roy Rhayem. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ReservationLocal : NSObject
{
    NSDate *reservationDate;
    NSString *fullName;
    NSString *telephoneNumber;
    NSNumber *numberOfAdults;
    NSNumber *numberOfKids;
    NSArray *tables;
    NSString *note;
    BOOL isBirthday;
}

@property (nonatomic,strong) NSDate *reservationDate;
@property (nonatomic,strong) NSString *fullName;
@property (nonatomic,strong) NSString *telephoneNumber;
@property (nonatomic,strong) NSNumber *numberOfAdults;
@property (nonatomic,strong) NSNumber *numberOfKids;
@property (nonatomic,strong) NSArray *tables;
@property (nonatomic,strong) NSString *note;

@property (assign) BOOL isBirthday;

@end
