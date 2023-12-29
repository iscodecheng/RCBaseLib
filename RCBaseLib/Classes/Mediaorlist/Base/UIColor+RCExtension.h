//
//  UIColor+RCExtension.h
//  RCBaseLib
//
//  Created by chenglong on 2023/12/29.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (RCExtension)

//以#开头的字符串（不区分大小写），如：#ffFFff，若需要alpha，则传#abcdef255，不传默认为1
+ (UIColor *)colorWithString:(NSString *)name;
+ (UIColor *)colorWithString:(NSString *)name alpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END
