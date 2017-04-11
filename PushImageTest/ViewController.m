//
//  ViewController.m
//  PushImageTest
//
//  Created by Eva on 17/4/10.
//  Copyright © 2017年 Eva. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    UIImageView * imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1"]];
    imageView.frame = CGRectMake(0, 100, self.view.frame.size.width,self.view.frame.size.width);
    imageView.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didClickImage)];
    [imageView addGestureRecognizer:tap];
    [self.view addSubview:imageView];
}

- (void)didClickImage {
    ImageViewController *imageVc = [[ImageViewController alloc] init];
    imageVc.imageArray = @[@"1",@"2",@"3",@"4",@"5"];
    CATransition *animation = [CATransition animation];
    animation.duration = 0.4;
    animation.timingFunction = UIViewAnimationCurveEaseInOut;
//    animation.type = @"pageCurl";//翻页效果
    animation.type = kCATransitionFade;
//    animation.subtype = kCATransitionFromBottom;
    [self.view.window.layer addAnimation:animation forKey:nil];

    [self presentViewController:imageVc animated:NO completion:^{
        
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
