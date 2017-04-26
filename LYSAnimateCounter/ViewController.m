//
//  ViewController.m
//  LYSAnimateCounter
//
//  Created by jk on 2017/4/26.
//  Copyright © 2017年 Goldcard. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+LYSAnimateCounter.h"
#import "UIButton+LYSAnimateCounter.h"
//#import "UILabel+PPCounter.h"
//#import "UIButton+PPCounter.h"

@interface ViewController ()

@property(nonatomic,strong)UILabel *label;

@property(nonatomic,strong)UIButton *btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.label];
    [self.view addSubview:self.btn];
    __weak typeof (self)MyWeakSelf = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(6 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [MyWeakSelf.label lys_fromNumber:10 toNumber:100 duration:3 format:^NSString *(CGFloat number) {
            NSLog(@"label number = %f",number);
            return [NSString stringWithFormat:@"标签数量%.0f",number];
        }];
        [MyWeakSelf.btn lys_fromNumber:10 toNumber:100 duration:3 format:^NSString *(CGFloat number) {
            NSLog(@"button number = %f",number);
            return [NSString stringWithFormat:@"按钮数量%.2f",number];
        }];
    });
    // Do any additional setup after loading the view, typically from a nib.
}

-(UILabel*)label{
    if (!_label) {
        _label = [[UILabel alloc]initWithFrame:CGRectMake(20, 120, CGRectGetWidth(self.view.frame) - 40, 60)];
        _label.textColor = [UIColor redColor];
        _label.font = [UIFont systemFontOfSize:16];
        _label.layer.borderColor = [UIColor redColor].CGColor;
        _label.layer.borderWidth = 1;
        _label.layer.cornerRadius = 8.f;
        _label.layer.masksToBounds = YES;
    }
    return _label;
}

-(UIButton*)btn{
    if (!_btn) {
        _btn = [UIButton buttonWithType:UIButtonTypeCustom];
        _btn.frame = CGRectMake(20, CGRectGetMaxY(self.label.frame) + 20, CGRectGetWidth(self.view.frame) - 40, 60);
        [_btn setTitle:@"开始" forState:UIControlStateNormal];
        [_btn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        _btn.titleLabel.font = [UIFont systemFontOfSize:16];
    }
    return _btn;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
