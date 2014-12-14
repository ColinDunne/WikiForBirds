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
    //self.subImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:self.subImageURL]];
    [self startDownloadingImage];
}

- (void)startDownloadingImage {
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:self.subImageURL];
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration ephemeralSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration];
    // 另起一线程
    NSURLSessionDownloadTask *task = [session downloadTaskWithRequest:request
        completionHandler:^(NSURL *localfile, NSURLResponse *response, NSError *error) {
            if (!error) {
                if ([request.URL isEqual:self.subImageURL]) {
                    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:localfile]];
                    // 回到主线程
                    [self performSelectorOnMainThread:@selector(setSubImage:) withObject:image waitUntilDone:NO];
                    // 或者下面的方式
//                    dispatch_async(dispatch_get_main_queue(), ^{
//                        self.subImage = image;
//                    });
                }
            }
    }];
    [task resume];
    
}

- (UIImage *)subImage {
    return self.subImageView.image;
}

- (void)setSubImage:(UIImage *)subImage {
    self.subImageView.image = subImage;
    [self.subImageView sizeToFit];
}

@end
