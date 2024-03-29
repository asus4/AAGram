//
//  AADomUtil.m
//  AAEdit
//
//  Created by Koki Ibukuro on 2014/01/26.
//  Copyright (c) 2014年 Koki Ibukuro. All rights reserved.
//

#import "AADomUtil.h"

@implementation AADomUtil

+ (NSString*) wrapSpanString:(NSString *)str withColor:(NSColor *)color {
    UInt8 r = color.redComponent * 255;
    UInt8 g = color.greenComponent * 255;
    UInt8 b = color.blueComponent * 255;
    
    return [NSString stringWithFormat:@"<span style=\"color:#%02x%02x%02x;\">%@</span>",r,g,b,str];
}

const UniChar escapes[] = {'\n','\b','\r','\t'};
+ (BOOL) isEscape:(UniChar)c {
    uint length = sizeof escapes / sizeof escapes[0];
    for(uint i=0; i<length; ++i) {
        if(escapes[i] == c) {
            return YES;
        }
    }
    return NO;
}

@end
