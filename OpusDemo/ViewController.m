//
//  ViewController.m
//  OpusDemo
//
//  Created by 刘华坤 on 2020/1/14.
//  Copyright © 2020 liuhuakun. All rights reserved.
//

#import "ViewController.h"
#import "HKOpusManager.h"

@interface ViewController ()

@property (nonatomic, strong) HKOpusManager *opusManager;

@end

@implementation ViewController

#pragma mark lazy load
- (HKOpusManager *)opusManager {
    if (!_opusManager) {
        _opusManager = [HKOpusManager sharedManager];
    }
    return _opusManager;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

// 模拟接收到的数据data【此数据可由BLE或其他通讯传输协议发送过来】
- (void)receiveOpusData:(NSData *)data {
    // 注：data.length 需要等于40，如果不等于40需要对data进行分割
    NSData *pcmData = [self.opusManager decodeOpusData:data];
    NSLog(@"获取到的pcmData = %@", pcmData);
}


@end
