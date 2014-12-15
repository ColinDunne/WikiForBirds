//
//  WFBTableViewController.m
//  WikiForBirds
//
//  Created by 钱辰 on 14/12/13.
//  Copyright (c) 2014年 qianchen. All rights reserved.
//

#import "WFBTableViewController.h"
#import "WFBBirdVO.h"
#import "WFBTableViewCell.h"

@interface WFBTableViewController ()

@end

@implementation WFBTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // 取消行选中状态
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.birdDictionary count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSString *key = [[self keysOfDictionary:self.birdDictionary] objectAtIndex:section];
    NSMutableArray *birdArray = [self.birdDictionary objectForKey:key];

    return [birdArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    WFBTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"bird" forIndexPath:indexPath];
    
    NSString *key = [[self keysOfDictionary:self.birdDictionary] objectAtIndex:indexPath.section];
    NSMutableArray *birdArray = [self.birdDictionary objectForKey:key];
    
    WFBBirdVO *itemVO = [birdArray objectAtIndex:indexPath.row];
    cell.chineseName.text = itemVO.chineseName;
    cell.englishName.text = itemVO.englishName;
    cell.thumbnailImageURL = itemVO.thumbnailImageURL;
    
    return cell;
}

/*
 Section-related methods: Retrieve the section titles and section index titles from the collation.
 */

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSArray *keys = [self keysOfDictionary:self.birdDictionary];
    return [keys objectAtIndex:section];
}


//- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
//    return [self keysOfDictionary:self.birdDictionary];
//}
//
//
//- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
//    return [self.collation sectionForSectionIndexTitleAtIndex:index];
//}

#pragma mark -

- (NSArray *)keysOfDictionary:(NSDictionary *)birdDictionary {
    NSArray *keys = [self.birdDictionary allKeys];
    keys = [keys sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    return keys;
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

#pragma mark - Lazy instantiation

- (NSMutableDictionary *)birdDictionary {
    if (!_birdDictionary) {
        _birdDictionary = [[NSMutableDictionary alloc] init];
    }
    return _birdDictionary;
}

@end
