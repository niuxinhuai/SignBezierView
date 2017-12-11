//
//  UIView+SignView.h
//  FFTableProject
//
//  Created by 牛新怀 on 2017/11/29.
//  Copyright © 2017年 牛新怀. All rights reserved.
//
/*
 @paramater。必须拿到坐标后再使用
 
 */
#import <UIKit/UIKit.h>
@interface UIView (SignView)

/**
 继承于UIView的视图切圆角

 @param cornerType 圆角类型， 可看系统自带类型
 @param radius 圆角角度
 */
- (void)ff_setCornerType:(UIRectCorner)cornerType
            cornerRadius:(CGFloat)radius;


/**
 继承于UIView的视图切圆角

 @param cornerType 圆角类型， 可看系统自带类型
 @param resize CGSize类型剪切
 */
- (void)ff_setCornerType:(UIRectCorner)cornerType
            cornerSizeRadius:(CGSize)resize;


/**
 @warning 用于特殊需求
 继承于UIView的视图切圆角
 
 @param rect 当前控件frame
 @param cornerType 剪切类型
 @param resize size大小
 */
- (void)ff_setRoundedRect:(CGRect)rect
               CornerType:(UIRectCorner)cornerType
         cornerSizeRadius:(CGSize)resize;
@end
