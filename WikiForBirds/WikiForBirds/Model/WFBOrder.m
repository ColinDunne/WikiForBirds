//
//  WFBOrder.m
//  WikiForBirds
//
//  Created by 钱辰 on 15/1/2.
//  Copyright (c) 2015年 qianchen. All rights reserved.
//

#import "WFBOrder.h"
#import "WFBFamily.h"


@implementation WFBOrder

@dynamic name;
@dynamic chineseName;
@dynamic families;

+ (NSString *)entityName {
    return @"WFBOrder";
}

+ (instancetype)insertNewObjectInManagedObjectContext:(NSManagedObjectContext *)moc {
    return [NSEntityDescription insertNewObjectForEntityForName:[self entityName] inManagedObjectContext:moc];
}

@end
