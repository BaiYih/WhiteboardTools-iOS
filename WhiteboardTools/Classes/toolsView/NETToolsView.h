//
//  NETToolsView.h
//  Whiteboard_Example
//
//  Created by BaiYih on 2020/8/12.
//  Copyright © 2020 leavesster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NETToolModel.h"
#import <Whiteboard/Whiteboard.h>

NS_ASSUME_NONNULL_BEGIN

@interface NETToolsView : UIStackView

/// 更新房间信息
/// @param room 当前房间
- (void)setupRoom:(WhiteRoom *)room;

- (void)setupTools:(NSArray <NETToolModel *>*)tools;

- (void)restoreButton;

@end

NS_ASSUME_NONNULL_END
