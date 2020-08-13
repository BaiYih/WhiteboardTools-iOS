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
    [NETToolModelTypeLaserPointer] = @"laser"
};

NSString *NETToolModelTypeHighlightIconMap[] = {
    [NETToolModelTypePencil] = @"pen-pressed",
    [NETToolModelTypeSelector] = @"cursor-pressed",
    [NETToolModelTypeText] = @"text-pressed",
    [NETToolModelTypeEraser] = @"eraser-pressed",
    [NETToolModelTypeArrow] = @"arrow-pressed",
    [NETToolModelTypeLaserPointer] = @"laser-pressed"
};

@interface NETToolButton ()

@property (nonatomic, assign, readwrite) NETToolModelType toolType;

@property (nonatomic, strong) NSArray *iconArray;
@property (nonatomic, strong) NSArray *highlightIconArray;

@end

@implementation NETToolButton

- (void)setIsSelect:(BOOL)isSelect
{
    _isSelect = isSelect;
    NSString *iconName;
    if (isSelect) {
        iconName = NETToolModelTypeHighlightIconMap[self.toolType];
    } else {
        iconName = NETToolModelTypeIconMap[self.toolType];
    }
    [self setImage:[UIImage imageNamed:iconName] forState:UIControlStateNormal];
}

- (void)setupWithType:(NETToolModelType)toolType imageName:(nullable NSString *)imageName
{
    _toolType = toolType;

    NSString *iconName;
    if (imageName.length && self.iconArray.count > toolType) {
        iconName = imageName;
    } else {
        iconName = NETToolModelTypeIconMap[toolType];
    }
    [self setImage:[UIImage imageNamed:iconName] forState:UIControlStateNormal];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
