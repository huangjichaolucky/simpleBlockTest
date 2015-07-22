//
//  ViewController.h
//  simpleBlockTest
//
//  Created by zhs on 15/7/20.
//  Copyright (c) 2015年 zhs. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef void(^block_ReturnText) (NSString * showText);




@interface ViewController : UIViewController

@property (nonatomic, copy) block_ReturnText returnTextBlock;

- (void)returnTextString:(block_ReturnText)block;

@end

