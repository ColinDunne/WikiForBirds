//
//  WFBTableViewCell.m
//  WikiForBirds
//
//  Created by 钱辰 on 14/12/13.
//  Copyright (c) 2014年 qianchen. All rights reserved.
//

#import "WFBTableViewCell.h"
@interface WFBTableViewCell()
@property (nonatomic,strong) UIImage *subImage;
@end

@implementation WFBTableViewCell

- (void)setSubImageURL:(NSURL *)subImageURL {
    _subImageURL = subImageURL;
    self.subImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:self.subImageURL]];
}

- (UIImage *)subImage {
    return self.subImageView.image;
}

- (void)setSubImage:(UIImage *)subImage {
    self.subImageView.image = subImage;
    [self.subImageView sizeToFit];
}


@end
