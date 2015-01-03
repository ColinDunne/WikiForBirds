//
//  WFBOrder.h
//  WikiForBirds
//
//  Created by 钱辰 on 15/1/2.
//  Copyright (c) 2015年 qianchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class WFBFamily;

@interface WFBOrder : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * chineseName;
@property (nonatomic, retain) NSSet *families;
@end

@interface WFBOrder (CoreDataGeneratedAccessors)

- (void)addFamiliesObject:(WFBFamily *)value;
- (void)removeFamiliesObject:(WFBFamily *)value;
- (void)addFamilies:(NSSet *)values;
- (void)removeFamilies:(NSSet *)values;

+ (NSString *)entityName;
+ (instancetype)insertNewObjectInManagedObjectContext:(NSManagedObjectContext *)moc;

@end
