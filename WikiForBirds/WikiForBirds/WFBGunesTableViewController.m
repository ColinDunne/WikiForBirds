//
//  WFBGunesTableViewController.m
//  WikiForBirds
//
//  Created by 钱辰 on 15/3/4.
//  Copyright (c) 2015年 qianchen. All rights reserved.
//

#import "WFBGunesTableViewController.h"
#import "WFBGenus.h"

@interface WFBGunesTableViewController ()
@property (nonatomic) NSFetchedResultsController *fetchedResultsController;
@end

@implementation WFBGunesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSError *error;
    if (![self.fetchedResultsController performFetch:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
    self.title = self.family.chineseName;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    id <NSFetchedResultsSectionInfo> sectionInfo = [[self.fetchedResultsController sections] objectAtIndex:section];
    return [sectionInfo numberOfObjects];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Genus" forIndexPath:indexPath];
    
    WFBGenus *genus = [self.fetchedResultsController objectAtIndexPath:indexPath];
    cell.textLabel.text = genus.chineseName;
    cell.detailTextLabel.text = genus.name;
    
    return cell;
}

#pragma mark - Fetched results controller

- (NSFetchedResultsController *)fetchedResultsController {
    if (_fetchedResultsController != nil) {
        return _fetchedResultsController;
    }
    
    // Set up the fetched results controller.
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"WFBGenus"
                                              inManagedObjectContext:self.managedObjectContext];
    [fetchRequest setEntity:entity];
    
    fetchRequest.predicate = [NSPredicate predicateWithFormat:@"family = %@",self.family];
    
    NSSortDescriptor *sortDescirptor = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
    fetchRequest.sortDescriptors = @[sortDescirptor];
    
    fetchRequest.fetchBatchSize = 20;
    
    _fetchedResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest
                                                                    managedObjectContext:self.managedObjectContext
                                                                      sectionNameKeyPath:nil
                                                                               cacheName:nil];
    
    return _fetchedResultsController;
}

- (NSManagedObjectContext *)managedObjectContext {
    return self.family.managedObjectContext;
}

@end
