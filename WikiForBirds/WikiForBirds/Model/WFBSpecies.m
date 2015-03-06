//
//  WFBSpecies.m
//  WikiForBirds
//
//  Created by 钱辰 on 15/1/2.
//  Copyright (c) 2015年 qianchen. All rights reserved.
//

#import "WFBSpecies.h"
#import "WFBBird.h"
#import "WFBGenus.h"


@implementation WFBSpecies

@dynamic name;
@dynamic chineseName;
@dynamic thumbnail;
@dynamic genus;
@dynamic birds;

+ (NSString *)entityName {
    return @"WFBSpecies";
}

+ (instancetype)insertNewObjectInManagedObjectContext:(NSManagedObjectContext *)moc {
    return [NSEntityDescription insertNewObjectForEntityForName:[self entityName] inManagedObjectContext:moc];
}

@end
