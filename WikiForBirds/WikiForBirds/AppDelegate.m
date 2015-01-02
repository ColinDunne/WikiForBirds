//
//  AppDelegate.m
//  WikiForBirds
//
//  Created by 钱辰 on 14/12/12.
//  Copyright (c) 2014年 qianchen. All rights reserved.
//

#import "AppDelegate.h"
#import "WFBOrderTableViewController.h"
#import "WFBOrder.h"

@interface AppDelegate ()
@property (nonatomic) NSManagedObjectContext *managedObjectContext;
@property (nonatomic) NSManagedObjectModel *managedObjectModel;
@property (nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@end

@implementation AppDelegate

#pragma mark - Load the Data

-(void)applicationDidFinishLaunching:(UIApplication *)application {
    UINavigationController *navController = (UINavigationController *)self.window.rootViewController;
    WFBOrderTableViewController *rootController = (WFBOrderTableViewController *)navController.topViewController;
    rootController.managedObjectContext = self.managedObjectContext;
}

#pragma mark - Core Data stack

- (NSManagedObjectContext *)managedObjectContext {
    if (_managedObjectContext != nil) {
        return _managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (coordinator != nil) {
        _managedObjectContext = [[NSManagedObjectContext alloc] init];
        [_managedObjectContext setPersistentStoreCoordinator:coordinator];
    }
    
    return _managedObjectContext;
}

- (NSManagedObjectModel *)managedObjectModel {
    if (_managedObjectModel != nil) {
        return _managedObjectModel;
    }
    
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"Bird" withExtension:@"momd"];
    _managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    
    return _managedObjectModel;
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator {
    if (_persistentStoreCoordinator != nil) {
        return _persistentStoreCoordinator;
    }
    
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"WikiForBirds.sqlite"];
    
    BOOL firstRun = ![storeURL checkResourceIsReachableAndReturnError:NULL];
    NSError *error;
    
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        NSLog(@"Unresolved error %@,%@", error, [error userInfo]);
        abort();
    }
    
    if (firstRun) {
        [self saveDefaultDataWithPersistentStoreCoordinator:_persistentStoreCoordinator];
    }
    
    return _persistentStoreCoordinator;
}

#pragma mark - Save the default data

- (void)saveDefaultDataWithPersistentStoreCoordinator:(NSPersistentStoreCoordinator *)coordinator {
    NSManagedObjectContext *context = [[NSManagedObjectContext alloc] init];
    [context setPersistentStoreCoordinator:coordinator];
    
    WFBOrder *order = [NSEntityDescription insertNewObjectForEntityForName:@"WFBOrder" inManagedObjectContext:context];
    order.chineseName = @"鸵鸟目";
    order.name = @"Struthioniformes";
    
    order = [NSEntityDescription insertNewObjectForEntityForName:@"WFBOrder" inManagedObjectContext:context];
    order.chineseName = @"鸽形目";
    order.name = @"Columbiformes";
    
    order = [NSEntityDescription insertNewObjectForEntityForName:@"WFBOrder" inManagedObjectContext:context];
    order.chineseName = @"鹦形目";
    order.name = @"Psittaciformes";
    
    order = [NSEntityDescription insertNewObjectForEntityForName:@"WFBOrder" inManagedObjectContext:context];
    order.chineseName = @"隼形目";
    order.name = @"Falconiformes";
    
    order = [NSEntityDescription insertNewObjectForEntityForName:@"WFBOrder" inManagedObjectContext:context];
    order.chineseName = @"企鹅目";
    order.name = @"Spheniscidae";
    
    order = [NSEntityDescription insertNewObjectForEntityForName:@"WFBOrder" inManagedObjectContext:context];
    order.chineseName = @"雁形目";
    order.name = @"Anseriformes";
    
    order = [NSEntityDescription insertNewObjectForEntityForName:@"WFBOrder" inManagedObjectContext:context];
    order.chineseName = @"鸡形目";
    order.name = @"Galliformes";
    
    order = [NSEntityDescription insertNewObjectForEntityForName:@"WFBOrder" inManagedObjectContext:context];
    order.chineseName = @"鹃形目";
    order.name = @"Cuculiformes";
    
    order = [NSEntityDescription insertNewObjectForEntityForName:@"WFBOrder" inManagedObjectContext:context];
    order.chineseName = @"雀形目";
    order.name = @"Passeriformes";
    
    [context save:NULL];
}

#pragma mark - Application's Documents directory

- (NSURL *)applicationDocumentsDirectory {
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

@end
