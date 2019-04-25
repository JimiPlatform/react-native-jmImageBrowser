//
//  JMImageScrollView.h
//  RNJMaxBrowser
//
//  Created by jimi01 on 2019/3/29.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JMImageScrollView : UIView
@property(nonatomic) NSString *source;
@property (nonatomic,assign) float width;
@property (nonatomic,assign) float height;
@property (nonatomic) NSString *placeholderPath;

@end

NS_ASSUME_NONNULL_END
