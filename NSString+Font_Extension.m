//
//  NSString+Font_Extension.h

//
//  Created by 胡克柱 on 14/10/12.
//  Copyright (c) 2014年 mac. All rights reserved.
//
//

#import "NSString+Font_Extension.h"

@implementation NSString (Font_Extension)

- (CGSize)sizeWithFont:(UIFont *)font{
    NSDictionary *att = [NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName];
    return [self sizeWithAttributes:att];
}


- (CGSize)sizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size{
    NSDictionary *att = [NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName];
    return [self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:att context:nil].size;
}



- (CGSize)sizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size lineBreakMode:(NSLineBreakMode)lineBreakMode{

    NSDictionary *att = [NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName];
    return [self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:att context:nil].size;

}
@end
