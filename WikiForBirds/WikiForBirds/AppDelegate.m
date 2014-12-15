//
//  AppDelegate.m
//  WikiForBirds
//
//  Created by 钱辰 on 14/12/12.
//  Copyright (c) 2014年 qianchen. All rights reserved.
//

#import "AppDelegate.h"
#import "WFBTableViewController.h"
#import "WFBBirdVO.h"
#import "pinyin.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

#pragma mark - Load the Data

-(void)applicationDidFinishLaunching:(UIApplication *)application {
    UINavigationController *navController = (UINavigationController *)self.window.rootViewController;
    WFBTableViewController *rootController = (WFBTableViewController *)navController.topViewController;
    
    //Create an dictionary of bird and send to WFBTableViewController
    NSMutableDictionary *birdDictionary = [[NSMutableDictionary alloc] init];
    WFBBirdVO *itemVO = [[WFBBirdVO alloc] initWithChineseName:@"绿头鸭"];
    itemVO.pinyin = @"Lvtouya";
    itemVO.sectionName = @"L";
    itemVO.thumbnailImageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://g.hiphotos.baidu.com/baike/c0%%3Dbaike80%%2C5%%2C5%%2C80%%2C26/sign=26aec4c9f9f2b211f0238d1cabe90e5d/fd039245d688d43fb10233487f1ed21b0ff43be4.jpg"]];
    [self addBird:itemVO toDictionary:birdDictionary];
    
    itemVO = [[WFBBirdVO alloc] initWithChineseName:@"鸳鸯"];
    itemVO.pinyin = @"Yuanyang";
    itemVO.sectionName = @"Y";
    itemVO.thumbnailImageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://f.hiphotos.baidu.com/baike/c0%%3Dbaike80%%2C5%%2C5%%2C80%%2C26/sign=f0d54cd443166d222c7a1dc6274a6292/48540923dd54564e37762f26b3de9c82d1584f9a.jpg"]];
    [self addBird:itemVO toDictionary:birdDictionary];
    
    itemVO = [[WFBBirdVO alloc] initWithChineseName:@"小䴙䴘"];
    itemVO.pinyin = @"Xiaopiti";
    itemVO.sectionName = @"X";
    itemVO.thumbnailImageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://h.hiphotos.baidu.com/baike/c0%%3Dbaike92%%2C5%%2C5%%2C92%%2C30/sign=3510d641d9f9d72a0369184fb5434351/fc1f4134970a304e0a431284d1c8a786c9175c6e.jpg"]];
    [self addBird:itemVO toDictionary:birdDictionary];
    
    itemVO = [[WFBBirdVO alloc] initWithChineseName:@"普通翠鸟"];
    itemVO.pinyin = @"Putongcuiniao";
    itemVO.sectionName = @"P";
    itemVO.thumbnailImageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://d.hiphotos.baidu.com/baike/c0%%3Dbaike80%%2C5%%2C5%%2C80%%2C26/sign=c686510a0cf41bd5ce5ee0a630b3eaae/91529822720e0cf36c52f8da0846f21fbe09aa6e.jpg"]];
    [self addBird:itemVO toDictionary:birdDictionary];
    
    itemVO = [[WFBBirdVO alloc] initWithChineseName:@"白鹭"];
    itemVO.pinyin = @"Bailu";
    itemVO.sectionName = @"B";
    itemVO.thumbnailImageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://c.hiphotos.baidu.com/baike/c0%%3Dbaike92%%2C5%%2C5%%2C92%%2C30/sign=38190a2c738da9775a228e79d138937c/96dda144ad345982c03e2c8d0cf431adcbef847d.jpg"]];
    [self addBird:itemVO toDictionary:birdDictionary];
    
    itemVO = [[WFBBirdVO alloc] initWithChineseName:@"夜鹭"];
    itemVO.pinyin = @"Yelu";
    itemVO.sectionName = @"Y";
    itemVO.thumbnailImageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://b.hiphotos.baidu.com/baike/c0%%3Dbaike92%%2C5%%2C5%%2C92%%2C30/sign=cdf5bdfe03e93901420f856c1a853f82/962bd40735fae6cdcaa5aebf0db30f2443a70fde.jpg"]];
    [self addBird:itemVO toDictionary:birdDictionary];
    
    itemVO = [[WFBBirdVO alloc] initWithChineseName:@"大斑啄木鸟"];
    itemVO.pinyin = @"Dabanzhuomuniao";
    itemVO.sectionName = @"D";
    itemVO.thumbnailImageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://e.hiphotos.baidu.com/baike/c0%%3Dbaike80%%2C5%%2C5%%2C80%%2C26/sign=3a4bb79d48ed2e73e8e48e7ee668caee/a2cc7cd98d1001e935304c16ba0e7bec54e7979e.jpg"]];
    [self addBird:itemVO toDictionary:birdDictionary];
    
    itemVO = [[WFBBirdVO alloc] initWithChineseName:@"戴胜"];
    itemVO.pinyin = @"Daisheng";
    itemVO.sectionName = @"D";
    itemVO.thumbnailImageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://b.hiphotos.baidu.com/baike/c0%%3Dbaike80%%2C5%%2C5%%2C80%%2C26/sign=9caef086b3b7d0a26fc40ccfaa861d6c/50da81cb39dbb6fd63fc79120824ab18972b375a.jpg"]];
    [self addBird:itemVO toDictionary:birdDictionary];
    
    itemVO = [[WFBBirdVO alloc] initWithChineseName:@"四声杜鹃"];
    itemVO.pinyin = @"Sishengdujuan";
    itemVO.sectionName = @"S";
    itemVO.thumbnailImageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://f.hiphotos.baidu.com/baike/c0%%3Dbaike80%%2C5%%2C5%%2C80%%2C26/sign=f298159fd833c895b2739029b07a1895/d52a2834349b033ba6099ed214ce36d3d539bd31.jpg"]];
    [self addBird:itemVO toDictionary:birdDictionary];
    
    itemVO = [[WFBBirdVO alloc] initWithChineseName:@"珠颈斑鸠"];
    itemVO.pinyin = @"Zhujingbanjiu";
    itemVO.sectionName = @"Z";
    itemVO.thumbnailImageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://b.hiphotos.baidu.com/baike/c0%%3Dbaike92%%2C5%%2C5%%2C92%%2C30/sign=83042c9ab3de9c82b268f1dd0de8eb6f/f9198618367adab45bb1d3e08bd4b31c8701e434.jpg"]];
    [self addBird:itemVO toDictionary:birdDictionary];
    
    rootController.birdDictionary = birdDictionary;
}

- (void)addBird:(WFBBirdVO *)birdVO toDictionary:(NSMutableDictionary *)birdDictionary {
    NSString *sectionName = birdVO.sectionName;
    NSMutableArray *birdArray = (NSMutableArray *)[birdDictionary objectForKey:sectionName];
    if (!birdArray) {
        birdArray = [[NSMutableArray alloc] init];
    }
    [birdArray addObject:birdVO];
    // sort
    NSMutableArray *sortedArray = [NSMutableArray arrayWithArray:[birdArray sortedArrayUsingSelector:@selector(compare:)]];
    // add
    [birdDictionary setObject:sortedArray forKey:sectionName];
}

@end
