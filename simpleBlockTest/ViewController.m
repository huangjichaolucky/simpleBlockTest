//
//  ViewController.m
//  simpleBlockTest
//
//  Created by zhs on 15/7/20.
//  Copyright (c) 2015年 zhs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [self returnTextString:^(NSString *showText) {
        NSLog(@"block  :  %@ ", showText);
    }];
}


- (void)viewWillAppear:(BOOL)animated {
    self.returnTextBlock(@"hello");

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)returnTextString:(block_ReturnText)block {
    self.returnTextBlock = block;
}

@end
