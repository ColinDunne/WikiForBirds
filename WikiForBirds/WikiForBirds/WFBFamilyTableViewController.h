//
//  WFBFamilyTableViewController.h
//  WikiForBirds
//
//  Created by 钱辰 on 15/1/4.
//  Copyright (c) 2015年 qianchen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "WFBOrder.h"

@interface WFBFamilyTableViewController : UITableViewController <NSFetchedResultsControllerDelegate>
@property (strong,nonatomic) WFBOrder *order;
@property (strong,nonatomic) NSManagedObjectContext *managedObjectContext;
@end
