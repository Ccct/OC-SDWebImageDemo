//
//  ViewController.m
//  SDWebImageDemo
//
//  Created by Helios on 2019/6/2.
//  Copyright © 2019 Helios. All rights reserved.
//

#import "ViewController.h"
#import <SDWebImage/SDWebImage.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageV;


@property (weak, nonatomic) IBOutlet UIButton *img_btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *imgURL = [NSURL URLWithString:@"https://hbimg.huabanimg.com/80f2a1d38d6a3c59c9ed3a720b7646c060790a8329fd5-8Ku82I_fw658"];
    UIImage *placeholderImg = [UIImage imageNamed:@"placeImg"];
    
    
    NSLog(@"清理前-缓存大小： %ld",(long)[[SDImageCache sharedImageCache] totalDiskSize]);
    NSLog(@"清理前-缓存数量： %d",(short)[[SDImageCache sharedImageCache] totalDiskCount]);
    
    NSLog(@"清理中。。。");
    [[SDImageCache sharedImageCache] clearMemory];
    [[SDImageCache sharedImageCache] clearDiskOnCompletion:^{
        
        NSLog(@"清理后-缓存大小： %ld",(long)[[SDImageCache sharedImageCache] totalDiskSize]);
        NSLog(@"清理后-缓存数量： %d",(short)[[SDImageCache sharedImageCache] totalDiskCount]);
    }];
    
//    [_imageV sd_setImageWithURL:imgURL];
    
//    [_imageV sd_setImageWithURL:imgURL completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
//
//        NSLog(@" image: %@",image);
//        NSLog(@" error: %@",error);
//        NSLog(@" cacheType: %ld",(long)cacheType);
//        NSLog(@" imageURL: %@",imageURL);
//    }];



//    [_imageV sd_setImageWithURL:imgURL placeholderImage:placeholderImg];

//    [_imageV sd_setImageWithURL:imgURL placeholderImage:placeholderImg completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
//
//        NSLog(@" image: %@",image);
//        NSLog(@" error: %@",error);
//        NSLog(@" cacheType: %ld",(long)cacheType);
//        NSLog(@" imageURL: %@",imageURL);
//    }];



//    [_imageV sd_setImageWithURL:imgURL placeholderImage:placeholderImg options:0];

//    [_imageV sd_setImageWithURL:imgURL placeholderImage:placeholderImg options:0 completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
//
//        NSLog(@" image: %@",image);
//        NSLog(@" error: %@",error);
//        NSLog(@" cacheType: %ld",(long)cacheType);
//        NSLog(@" imageURL: %@",imageURL);
//    }];



//    [_imageV sd_setImageWithURL:imgURL placeholderImage:placeholderImg options:0 context:nil];

//    [_imageV sd_setImageWithURL:imgURL placeholderImage:placeholderImg options:0 context:nil progress:^(NSInteger receivedSize, NSInteger expectedSize, NSURL * _Nullable targetURL) {
//
//        NSLog(@" 收到大小： receivedSize: %ld",(long)receivedSize);
//        NSLog(@" 预计大小： expectedSize: %ld",(long)expectedSize);
//        NSLog(@" targetURL: %@",targetURL);
//
//    } completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
//
//        NSLog(@" image: %@",image);
//        NSLog(@" error: %@",error);
//        NSLog(@" cacheType: %ld",(long)cacheType);
//        NSLog(@" imageURL: %@",imageURL);
//    }];


// ------------------------------------------------------------------------
    
    
//    [_img_btn sd_setImageWithURL:imgURL forState:(UIControlStateNormal)];
    
//    [_imageV setHighlighted:YES];
    [_imageV sd_setHighlightedImageWithURL:imgURL];

    
//    [_imageV sd_setHighlightedImageWithURL:imgURL options:0];
//
//    [_imageV sd_setHighlightedImageWithURL:imgURL options:0 context:nil];
//
//    [_imageV sd_setHighlightedImageWithURL:imgURL completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
//
//    }];
//
//    [_imageV sd_setHighlightedImageWithURL:imgURL options:0 completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
//
//    }];
}


@end
