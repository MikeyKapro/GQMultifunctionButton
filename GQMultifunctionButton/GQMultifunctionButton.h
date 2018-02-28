//
//  WWMultifunctionButton.h
//  Call
//
//  Created by admin on 2017/9/5.
//  Copyright © 2017年 young. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, MultifunctionBtnType) {
    MultifunctionBtnTypeTopImgBottomLb, // 图上文下
    MultifunctionBtnTypeBottomImgTopLb, // 图下文上
    MultifunctionBtnTypeLeftImgRightLb, // 图左文右
    MultifunctionBtnTypeRightImgLeftLb, // 图右文左
};

@interface GQMultifunctionButton : UIButton

// 图片大小
@property (nonatomic, assign) CGSize imageSize;
// 文本高度
@property (nonatomic, assign) CGFloat lableH;
// 图文上下间距
@property (nonatomic, assign) CGFloat marginY;
// 图文左右间距
@property (nonatomic, assign) CGFloat marginX;


/**
 创建按钮

 @param frame frame
 @param imageName 图片名称
 @param title 文字
 @param titleColor 文字颜色
 @param font 文字字号
 @param fontName 文字字形名称
 @param target target
 @param action action
 @param buttonType 按钮种类
 @return 返回按钮
 */
- (instancetype)initWithFrame:(CGRect)frame
                    imageName:(NSString *)imageName
                        title:(NSString *)title
                   titleColor:(UIColor *)titleColor
                         font:(CGFloat)font
                     fontName:(NSString *)fontName
                       target:(id)target
                       action:(SEL)action
                   buttonType:(MultifunctionBtnType)buttonType;

@end
