//
//  NETToolsView.m
//  Whiteboard_Example
//
//  Created by BaiYih on 2020/8/12.
//  Copyright © 2020 leavesster. All rights reserved.
//

#import "NETToolsView.h"
#import "NETToolButton.h"

@interface NETToolsView ()

@property (nonatomic, weak) WhiteRoom *room;
@property (nonatomic, strong) NETToolButton *currentSelectButton;
    
@end

@implementation NETToolsView

- (void)setupRoom:(WhiteRoom *)room
{
    _room = room;
}

- (void)setupTools:(NSArray <NETToolModel *>*)tools
{
    
    [self.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
    for (int i = 0; i < tools.count; i++) {
        NETToolModel *toolModel = tools[i];
        if (![toolModel isKindOfClass:[NETToolModel class]]) {
            break;
        }
        
        NETToolButton *toolButton = [[NETToolButton alloc] initWithFrame:CGRectZero];
        [toolButton setupWithType:toolModel.toolType imageName:toolModel.imageName];
        [toolButton addTarget:self action:@selector(actionTestButton:) forControlEvents:UIControlEventTouchUpInside];
        [self addArrangedSubview:toolButton];
    }
}

- (void)actionTestButton:(NETToolButton *)sender
{
    if (self.currentSelectButton) {
        self.currentSelectButton.selected = NO;
    }
    sender.selected = YES;
    self.currentSelectButton = sender;
    
    switch (sender.toolType) {
        case NETToolModelTypePencil:
        {
            NSLog(@"test~~~~~~  use Pencil");
            WhiteMemberState *mState = [[WhiteMemberState alloc] init];
            mState.currentApplianceName = AppliancePencil;
            [self.room setMemberState:mState];
            break;
        }
        case NETToolModelTypeSelector:
        {
            NSLog(@"test~~~~~~  use Selector");
            WhiteMemberState *mState = [[WhiteMemberState alloc] init];
            mState.currentApplianceName = ApplianceSelector;
            [self.room setMemberState:mState];
            break;
        }
        case NETToolModelTypeText:
        {
            NSLog(@"test~~~~~~  use Text");
            WhiteMemberState *mState = [[WhiteMemberState alloc] init];
            mState.currentApplianceName = ApplianceText;
            [self.room setMemberState:mState];
            break;
        }
        case NETToolModelTypeEraser:
        {
            NSLog(@"test~~~~~~  use Eraser");
            WhiteMemberState *mState = [[WhiteMemberState alloc] init];
            mState.currentApplianceName = ApplianceEraser;
            [self.room setMemberState:mState];
            break;
        }
        case NETToolModelTypeArrow:
        {
            NSLog(@"test~~~~~~  use Arrow");
            WhiteMemberState *mState = [[WhiteMemberState alloc] init];
            mState.currentApplianceName = ApplianceArrow;
            [self.room setMemberState:mState];
            break;
        }
        case NETToolModelTypeLaserPointer:
        {
            NSLog(@"test~~~~~~  use Laser Pointer");
            WhiteMemberState *mState = [[WhiteMemberState alloc] init];
            mState.currentApplianceName = ApplianceLaserPointer;
            [self.room setMemberState:mState];
            break;
        }
        case NETToolModelTypeLaserEllipse:
        {
            NSLog(@"test~~~~~~  use Ellipse");
            WhiteMemberState *mState = [[WhiteMemberState alloc] init];
            mState.currentApplianceName = ApplianceEllipse;
            [self.room setMemberState:mState];
            break;
        }
        case NETToolModelTypeLaserRectangle:
        {
            NSLog(@"test~~~~~~  use Laser Rectangle");
            WhiteMemberState *mState = [[WhiteMemberState alloc] init];
            mState.currentApplianceName = ApplianceRectangle;
            [self.room setMemberState:mState];
            break;
        }
        case NETToolModelTypeLaserStraight:
        {
            NSLog(@"test~~~~~~  use Straight");
            WhiteMemberState *mState = [[WhiteMemberState alloc] init];
            mState.currentApplianceName = ApplianceStraight;
            [self.room setMemberState:mState];
            break;
        }
        case NETToolModelTypeLaserHand:
        {
            NSLog(@"test~~~~~~  use Hand");
            WhiteMemberState *mState = [[WhiteMemberState alloc] init];
            mState.currentApplianceName = ApplianceHand;
            [self.room setMemberState:mState];
            break;
        }
        case NETToolModelTypeLaserGeometric:
        {
            NSLog(@"test~~~~~~  use Geometric");
            NSLog(@"几何图形展开功能");

            break;
        }
        case NETToolModelTypeLaserMore:
        {
            NSLog(@"test~~~~~~  use More");
            NSLog(@"展开更多");
            
            break;
        }
        default:
            break;
    }
}

- (void)restoreButton
{
    if (self.currentSelectButton) {
        self.currentSelectButton.adjustsImageWhenHighlighted = NO;
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
