//
//  WFBGenus.h
//  WikiForBirds
//
//  Created by 钱辰 on 15/1/2.
//  Copyright (c) 2015年 qianchen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class WFBFamily, WFBSpecies;

@interface WFBGenus : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * chineseName;
@property (nonatomic, retain) WFBFamily *family;
@property (nonatomic, retain) NSSet *species;
@end

@interface WFBGenus (CoreDataGeneratedAccessors)

- (void)addSpeciesObject:(WFBSpecies *)value;
- (void)removeSpeciesObject:(WFBSpecies *)value;
- (void)addSpecies:(NSSet *)values;
- (void)removeSpecies:(NSSet *)values;

@end
