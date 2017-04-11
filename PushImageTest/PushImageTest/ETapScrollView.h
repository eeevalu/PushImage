//
//  ETapScrollView.h
//  WOWlife
//
//  Created by Eva on 17/2/21.
//  Copyright © 2017年 Eva. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol  ETapScrollViewDelegate<NSObject>
- (void)disMissController;
@end
@interface ETapScrollView : UIScrollView
@property (nonatomic, assign) id <ETapScrollViewDelegate> ETapDelegate;
- (void)setTapViewWithImage:(NSArray <NSString *>*)array isUrlImage:(BOOL)isUrlImage;
@end
