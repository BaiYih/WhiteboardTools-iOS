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
    NETToolModelTypeLaserPointer      //激光笔
};

@interface NETToolModel : NSObject

@property (nonatomic, assign) NETToolModelType toolType;
@property (nonatomic, copy, nullable) NSString *imageName;

@end

NS_ASSUME_NONNULL_END
