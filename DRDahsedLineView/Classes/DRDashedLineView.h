//
//  DRDashedLineView.h
//  Records
//
//  Created by 冯生伟 on 2018/10/25.
//  Copyright © 2018年 DuoRong Technology Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DRDashedLineView : UIView

+ (instancetype)dashedLineWithFrame:(CGRect)frame
                          lineColor:(UIColor *)lineColor
                         solidWidth:(CGFloat)solidWidth
                         spaceWidth:(CGFloat)spaceWith;

@property (nonatomic,strong) IBInspectable UIColor *lineColor; //虚线颜色
@property (nonatomic,assign) IBInspectable CGFloat solidWidth; //虚线中横线的宽度
@property (nonatomic,assign) IBInspectable CGFloat spaceWidth; //虚线中空白地方的宽度

@end
