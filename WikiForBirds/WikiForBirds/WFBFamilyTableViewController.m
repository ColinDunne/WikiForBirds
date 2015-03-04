//
//  WFBFamilyTableViewController.m
//  WikiForBirds
//
//  Created by 钱辰 on 15/1/4.
//  Copyright (c) 2015年 qianchen. All rights reserved.
//

#import "WFBFamilyTableViewController.h"
#import "WFBGunesTableViewController.h"
#import "WFBFamily.h"

@interface WFBFamilyTableViewController ()
@property (nonatomic) NSFetchedResultsController *fetchedResultsController;
@end

@implementation WFBFamilyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSError *error;
    if (![self.fetchedResultsController performFetch:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
    self.title = self.order.chineseName;
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Family" forIndexPath:indexPath];
    
    WFBFamily *family = [self.fetchedResultsController objectAtIndexPath:indexPath];
    cell.textLabel.text = family.chineseName;
    cell.detailTextLabel.text = family.name;
    
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    if (indexPath) {
        if ([segue.identifier isEqualToString:@"toGenus"]) {
            if ([segue.destinationViewController isKindOfClass:[WFBGunesTableViewController class]]) {
                WFBGunesTableViewController *genusTVC = (WFBGunesTableViewController *)segue.destinationViewController;
                WFBFamily *family = [self.fetchedResultsController objectAtIndexPath:indexPath];
                genusTVC.family = family;
            }
        }
    }
    
}

#pragma mark - Fetched results controller

- (NSFetchedResultsController *)fetchedResultsController {
    if (_fetchedResultsController != nil) {
        return _fetchedResultsController;
    }
    
    // Set up the fetched results controller.
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"WFBFamily"
                                              inManagedObjectContext:self.managedObjectContext];
    [fetchRequest setEntity:entity];
    
    fetchRequest.predicate = [NSPredicate predicateWithFormat:@"ordo = %@",self.order];
    
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
    return self.order.managedObjectContext;
}

@end
