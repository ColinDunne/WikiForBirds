//
//  WFBSpecies.h
//  WikiForBirds
//
//  Created by 钱辰 on 14/12/29.
//  Copyright (c) 2014年 qianchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class WFBBird, WFBGenus;

@interface WFBSpecies : NSManagedObject

@property (nonatomic, retain) NSString * species;
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
