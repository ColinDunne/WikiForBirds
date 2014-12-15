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

- (instancetype)initWithChineseName:(NSString *)chineseName {
    self = [super init];
    if (self) {
        self.chineseName = chineseName;
    }
    
    return self;
}

- (instancetype)initWithChineseName:(NSString *)chineseName andInitialName:(NSString *)initialName {
    self = [super init];
    if (self) {
        self.chineseName = chineseName;
        self.initialName = initialName;
    }
    
    return self;
}

#pragma mark - Description For Log

- (NSString *)description {
    return [NSString stringWithFormat:@"Bird ScientificName:%@ \n EnglishName:%@ \n ChinessName:%@ \n",self.scientificName,self.englishName,self.chineseName];
}

@end
