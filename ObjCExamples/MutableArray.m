//
//  MutableArray.m
//  ObjCExamples
//
//  Created by admin on 8/17/15.
//  Copyright (c) 2015 hoangdangtrung. All rights reserved.
//

#import "MutableArray.h"
#import "NSMutableArray+Extend.h"
#import "NSString+Category.h"

@interface MutableArray ()

@end

@implementation MutableArray

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *string = [NSString stringWithFormat:@"\t\t\t\t I HAVE A DREAM \n\t\t\t\t (Luther King)\n\n\t I am happy to join with you today in what will go down in history as the greatest demonstration for freedom in the history of our nation.\n\n\t Five score years ago, a great American, in whose symbolic shadow we stand today, signed the Emancipation Proclamation. This momentous decree came as a great beacon light of hope to millions of Negro slaves who had been seared in the flames of withering injustice. It came as a joyous daybreak to end the long night of their captivity.\n\n\t But one hundred years later, the Negro still is not free. One hundred years later, the life of the Negro is still sadly crippled by the manacles of segregation and the chains of discrimination. One hundred years later, the Negro lives on a lonely island of poverty in the midst of a vast ocean of material prosperity. One hundred years later, the Negro is still languished in the corners of American society and finds himself an exile in his own land. And so we've come here today to dramatize a shameful condition.\n\n\t In a sense we've come to our nation's capital to cash a check. When the architects of our republic wrote the magnificent words of the Constitution and the Declaration of Independence, they were signing a promissory note to which every American was to fall heir. This note was a promise that all men, yes, black men as well as white men, would be guaranteed the \"unalienable Rights\" of \"Life, Liberty and the pursuit of Happiness.\" It is obvious today that America has defaulted on this promissory note, insofar as her citizens of color are concerned. Instead of honoring this sacred obligation, America has given the Negro people a bad check, a check which has come back marked \"insufficient funds.\""];
    
    NSString *stringRemoveSymbol = [[NSString alloc] initWithString:string];
    stringRemoveSymbol = [stringRemoveSymbol removeSymbol];
    NSLog(@"%@\n\n",stringRemoveSymbol);

    NSMutableArray *wordsArray = [NSMutableArray arrayWithArray:[stringRemoveSymbol componentsSeparatedByString:@" "]];
    
    [wordsArray removeTrivialWordsInArray];
   
    [self writeln:string];
    
    [wordsArray countWordOfString];
}

@end

/* Create MutableArray */
//    NSMutableArray* arr1 = [NSMutableArray arrayWithArray:@[@"ABC", @3.14, @true]];
//    UIImage* photo = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://www.joomlaworks.net/plugins/content/jw_sigpro/jw_sigpro/includes/images/transparent.gif"]]];
//    [arr1 addObject:photo];
//
//    NSLog(@"%ld", arr1.count);
//    NSLog(@"%ld", [arr1 count]); //count la getter method cua NSArray
//
//    arr1[0] = photo;
//    NSLog(@"%@", arr1[0]);
//
//    [arr1 replaceObjectAtIndex:0 withObject:@100];
//    NSLog(@"%@", arr1[0]);
//
//    [arr1 insertObject:@"Hello" atIndex:0];
//
//    NSLog(@"----------------");
//    [arr1 enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
//        NSLog(@"%@", obj);
//    }];
//
//    NSMutableArray * arr2 = [NSMutableArray arrayWithArray:@[@1, @2, @3, @4, @5]];
//    //[arr2 exchangeObjectAtIndex:0 withObjectAtIndex: arr2.count - 1];
//    [arr2 reverse];
//    NSLog(@"%@", arr2);