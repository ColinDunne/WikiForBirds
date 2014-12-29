//
//  WFBFamily.h
//  WikiForBirds
//
//  Created by 钱辰 on 14/12/29.
//  Copyright (c) 2014年 qianchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class WFBGenus, WFBOrder;

@interface WFBFamily : NSManagedObject

@property (nonatomic, retain) NSString * family;
@property (nonatomic, retain) NSString * chineseName;
@property (nonatomic, retain) WFBOrder *ordo;
@property (nonatomic, retain) NSSet *genera;
@end

@interface WFBFamily (CoreDataGeneratedAccessors)

- (void)addGeneraObject:(WFBGenus *)value;
- (void)removeGeneraObject:(WFBGenus *)value;
- (void)addGenera:(NSSet *)values;
- (void)removeGenera:(NSSet *)values;

@end
