//
//  RNTImageBrowserManager.m
//  RNJMaxBrowser
//
//  Created by jimi01 on 2019/3/29.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "RNTImageBrowserManager.h"
#import "JMImageScrollView.h"
@implementation RNTImageBrowserManager
//RCT_EXPORT_MODULE(ImageBrowser)
RCT_EXPORT_MODULE(ImageBrowser)
RCT_EXPORT_VIEW_PROPERTY(urlStr,NSString*)
RCT_EXPORT_VIEW_PROPERTY(placeholderImage,UIImage*)

- (UIView *)view
{
    return [[JMImageScrollView alloc] init];
}

@end
