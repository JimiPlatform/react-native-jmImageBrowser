//
//  JMImageScrollView.m
//  RNJMaxBrowser
//
//  Created by jimi01 on 2019/3/29.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "JMImageScrollView.h"
#import "JMImageView.h"
@interface JMImageScrollView()<UIScrollViewDelegate>
@property (nonatomic) UIScrollView *scrollView;
@property (nonatomic) JMImageView *enlargeImage;
@end
@implementation JMImageScrollView

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setUpView];
    }
    return self;
}
- (void)setUpView{
    _enlargeImage = [[JMImageView alloc] initWithImage:_placeholderImage];
    _enlargeImage.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    if (_urlStr) {
        [_enlargeImage configNetworkImageWithUrl:_urlStr defaultImage:_placeholderImage];
    }
    [self setUpScrollView];
}
- (void)setUpScrollView{
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    _scrollView.minimumZoomScale = 0.5;
    _scrollView.maximumZoomScale = 10;
    _scrollView.delegate = self;
    [_scrollView addSubview:_enlargeImage];
    [self addSubview:_scrollView];
}
-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.enlargeImage;
}
-(void)scrollViewDidZoom:(UIScrollView *)scrollView{
    CGRect frame = self.enlargeImage.frame;
    frame.origin.y = (self.scrollView.frame.size.height - self.enlargeImage.frame.size.height) > 0 ? (self.scrollView.frame.size.height - self.enlargeImage.frame.size.height) * 0.5 : 0;
    frame.origin.x = (self.scrollView.frame.size.width - self.enlargeImage.frame.size.width) > 0 ? (self.scrollView.frame.size.width - self.enlargeImage.frame.size.width) * 0.5 : 0;
    self.enlargeImage.frame = frame;
    self.scrollView.contentSize = CGSizeMake(self.enlargeImage.frame.size.width + 30, self.enlargeImage.frame.size.height + 30);
}
@end
