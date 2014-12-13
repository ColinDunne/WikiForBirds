//
//  WFBTableViewCell.h
//  WikiForBirds
//
//  Created by 钱辰 on 14/12/13.
//  Copyright (c) 2014年 qianchen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WFBTableViewCell : UITableViewCell
@property (nonatomic,strong) NSURL *subImageURL;
@property (weak, nonatomic) IBOutlet UIImageView *subImageView;
@property (weak, nonatomic) IBOutlet UILabel *scientificName;
@property (weak, nonatomic) IBOutlet UILabel *englishName;
@end
