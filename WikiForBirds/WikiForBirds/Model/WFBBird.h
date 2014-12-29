//
//  WFBBird.h
//  WikiForBirds
//
//  Created by 钱辰 on 14/12/29.
//  Copyright (c) 2014年 qianchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class WFBSpecies;

@interface WFBBird : NSManagedObject

@property (nonatomic, retain) NSString * bird;
@property (nonatomic, retain) NSString * chineseName;
@property (nonatomic, retain) NSString * thumbnailImage;
@property (nonatomic, retain) WFBSpecies *species;

@end
