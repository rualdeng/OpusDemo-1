//
//  HKOpusManager.h
//  OpusDemo
//
//  Created by 刘华坤 on 2020/1/14.
//  Copyright © 2020 liuhuakun. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HKOpusManager : NSObject

+ (instancetype)sharedManager;
/**
 * 将pcm格式压缩为opus格式
 * @param data pcm格式的音频data
 * @return opus格式的音频data
 */
- (NSData*)encodePCMData:(NSData*)data;
/**
 * 将opus格式解压为pcm格式
 * @param data opus格式的data
 * @return pcm格式的音频data
 */
- (NSData*)decodeOpusData:(NSData*)data;

@end

NS_ASSUME_NONNULL_END
