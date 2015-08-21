//
//  NSMutableArray+Extend.m
//  ObjCExamples
//
//  Created by admin on 8/17/15.
//  Copyright (c) 2015 hoangdangtrung. All rights reserved.
//

#import "NSMutableArray+Extend.h"

@implementation NSMutableArray (Extend)
//- (void) reverse {
//    if (self.count < 2) {
//        return;
//    } else {
//        for (int i =0; i < self.count / 2; i++) {
//            [self exchangeObjectAtIndex:i withObjectAtIndex:self.count - i - 1];
//        }
//    }
//}

- (void) countWordOfString {
    NSCountedSet *countedSet = [[NSCountedSet alloc] initWithArray:self];
    NSLog(@"%@",countedSet);
}

- (NSArray*) removeTrivialWordsInArray {
    NSArray *trivialWordsArray= @[@"is", @"a", @"an", @"i", @"the", @"am", @"to", @"were", @"was", @"are", @"of", @"for", @"as", @"our", @"their", @"but", @"one", @"by", @"and", @"we",@"in", @"be", @"own", @"so", @"have"];
    [self removeObjectsInArray:trivialWordsArray];
    return self;
}


@end
