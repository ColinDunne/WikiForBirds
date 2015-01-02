//
//  WFBOrderTableViewController.h
//  WikiForBirds
//
//  Created by 钱辰 on 15/1/2.
//  Copyright (c) 2015年 qianchen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface WFBOrderTableViewController : UITableViewController <NSFetchedResultsControllerDelegate>
@property (strong,nonatomic) NSManagedObjectContext *managedObjectContext;
@end
