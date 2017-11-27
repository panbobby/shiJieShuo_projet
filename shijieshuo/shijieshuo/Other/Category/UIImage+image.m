//
//  UIImage+image.m
//  shijieshuo
//
//  Created by 潘逸轩 on 26/11/2017.
//  Copyright © 2017年 潘逸轩studio. All rights reserved.
//

#import "UIImage+image.h"

@implementation UIImage (image)
+(UIImage *)imageOriginalWithName:(NSString *)imageName{
   UIImage * image = [UIImage imageNamed:imageName];
   return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@end
