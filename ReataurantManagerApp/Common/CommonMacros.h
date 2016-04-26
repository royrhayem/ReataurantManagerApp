//
//  CommonMacros.h
//  ReataurantManagerApp
//
//  Created by Roy Rhayem on 3/20/16.
//  Copyright © 2016 Roy Rhayem. All rights reserved.
//

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define BLUE_COLOR UIColorFromRGB(0x347BFF)
#define LIGHT_GRAY_COLOR UIColorFromRGB(0xC7C7C7)
#define GRAY_COLOR_F7F7F7 UIColorFromRGB(0xF7F7F7)
#define WHITE_COLOR UIColorFromRGB(0xFFFFFF)
#define GREEN_COLOR UIColorFromRGB(0x79BA3A)