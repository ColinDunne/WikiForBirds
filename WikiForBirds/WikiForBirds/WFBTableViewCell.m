//
//  WFBTableViewCell.m
//  WikiForBirds
//
//  Created by 钱辰 on 14/12/13.
//  Copyright (c) 2014年 qianchen. All rights reserved.
//

#import "WFBTableViewCell.h"
@interface WFBTableViewCell()
@property (nonatomic,strong) UIImage *thumbnailImage;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;
@end

@implementation WFBTableViewCell

- (void)setThumbnailImageURL:(NSURL *)thumbnailImageURL {
    _thumbnailImageURL = thumbnailImageURL;
    //self.thumbnailImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:self.thumbnailImageURL]];
    [self startDownloadingImage];
}

- (void)startDownloadingImage {
    self.thumbnailImage = nil;
    if (self.thumbnailImageURL) {
        [self.spinner startAnimating];
        NSURLRequest *request = [[NSURLRequest alloc] initWithURL:self.thumbnailImageURL];
        NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration ephemeralSessionConfiguration];
        NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration];
        // 另起一线程
        NSURLSessionDownloadTask *task = [session downloadTaskWithRequest:request
            completionHandler:^(NSURL *localfile, NSURLResponse *response, NSError *error) {
                if (!error) {
                    if ([request.URL isEqual:self.thumbnailImageURL]) {
                        UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:localfile]];
                        // 回到主线程
                        [self performSelectorOnMainThread:@selector(setthumbnailImage:) withObject:image waitUntilDone:NO];
                        // 或者下面的方式
                        // dispatch_async(dispatch_get_main_queue(), ^{
                        //     self.thumbnailImage = image;
                        // });
                    }
                }
        }];
        [task resume];
    }
}

- (UIImage *)thumbnailImage {
    return self.thumbnailImageView.image;
}

- (void)setthumbnailImage:(UIImage *)thumbnailImage {
    self.thumbnailImageView.image = thumbnailImage;
    [self.thumbnailImageView sizeToFit];
    [self.spinner stopAnimating];
}

@end
