//
//  NETToolButton.h
//  Whiteboard_Example
//
//  Created by BaiYih on 2020/8/11.
//  Copyright © 2020 leavesster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NETToolModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface NETToolButton : UIButton

@property (nonatomic, assign, readonly) NETToolModelType toolType;

- (void)setupWithType:(NETToolModelType)toolType icon:(nullable UIImage *)icon selectIcon:(UIImage *)selectIcon;

@end

NS_ASSUME_NONNULL_END
