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
@property(nonatomic,strong)NSString *chineseName;
@property(nonatomic,strong)NSString *englishName;
@property(nonatomic,strong)NSString *pinyin;
@property(nonatomic,strong)NSString *sectionName;
@property(nonatomic,strong)NSURL *thumbnailImageURL;
@property(nonatomic,strong)NSMutableArray *fullImageURLs; // of full image URL
@property(nonatomic,strong)NSMutableString *descriptionOnWiki;

#pragma mark - Init Method

- (instancetype)initWithChineseName:(NSString *)chineseName;

@end
