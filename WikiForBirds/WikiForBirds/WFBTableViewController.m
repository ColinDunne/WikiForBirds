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

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [self.birds count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    WFBTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"bird" forIndexPath:indexPath];
    
    WFBBirdVO *itemVO = [self.birds objectAtIndex:indexPath.row];
    cell.scientificName.text = itemVO.scientificName;
    cell.englishName.text = itemVO.englishName;
    cell.subImageURL = itemVO.subImageURL;
    
    return cell;
}




#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

#pragma mark - Lazy instantiation

- (NSMutableArray *)birds {
    if (!_birds) {
        _birds = [[NSMutableArray alloc] init];
    }
    return _birds;
}

@end
