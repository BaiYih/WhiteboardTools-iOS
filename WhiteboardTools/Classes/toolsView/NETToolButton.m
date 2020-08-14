//
//  NETToolButton.m
//  Whiteboard_Example
//
//  Created by BaiYih on 2020/8/11.
//  Copyright © 2020 leavesster. All rights reserved.
//

#import "NETToolButton.h"

NSString *NETToolModelTypeIconMap[] = {
    [NETToolModelTypePencil] = @"pen",
    [NETToolModelTypeSelector] = @"cursor",
    [NETToolModelTypeText] = @"text",
    [NETToolModelTypeEraser] = @"eraser",
    [NETToolModelTypeArrow] = @"arrow",
    [NETToolModelTypeLaserPointer] = @"laser",
    [NETToolModelTypeLaserEllipse] = @"circle",
    [NETToolModelTypeLaserRectangle] = @"shape",
    [NETToolModelTypeLaserStraight] = @"line",
    [NETToolModelTypeLaserHand] = @"grab",
    [NETToolModelTypeLaserGeometric] = @"geometric",
    [NETToolModelTypeLaserMore] = @"more"
};

NSString *NETToolModelTypeHighlightIconMap[] = {
    [NETToolModelTypePencil] = @"pen-pressed",
    [NETToolModelTypeSelector] = @"cursor-pressed",
    [NETToolModelTypeText] = @"text-pressed",
    [NETToolModelTypeEraser] = @"eraser-pressed",
    [NETToolModelTypeArrow] = @"arrow-pressed",
    [NETToolModelTypeLaserPointer] = @"laser-pressed",
    [NETToolModelTypeLaserEllipse] = @"circle-pressed",
    [NETToolModelTypeLaserRectangle] = @"shape-pressed",
    [NETToolModelTypeLaserStraight] = @"line-pressed",
    [NETToolModelTypeLaserHand] = @"grab-pressed",
    [NETToolModelTypeLaserGeometric] = @"geometric-pressed",
    [NETToolModelTypeLaserMore] = @"more-pressed"
};

@interface NETToolButton ()

@property (nonatomic, assign, readwrite) NETToolModelType toolType;

@end

@implementation NETToolButton

- (void)setupWithType:(NETToolModelType)toolType imageName:(nullable NSString *)imageName
{
    _toolType = toolType;

    NSString *iconName;
    NSString *highligIconName;
    if (imageName.length) {
        iconName = imageName;
    } else {
        iconName = NETToolModelTypeIconMap[toolType];
    }
    
    [self setImage:[UIImage imageNamed:iconName] forState:UIControlStateNormal];
    [self setImage:[UIImage imageNamed:iconName] forState:UIControlStateHighlighted];
    [self setImage:[UIImage imageNamed:highligIconName] forState:UIControlStateSelected];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
