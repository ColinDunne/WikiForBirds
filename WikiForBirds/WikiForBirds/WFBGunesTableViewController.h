//
//  WFBGunesTableViewController.h
//  WikiForBirds
//
//  Created by 钱辰 on 15/3/4.
//  Copyright (c) 2015年 qianchen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "WFBFamily.h"

@interface WFBGunesTableViewController : UITableViewController <NSFetchedResultsControllerDelegate>
@property (strong,nonatomic) WFBFamily *family;
@property (strong,nonatomic) NSManagedObjectContext *managedObjectContext;
@end
