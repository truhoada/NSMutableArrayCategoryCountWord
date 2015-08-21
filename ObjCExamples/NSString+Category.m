//
//  NSString+Category.m
//  ObjCExamples
//
//  Created by admin on 8/18/15.
//  Copyright (c) 2015 hoangdangtrung. All rights reserved.
//

#import "NSString+Category.h"

@implementation NSString (Category)

- (NSString*) removeSymbol {
    NSString *string;
    string = [NSString stringWithString:self];
    string = [string stringByReplacingOccurrencesOfString:@"," withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"." withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"\"" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"\t" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"(" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@")" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"'s" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"'ve" withString:@""];
    string = [string lowercaseString];
    
    return string;
}
@end
