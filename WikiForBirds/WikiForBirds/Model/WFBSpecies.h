//
//  WFBSpecies.h
//  WikiForBirds
//
//  Created by 钱辰 on 15/1/2.
//  Copyright (c) 2015年 qianchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class WFBBird, WFBGenus;

@interface WFBSpecies : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * chineseName;
@property (nonatomic, retain) WFBGenus *genus;
@property (nonatomic, retain) NSSet *birds;
@end

@interface WFBSpecies (CoreDataGeneratedAccessors)

- (void)addBirdsObject:(WFBBird *)value;
- (void)removeBirdsObject:(WFBBird *)value;
- (void)addBirds:(NSSet *)values;
- (void)removeBirds:(NSSet *)values;

@end
