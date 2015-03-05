//
//  WFBSpeciesTableViewController.h
//  WikiForBirds
//
//  Created by 钱辰 on 15/3/5.
//  Copyright (c) 2015年 qianchen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "WFBGenus.h"

@interface WFBSpeciesTableViewController : UITableViewController <NSFetchedResultsControllerDelegate>
@property (strong,nonatomic) WFBGenus *genus;
@property (strong,nonatomic) NSManagedObjectContext *managedObjectContext;
@end
