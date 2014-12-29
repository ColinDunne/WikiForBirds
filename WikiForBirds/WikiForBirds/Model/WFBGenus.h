//
//  WFBGenus.h
//  WikiForBirds
//
//  Created by 钱辰 on 14/12/29.
//  Copyright (c) 2014年 qianchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class WFBFamily;

@interface WFBGenus : NSManagedObject

@property (nonatomic, retain) NSString * genus;
@property (nonatomic, retain) NSString * chineseName;
@property (nonatomic, retain) WFBFamily *family;
@property (nonatomic, retain) NSSet *species;
@end

@interface WFBGenus (CoreDataGeneratedAccessors)

- (void)addSpeciesObject:(NSManagedObject *)value;
- (void)removeSpeciesObject:(NSManagedObject *)value;
- (void)addSpecies:(NSSet *)values;
- (void)removeSpecies:(NSSet *)values;

@end
