//
//  WFBTableViewCell.h
//  WikiForBirds
//
//  Created by 钱辰 on 14/12/13.
//  Copyright (c) 2014年 qianchen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WFBTableViewCell : UITableViewCell
@property (nonatomic,strong) NSURL *thumbnailImageURL;
@property (weak, nonatomic) IBOutlet UIImageView *thumbnailImageView;
@property (weak, nonatomic) IBOutlet UILabel *chineseName;
@property (weak, nonatomic) IBOutlet UILabel *englishName;
@end
