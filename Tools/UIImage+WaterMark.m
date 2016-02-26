//
//  UIImage+WaterMark.m
//  WaterMark-image-String
//
//  Created by 蔡杰Alan on 16/2/26.
//  Copyright © 2016年 Allan. All rights reserved.
//

#import "UIImage+WaterMark.h"

@implementation UIImage (WaterMark)
- (UIImage*)waterMarkWithImage:(UIImage *)image imageRect:(CGRect)imgRect alpha:(CGFloat)alpha
{
    return [self waterMarkWithString:nil rect:CGRectZero attribute:nil image:image imageRect:imgRect alpha:alpha];
}

- (UIImage*)waterMarkWithImage:(UIImage*)image imagePoint:(CGPoint)imgPoint alpha:(CGFloat)alpha
{
    return [self waterMarkWithString:nil point:CGPointZero attribute:nil image:image imagePoint:imgPoint alpha:alpha];
}

- (UIImage*)waterMarkWithString:(NSString*)str rect:(CGRect)strRect attribute:(NSDictionary *)attri
{
    return [self waterMarkWithString:str rect:strRect attribute:attri image:nil imageRect:CGRectZero alpha:0];
}

- (UIImage*)waterMarkWithString:(NSString*)str point:(CGPoint)strPoint attribute:(NSDictionary*)attri
{
    return [self waterMarkWithString:str point:strPoint attribute:attri image:nil imagePoint:CGPointZero alpha:0];
}

- (UIImage*)waterMarkWithString:(NSString*)str point:(CGPoint)strPoint attribute:(NSDictionary*)attri image:(UIImage*)image imagePoint:(CGPoint)imgPoint alpha:(CGFloat)alpha
{
    UIGraphicsBeginImageContext(self.size);
    [self drawAtPoint:CGPointMake(0, 0) blendMode:kCGBlendModeNormal alpha:1.0];
    if (image) {
        [image drawAtPoint:imgPoint blendMode:kCGBlendModeNormal alpha:alpha];
    }
    
    if (str) {
        [str drawAtPoint:strPoint withAttributes:attri];
    }
    UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resultImage;
    
}

- (UIImage*)waterMarkWithString:(NSString*)str rect:(CGRect)strRect attribute:(NSDictionary *)attri image:(UIImage *)image imageRect:(CGRect)imgRect alpha:(CGFloat)alpha
{
    UIGraphicsBeginImageContext(self.size);
    [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height) blendMode:kCGBlendModeNormal alpha:1.0];
    if (image) {
        [image drawInRect:imgRect blendMode:kCGBlendModeNormal alpha:alpha];
    }
    
    if (str) {
        [str drawInRect:strRect withAttributes:attri];
    }
    UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resultImage;
}

@end
