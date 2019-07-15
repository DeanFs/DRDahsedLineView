//
//  DRDashedLineView.m
//  Records
//
//  Created by 冯生伟 on 2018/10/25.
//  Copyright © 2018年 DuoRong Technology Co., Ltd. All rights reserved.
//

#import "DRDashedLineView.h"

@implementation DRDashedLineView

+ (instancetype)dashedLineWithFrame:(CGRect)frame
                          lineColor:(UIColor *)lineColor
                         solidWidth:(CGFloat)solidWidth
                         spaceWidth:(CGFloat)spaceWith {
    DRDashedLineView *line = [[DRDashedLineView alloc] initWithFrame:frame];
    line.backgroundColor = [UIColor clearColor];
    line.lineColor = lineColor;
    line.solidWidth = solidWidth;
    line.spaceWidth = spaceWith;
    return line;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    CGSize size = self.frame.size;
    CGContextRef context = UIGraphicsGetCurrentContext(); //设置上下文
    CGContextSetStrokeColorWithColor(context, _lineColor.CGColor);//线条颜色
    CGContextSetLineWidth(context, size.height); // 线条宽度
    CGContextMoveToPoint(context, 0, 0); //开始画线, x，y 为开始点的坐标
    CGContextAddLineToPoint(context, size.width, 0); //画直线, x，y 为线条结束点的坐标
    CGFloat lengths[] = {_solidWidth, _spaceWidth};
    CGContextSetLineDash(context, 0, lengths, 2);
    CGContextStrokePath(context); //开始画线
}

@end
