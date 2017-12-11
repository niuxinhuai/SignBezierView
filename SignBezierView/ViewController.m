//
//  ViewController.m
//  SignBezierView
//
//  Created by 牛新怀 on 2017/12/11.
//  Copyright © 2017年 牛新怀. All rights reserved.
//

#import "ViewController.h"
#import "UIView+SignView.h"
@interface ViewController ()
@property (nonatomic, strong) UIImageView * bgImageView; // 全圆角剪切
@property (nonatomic, strong) UIImageView * leftClipImgeView; // 只剪切左上圆角
@property (nonatomic, strong) UIImageView * rightClipImageView; // 只剪切右上圆角
@property (nonatomic, strong) UIImageView * bottomleftClipImageView; // 只剪切左下圆角
@property (nonatomic, strong) UIImageView * bottomRightClipImageView; // 只剪切右下圆角
@property (nonatomic, strong) UIImageView * topClipImageView;  // 只剪切上左，上右圆角
@property (nonatomic, strong) UIImageView * bottomClipImageView; // 只剪切下左，下右圆角
@property (nonatomic, strong) UIImageView * resultClipImageView; // 不规则剪切

@end

static const CGFloat ViewHeight = 80.0f;
static const CGFloat marginWidth = 30.0f;
static const CGFloat marginHeight = 40.0f;
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 切4个角
    [self clipAllCornerRadius];
    // 只剪切左上圆角
    [self clipLeftCornerRadiu];
    // 只剪切右上圆角
    [self clipRightCornerRadiu];
    // 只剪切左下圆角
    [self clipBottomLeftCornerRadiu];
    // 只剪切右下圆角
    [self clipBottomRIghtCornerRadiu];
    // 只剪切上左，上右圆角
    [self clipTopCornerRadius];
    // 只剪切下左，下右圆角
    [self clipBottomCornerRadius];
    // 不规则剪切
    [self clipCornerRadius];
}
#pragma mark - 切4个角

- (void)clipAllCornerRadius{
    [self.view addSubview:self.bgImageView];
    self.bgImageView.frame = CGRectMake(40, 20, ViewHeight, ViewHeight);
    [self.bgImageView ff_setCornerType:UIRectCornerAllCorners
                          cornerRadius:ViewHeight/2];
}
// 只剪切左上圆角
- (void)clipLeftCornerRadiu{
    [self.view addSubview:self.leftClipImgeView];
    self.leftClipImgeView.frame = CGRectMake(CGRectGetMaxX(self.bgImageView.frame)+marginWidth, CGRectGetMinY(self.bgImageView.frame), ViewHeight, ViewHeight);
    [self.leftClipImgeView ff_setCornerType:UIRectCornerTopLeft
                               cornerRadius:ViewHeight/2];
}
//只剪切右上圆角
- (void)clipRightCornerRadiu{
    [self.view addSubview:self.rightClipImageView];
    self.rightClipImageView.frame = CGRectMake(CGRectGetMaxX(self.leftClipImgeView.frame)+marginWidth, CGRectGetMinY(self.bgImageView.frame), ViewHeight, ViewHeight);
    [self.rightClipImageView ff_setCornerType:UIRectCornerTopRight
                                 cornerRadius:ViewHeight/2];
}
// 只剪切左下圆角
- (void)clipBottomLeftCornerRadiu{
    [self.view addSubview:self.bottomleftClipImageView];
    self.bottomleftClipImageView.frame = CGRectMake(CGRectGetMinX(self.bgImageView.frame), CGRectGetMaxY(self.bgImageView.frame)+marginHeight, ViewHeight, ViewHeight);
    [self.bottomleftClipImageView ff_setCornerType:UIRectCornerBottomLeft
                                      cornerRadius:ViewHeight/2];
}
// 只剪切右下圆角
- (void)clipBottomRIghtCornerRadiu{
    [self.view addSubview:self.bottomRightClipImageView];
    self.bottomRightClipImageView.frame = CGRectMake(CGRectGetMinX(self.leftClipImgeView.frame), CGRectGetMaxY(self.bgImageView.frame)+marginHeight, ViewHeight, ViewHeight);
    [self.bottomRightClipImageView ff_setCornerType:UIRectCornerBottomRight
                                       cornerRadius:ViewHeight/2];
}
// 只剪切上左，上右圆角
- (void)clipTopCornerRadius{
    [self.view addSubview:self.topClipImageView];
    self.topClipImageView.frame = CGRectMake(CGRectGetMinX(self.bgImageView.frame), CGRectGetMaxY(self.bottomleftClipImageView.frame)+marginHeight, ViewHeight, ViewHeight);
    [self.topClipImageView ff_setCornerType:UIRectCornerTopRight | UIRectCornerTopLeft
                               cornerRadius:ViewHeight/2];
}
// 只剪切下左，下右圆角
- (void)clipBottomCornerRadius{
    [self.view addSubview:self.bottomClipImageView];
    self.bottomClipImageView.frame = CGRectMake(CGRectGetMinX(self.bottomRightClipImageView.frame), CGRectGetMaxY(self.bottomRightClipImageView.frame)+marginHeight, ViewHeight, ViewHeight);
    [self.bottomClipImageView ff_setCornerType:UIRectCornerBottomLeft | UIRectCornerBottomRight
                                  cornerRadius:ViewHeight/2];
}
// 不规则剪切
- (void)clipCornerRadius{
    [self.view addSubview:self.resultClipImageView];
    self.resultClipImageView.frame = CGRectMake(CGRectGetMinX(self.bgImageView.frame), CGRectGetMaxY(self.bottomClipImageView.frame)+marginHeight, ViewHeight, ViewHeight);
    [self.resultClipImageView ff_setRoundedRect:self.resultClipImageView.bounds
                                     CornerType:UIRectCornerTopLeft | UIRectCornerBottomLeft
                               cornerSizeRadius:CGSizeMake(20, 20)];
}

#pragma 全圆角剪切视图
- (UIImageView *)bgImageView{
    if (!_bgImageView) {
        _bgImageView = [[UIImageView alloc]init];
        _bgImageView.image = [UIImage imageNamed:@"m8.jpg"];
        
    }
    return _bgImageView;
}

#pragma 只剪切左上圆角
- (UIImageView *)leftClipImgeView{
    if (!_leftClipImgeView) {
        _leftClipImgeView = [[UIImageView alloc]init];
        _leftClipImgeView.image = [UIImage imageNamed:@"m8.jpg"];
        
    }
    return _leftClipImgeView;
}

#pragma 只剪切右上圆角视图
- (UIImageView *)rightClipImageView{
    if (!_rightClipImageView) {
        _rightClipImageView = [[UIImageView alloc]init];
        _rightClipImageView.image = [UIImage imageNamed:@"m8.jpg"];
        
    }
    return _rightClipImageView;
}

#pragma 只剪切左下圆角视图
- (UIImageView *)bottomleftClipImageView{
    if (!_bottomleftClipImageView) {
        _bottomleftClipImageView = [[UIImageView alloc]init];
        _bottomleftClipImageView.image = [UIImage imageNamed:@"m8.jpg"];
        
    }
    return _bottomleftClipImageView;
}

#pragma 只剪切右下圆角视图
- (UIImageView *)bottomRightClipImageView{
    if (!_bottomRightClipImageView) {
        _bottomRightClipImageView = [[UIImageView alloc]init];
        _bottomRightClipImageView.image = [UIImage imageNamed:@"m8.jpg"];
        
    }
    return _bottomRightClipImageView;
}

#pragma 只剪切上左，上右圆角视图
- (UIImageView *)topClipImageView{
    if (!_topClipImageView) {
        _topClipImageView = [[UIImageView alloc]init];
        _topClipImageView.image = [UIImage imageNamed:@"m8.jpg"];
        
    }
    return _topClipImageView;
}

#pragma 只剪切下左，下右圆角视图
- (UIImageView *)bottomClipImageView{
    if (!_bottomClipImageView) {
        _bottomClipImageView = [[UIImageView alloc]init];
        _bottomClipImageView.image = [UIImage imageNamed:@"m8.jpg"];
        
    }
    return _bottomClipImageView;
}

#pragma 不规则剪切视图
- (UIImageView *)resultClipImageView{
    if (!_resultClipImageView) {
        _resultClipImageView = [[UIImageView alloc]init];
        _resultClipImageView.image = [UIImage imageNamed:@"m8.jpg"];
        
    }
    return _resultClipImageView;
}


@end
