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

- (void)setupWithType:(NETToolModelType)toolType icon:(nullable UIImage *)icon selectIcon:(UIImage *)selectIcon
{
    _toolType = toolType;

    if (icon || selectIcon) {
        UIImage *iconImage;
        UIImage *selectIconImage;
        iconImage = icon ? icon : selectIcon;
        selectIconImage = selectIcon ? selectIcon : icon;
        
        [self setImage:iconImage forState:UIControlStateNormal];
        [self setImage:iconImage forState:UIControlStateHighlighted];
        [self setImage:selectIcon forState:UIControlStateSelected];
    } else {
        NSString *iconName;
        NSString *highligIconName;
        iconName = NETToolModelTypeIconMap[toolType];
        highligIconName = NETToolModelTypeHighlightIconMap[toolType];
        
        NSString *bundlePath = [[NSBundle bundleForClass:[self class]].resourcePath
                                    stringByAppendingPathComponent:@"/WhiteboardTools.bundle"];
        NSBundle *resource_bundle = [NSBundle bundleWithPath:bundlePath];
        UIImage *icon = [UIImage imageNamed:iconName
                                        inBundle:resource_bundle
                   compatibleWithTraitCollection:nil];
        UIImage *highligIcon = [UIImage imageNamed:highligIconName
                                        inBundle:resource_bundle
                   compatibleWithTraitCollection:nil];
        
        [self setImage:icon forState:UIControlStateNormal];
        [self setImage:icon forState:UIControlStateHighlighted];
        [self setImage:highligIcon forState:UIControlStateSelected];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
