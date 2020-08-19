//
//  NETToolModel.h
//  Whiteboard_Example
//
//  Created by BaiYih on 2020/8/12.
//  Copyright © 2020 leavesster. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, NETToolModelType) {
    NETToolModelTypePencil,           //画笔
    NETToolModelTypeSelector,         //选择
    NETToolModelTypeText,             //文本
    NETToolModelTypeEraser,           //橡皮擦
    NETToolModelTypeArrow,            //箭头
    NETToolModelTypeLaserPointer,     //激光笔
    NETToolModelTypeLaserEllipse,     //椭圆
    NETToolModelTypeLaserRectangle,   //矩形
    NETToolModelTypeLaserStraight,    //直线
    NETToolModelTypeLaserHand,        //抓手
    NETToolModelTypeLaserGeometric,   //几何图形，用于展开选择更多图形
    NETToolModelTypeLaserMore         //更多
};

@interface NETToolModel : NSObject

@property (nonatomic, assign) NETToolModelType toolType;
@property (nonatomic, strong, nullable) UIImage *icon;
@property (nonatomic, strong, nullable) UIImage *selectIcon;

@end

NS_ASSUME_NONNULL_END
