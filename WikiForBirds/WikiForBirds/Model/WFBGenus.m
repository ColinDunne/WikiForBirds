//
//  WFBGenus.m
//  WikiForBirds
//
//  Created by 钱辰 on 15/1/2.
//  Copyright (c) 2015年 qianchen. All rights reserved.
//

#import "WFBGenus.h"
#import "WFBFamily.h"
#import "WFBSpecies.h"


@implementation WFBGenus

@dynamic name;
@dynamic chineseName;
@dynamic family;
@dynamic species;

+ (NSString *)entityName {
    return @"WFBGenus";
}

+ (instancetype)insertNewObjectInManagedObjectContext:(NSManagedObjectContext *)moc {
    return [NSEntityDescription insertNewObjectForEntityForName:[self entityName] inManagedObjectContext:moc];
}

@end
