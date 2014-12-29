//
//  WFBOrder.h
//  WikiForBirds
//
//  Created by 钱辰 on 14/12/29.
//  Copyright (c) 2014年 qianchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class WFBFamily;

@interface WFBOrder : NSManagedObject

@property (nonatomic, retain) NSString * order;
@property (nonatomic, retain) NSString * chineseName;
@property (nonatomic, retain) NSSet *families;
@end

@interface WFBOrder (CoreDataGeneratedAccessors)

- (void)addFamiliesObject:(WFBFamily *)value;
- (void)removeFamiliesObject:(WFBFamily *)value;
- (void)addFamilies:(NSSet *)values;
- (void)removeFamilies:(NSSet *)values;

@end
