//
//  WFBTableViewController.m
//  WikiForBirds
//
//  Created by 钱辰 on 14/12/13.
//  Copyright (c) 2014年 qianchen. All rights reserved.
//

#import "WFBTableViewController.h"

@interface WFBTableViewController ()
@property(nonatomic,strong)NSMutableArray *birds;
@end

@implementation WFBTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *name1 = @"绿头鸭";
    [self.birds addObject:name1];
    NSString *name2 = @"鸳鸯";
    [self.birds addObject:name2];
    NSString *name3 = @"小䴙䴘";
    [self.birds addObject:name3];
    NSString *name4 = @"普通翠鸟";
    [self.birds addObject:name4];
    NSString *name5 = @"白鹭";
    [self.birds addObject:name5];
    NSString *name6 = @"夜鹭";
    [self.birds addObject:name6];
    NSString *name7 = @"大斑啄木鸟";
    [self.birds addObject:name7];
    NSString *name8 = @"戴胜";
    [self.birds addObject:name8];
    NSString *name9 = @"四声杜鹃";
    [self.birds addObject:name9];
    NSString *name10 = @"珠颈斑鸠";
    [self.birds addObject:name10];
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"bird" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.birds objectAtIndex:indexPath.row];
    
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
