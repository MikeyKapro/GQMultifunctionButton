//
//  WWMultifunctionButton.m
//  Call
//
//  Created by admin on 2017/9/5.
//  Copyright © 2017年 young. All rights reserved.
//

#import "GQMultifunctionButton.h"

@interface GQMultifunctionButton ()

@property (nonatomic, assign) MultifunctionBtnType btnType;

@end

@implementation GQMultifunctionButton

#pragma mark - init
- (instancetype)initWithFrame:(CGRect)frame imageName:(NSString *)imageName title:(NSString *)title titleColor:(UIColor *)titleColor font:(CGFloat)font fontName:(NSString *)fontName target:(id)target action:(SEL)action buttonType:(MultifunctionBtnType)buttonType {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        [self setTitle:title forState:UIControlStateNormal];
        [self setTitleColor:titleColor forState:UIControlStateNormal];
        [self setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        
        if (fontName.length > 0) {
            
            self.titleLabel.font = [UIFont fontWithName:fontName size:font];
            
        }else{
            
            self.titleLabel.font = [UIFont systemFontOfSize:font];
        }
        
        self.btnType = buttonType;
        
    }
    
    return self;
}

#pragma mark - 布局
- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    switch (self.btnType) {
            
            // 图上文下
        case MultifunctionBtnTypeTopImgBottomLb:
            
            [self layoutTopImgBottomLb];
            break;
            
            // 图下文上
        case MultifunctionBtnTypeBottomImgTopLb:
            
            [self layoutBottomImgTopLb];
            break;
            
            // 图左文右
        case MultifunctionBtnTypeLeftImgRightLb:
            
            [self layoutLeftImgRightLb];
            break;
            
            // 图右文左
        case MultifunctionBtnTypeRightImgLeftLb:
            
            [self layoutRightImgLeftLb];
            break;
            
        default:
            break;
    }
}

#pragma mark -- 图上文下
- (void)layoutTopImgBottomLb {
    
    CGFloat imageW = self.imageSize.width; //图片宽
    CGFloat imageH = self.imageSize.height; //图片高
    CGFloat marginY = self.marginY; //图文间距
    CGFloat lableW = self.frame.size.width; //图片宽
    CGFloat lableH = self.lableH;
    
    CGFloat contentH = imageH + marginY + lableH;//内容的高度
    CGFloat contentY = (self.frame.size.height - contentH) / 2.0;//起点Y
    
    self.imageView.frame = CGRectMake((self.frame.size.width - imageW)/2.0, contentY, imageW, imageH);
    self.titleLabel.frame = CGRectMake(0, CGRectGetMaxY(self.imageView.frame) + marginY, lableW, lableH);
}

#pragma mark -- 图下文上
- (void)layoutBottomImgTopLb {
    
    CGFloat imageW = self.imageSize.width; //图片宽
    CGFloat imageH = self.imageSize.height; //图片高
    CGFloat marginY = self.marginY; //图文间距
    CGFloat lableW = self.frame.size.width; //图片宽
    CGFloat lableH = self.lableH;
    
    CGFloat contentH = imageH+marginY+lableH;//内容的高度
    CGFloat contentY = (self.frame.size.height-contentH)/2.0;//起点Y
    
    self.imageView.frame = CGRectMake((self.frame.size.width-imageW)/2.0, self.frame.size.height -contentY - imageH, imageW, imageH);
    self.titleLabel.frame = CGRectMake(0, contentY, lableW, lableH);
    
}


#pragma mark -- 图左文右
- (void)layoutLeftImgRightLb {
    
    CGFloat imageW = self.imageSize.width; //图片宽
    CGFloat imageH = self.imageSize.height; //图片高
    CGFloat marginX = self.marginX;
    
    CGFloat titleLabW=[self sizeWithFont:self.titleLabel.font maxW:MAXFLOAT maxH:20 text:self.titleLabel.text].width;
    CGFloat contentW = titleLabW+marginX+imageW;
    CGFloat contentX = (self.frame.size.width-contentW)/2.0;
    
    self.titleLabel.frame = CGRectMake(CGRectGetMaxX(self.imageView.frame)+marginX, 0, titleLabW, self.frame.size.height);
    
    self.imageView.frame = CGRectMake(contentX, (self.frame.size.height-imageH)/2.0, imageW, imageH);

}

#pragma mark -- 图右文左
- (void)layoutRightImgLeftLb {
    
    CGFloat imageW = self.imageSize.width; //图片宽
    CGFloat imageH = self.imageSize.height; //图片高
    CGFloat marginX = self.marginX;
    
    CGFloat titleLabW=[self sizeWithFont:self.titleLabel.font maxW:MAXFLOAT maxH:20 text:self.titleLabel.text].width;
    CGFloat contentW = titleLabW+marginX+imageW;
    CGFloat contentX = (self.frame.size.width-contentW)/2.0;
    
    self.titleLabel.frame = CGRectMake(contentX, 0, titleLabW, self.frame.size.height);
    
    self.imageView.frame = CGRectMake(contentX + titleLabW +marginX, (self.frame.size.height-imageH)/2.0, imageW, imageH);
}

#pragma mark - 计算文本大小
- (CGSize)sizeWithFont:(UIFont *)font maxW:(CGFloat)maxW maxH:(CGFloat)maxH text:(NSString *)text
{
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = font;
    CGSize maxSize = CGSizeMake(maxW, maxH);
    
    return [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;

}

@end
