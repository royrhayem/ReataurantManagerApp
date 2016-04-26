//
//  ReservationLocal.m
//  ReataurantManagerApp
//
//  Created by Roy Rhayem on 3/24/16.
//  Copyright © 2016 Roy Rhayem. All rights reserved.
//

#import "ReservationLocal.h"

@implementation ReservationLocal

@synthesize reservationDate;
@synthesize fullName;
@synthesize telephoneNumber;
@synthesize numberOfAdults;
@synthesize numberOfKids;
@synthesize tables;
@synthesize note;
@synthesize isBirthday;


-(id)copyWithZone:(NSZone *)zone
{
    ReservationLocal *reservationLocal = [[ReservationLocal allocWithZone: zone] init];
    
    reservationLocal.reservationDate = self.reservationDate;
    reservationLocal.fullName = self.fullName;
    reservationLocal.telephoneNumber = self.telephoneNumber;
    reservationLocal.numberOfAdults = self.numberOfAdults;
    reservationLocal.numberOfKids = self.numberOfKids;
    reservationLocal.tables = self.tables;
    reservationLocal.isBirthday = self.isBirthday;

    return reservationLocal;
}

@end
