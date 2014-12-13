//
//  WFBBirdVO.h
//  WikiForBirds
//
//  Created by 钱辰 on 14/12/13.
//  Copyright (c) 2014年 qianchen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WFBBirdVO : NSObject
@property(nonatomic,strong)NSString *scientificName;
@property(nonatomic,strong)NSString *englishName;
@property(nonatomic,strong)NSString *chineseName;
@property(nonatomic,strong)NSString *subImageURL;
@property(nonatomic,strong)NSMutableArray *fullImageURLs; // of full image URL
@property(nonatomic,strong)NSMutableString *descriptionOnWiki;

#pragma mark - Init Method

- (instancetype)initWithScientificName:(NSString *)scientificName;

- (instancetype)initWithScientificName:(NSString *)scientificName andEnglishName:(NSString *)englishName;

@end
