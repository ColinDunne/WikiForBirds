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

@interface AppDelegate ()

@end

@implementation AppDelegate

#pragma mark - Load the Data

-(void)applicationDidFinishLaunching:(UIApplication *)application {
    UINavigationController *navController = (UINavigationController *)self.window.rootViewController;
    WFBTableViewController *rootController = (WFBTableViewController *)navController.topViewController;
    
    //Create an array of bird and send to WFBTableViewController
    NSMutableArray *birds = [[NSMutableArray alloc] initWithCapacity:10];
    WFBBirdVO *itemVO = [[WFBBirdVO alloc] initWithScientificName:@"绿头鸭"];
    [birds addObject:itemVO];
    
    itemVO = [[WFBBirdVO alloc] initWithScientificName:@"鸳鸯"];
    [birds addObject:itemVO];
    
    itemVO = [[WFBBirdVO alloc] initWithScientificName:@"小䴙䴘"];
    [birds addObject:itemVO];
    
    itemVO = [[WFBBirdVO alloc] initWithScientificName:@"普通翠鸟"];
    [birds addObject:itemVO];
    
    itemVO = [[WFBBirdVO alloc] initWithScientificName:@"白鹭"];
    [birds addObject:itemVO];
    
    itemVO = [[WFBBirdVO alloc] initWithScientificName:@"夜鹭"];
    [birds addObject:itemVO];
    
    itemVO = [[WFBBirdVO alloc] initWithScientificName:@"大斑啄木鸟"];
    [birds addObject:itemVO];
    
    itemVO = [[WFBBirdVO alloc] initWithScientificName:@"戴胜"];
    [birds addObject:itemVO];
    
    itemVO = [[WFBBirdVO alloc] initWithScientificName:@"四声杜鹃"];
    [birds addObject:itemVO];
    
    itemVO = [[WFBBirdVO alloc] initWithScientificName:@"珠颈斑鸠"];
    [birds addObject:itemVO];
    
    rootController.birds = birds;
}

@end
