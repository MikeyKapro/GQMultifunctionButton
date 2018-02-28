//
//  ViewController.m
//  GQMultifunctionButton
//
//  Created by luguoqing on 2018/2/28.
//  Copyright © 2018年 lgq. All rights reserved.
//

#import "ViewController.h"
#import "GQMultifunctionButton.h"

static CGFloat const k_btnHeight = 100;
static CGFloat const k_btnWidth = 100;
static CGFloat const k_font = 15;
static NSString * const k_imageName = @"myImage";
static NSString * const k_title = @"红包";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 图上文下
    [self showTopImgBottomLabBtn];
    
    // 图下文上
    [self showBottomImgTopLabBtn];
    
    // 图左文右
    [self showLeftImgRightLabBtn];
    
    // 图右文左
    [self showRightImgLeftLabBtn];
   
}

#pragma mark - 图上文下
- (void)showTopImgBottomLabBtn {
    
    UIColor *titleColor = [UIColor redColor];
    
    GQMultifunctionButton *TopImgBottomLbButton = [[GQMultifunctionButton alloc] initWithFrame:CGRectMake(100, 20, k_btnWidth, k_btnHeight) imageName:k_imageName title:k_title titleColor:titleColor font:k_font fontName:nil target:self action:@selector(actionClick) buttonType:MultifunctionBtnTypeTopImgBottomLb];
    TopImgBottomLbButton.imageSize = CGSizeMake(20, 20);
    TopImgBottomLbButton.marginY = 5;
    TopImgBottomLbButton.lableH = 10;
    TopImgBottomLbButton.backgroundColor = [UIColor blueColor];
    [self.view addSubview:TopImgBottomLbButton];
}

#pragma mark - 图下文上
- (void)showBottomImgTopLabBtn {
    
    UIColor *titleColor = [UIColor redColor];
    
    GQMultifunctionButton *BottomImgTopLbButton = [[GQMultifunctionButton alloc] initWithFrame:CGRectMake(100, 140, k_btnWidth, k_btnHeight) imageName:k_imageName title:k_title titleColor:titleColor font:k_font fontName:nil target:self action:@selector(actionClick) buttonType:MultifunctionBtnTypeBottomImgTopLb];
    BottomImgTopLbButton.imageSize = CGSizeMake(20, 20);
    BottomImgTopLbButton.marginY = 5;
    BottomImgTopLbButton.lableH = 10;
    BottomImgTopLbButton.backgroundColor = [UIColor blueColor];
    [self.view addSubview:BottomImgTopLbButton];
}

#pragma mark - 图左文右
- (void)showLeftImgRightLabBtn {
    
    UIColor *titleColor = [UIColor redColor];
    
    GQMultifunctionButton *LeftImgRightLbButton = [[GQMultifunctionButton alloc] initWithFrame:CGRectMake(100, 260, k_btnWidth, k_btnHeight) imageName:k_imageName title:k_title titleColor:titleColor font:k_font fontName:nil target:self action:@selector(actionClick) buttonType:MultifunctionBtnTypeLeftImgRightLb];
    LeftImgRightLbButton.imageSize = CGSizeMake(20, 20);
    LeftImgRightLbButton.marginX = 5;
    LeftImgRightLbButton.backgroundColor = [UIColor blueColor];
    [self.view addSubview:LeftImgRightLbButton];
}

#pragma mark - 图右文左
- (void)showRightImgLeftLabBtn {
    
    UIColor *titleColor = [UIColor redColor];
    
    GQMultifunctionButton *RightImgLeftLbButton = [[GQMultifunctionButton alloc] initWithFrame:CGRectMake(100, 380, k_btnWidth, k_btnHeight) imageName:k_imageName title:k_title titleColor:titleColor font:k_font fontName:nil target:self action:@selector(actionClick) buttonType:MultifunctionBtnTypeRightImgLeftLb];
    RightImgLeftLbButton.imageSize = CGSizeMake(20, 20);
    RightImgLeftLbButton.marginX = 5;
    RightImgLeftLbButton.backgroundColor = [UIColor blueColor];
    [self.view addSubview:RightImgLeftLbButton];

}

#pragma mark - action
- (void)actionClick {
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
