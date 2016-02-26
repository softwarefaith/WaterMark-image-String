//
//  UIImage+WaterMark.h
//  WaterMark-image-String
//
//  Created by 蔡杰Alan on 16/2/26.
//  Copyright © 2016年 Allan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (WaterMark)

/**
 *  @brief Add a watermark image to the picture
 *
 *  @param backGroundImage Need picture watermark
 *  @param imageRect       The watermark image location, size
 
 *  @param alpha           Between the watermark image transparency, 
                           0~1, a part of the general assembly is transparency too completely 
                           cover the image watermarking
 *
 *  @return After adding the watermark picture
 */
-(UIImage*)waterMarkWithImage:(UIImage*)backGroundImage imageRect:(CGRect)imageRect alpha:(CGFloat) alpha;

/**
 *  @brief ditto
 *
 *  @param backGroundImage ditto
 *  @param imagePoint      The watermark image (0, 0) location
 *  @param alpha           ditto
 *
 *  @return ditto
 */
-(UIImage*)waterMarkWithImage:(UIImage*)backGroundImage imagePoint:(CGPoint)imagePoint alpha:(CGFloat) alpha;

/**
 *  @brief ditto
 *
 *  @param str     Watermark text
 *  @param strRect The location and size of the text
 *  @param attri   he text of the relevant attributes, set up their own
 *
 *  @return ditto
 */
-(UIImage*)waterMarkWithString:(NSString*)str rect:(CGRect)strRect attribute:(NSDictionary *)attri;
/**
 *  @brief ditto
 *
 *  @param str      ditto
 *  @param strPoint Text (0, 0) locations
 *  @param attri    ditto
 *
 *  @return ditto
 */

-(UIImage*)waterMarkWithString:(NSString*)str point:(CGPoint)strPoint attribute:(NSDictionary*)attri;

/**
 *  @brief ditto
 *
 *  @param str      ditto
 *  @param strPoint ditto
 *  @param attri    ditto
 *  @param image     Need picture watermark
 *  @param imgPoint The watermark image location, size
 *  @param alpha    ditto
 *
 *  @return ditto
 */
- (UIImage*)waterMarkWithString:(NSString*)str point:(CGPoint)strPoint attribute:(NSDictionary*)attri image:(UIImage*)image imagePoint:(CGPoint)imgPoint alpha:(CGFloat)alpha;
/**
 *  @brief ditto
 *
 *  @param str     ditto
 *  @param strRect ditto
 *  @param attri   ditto
 *  @param image   ditto
 *  @param imgRect ditto
 *  @param alpha   ditto
 *
 *  @return ditto
 */

- (UIImage*)waterMarkWithString:(NSString*)str rect:(CGRect)strRect attribute:(NSDictionary *)attri image:(UIImage *)image imageRect:(CGRect)imgRect alpha:(CGFloat)alpha;
@end
