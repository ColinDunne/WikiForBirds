//
//  WFBBirdVO.m
//  WikiForBirds
//
//  Created by 钱辰 on 14/12/13.
//  Copyright (c) 2014年 qianchen. All rights reserved.
//

#import "WFBBirdVO.h"

@implementation WFBBirdVO

#pragma mark - Init Method

- (instancetype)initWithScientificName:(NSString *)scientificName {
    self = [super init];
    if (self) {
        self.scientificName = scientificName;
    }
    
    return self;
}

- (instancetype)initWithScientificName:(NSString *)scientificName andEnglishName:(NSString *)englishName {
    self = [super init];
    if (self) {
        self.scientificName = scientificName;
        self.englishName = englishName;
    }
    
    return self;
}

#pragma mark - Description For Log

- (NSString *)description {
    return [NSString stringWithFormat:@"Bird ScientificName:%@ \n EnglishName:%@ \n ChinessName:%@ \n",self.scientificName,self.englishName,self.chineseName];
}

@end
