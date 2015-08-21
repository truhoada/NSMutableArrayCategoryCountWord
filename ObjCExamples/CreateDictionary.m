//
//  CreateDictionary.m
//  ObjCExamples
//
//  Created by admin on 8/17/15.
//  Copyright (c) 2015 hoangdangtrung. All rights reserved.
//

#import "CreateDictionary.h"

@interface CreateDictionary ()

@end

@implementation CreateDictionary

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary* dic01 = [NSDictionary dictionaryWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"dictionary" ofType:@"plist"]];
    NSLog(@"%@", dic01);
    
    NSDictionary* dic02 = @{@"model" : @"Exciter 150", @"color": @"black", @"fuel Injection": @true};
    NSLog(@"%@", dic02);
    
    NSDictionary* dic03 = [[NSDictionary alloc] initWithObjectsAndKeys:
                           @"Exciter 150", @"model",
                           @"black", @"color",
                           @true, @"fuel Injection", nil];
    NSLog(@"%@", dic03);
    
    if (dic03[@"model"] == [dic03 objectForKey:@"model"]) {
        NSLog(@"they are same");
    }
    
    NSLog(@"dic03 all keys %@" , [dic03 allKeys]);
    NSLog(@"dic03 all values %@" , [dic03 allValues]);
    
    // Create NSDictionary of A, B, C
    NSDictionary *aDic = @{@"A":@[@"A",@"An",@"And"],
                           @"B":@[@"Be",@"Bee",@"Been"],
                           @"Cat":@{@"Type":@"Europe",@"Color":@"Black",@"Hobby":@"Fish"}};
    
    
    NSArray *arrayOfAWords = [aDic objectForKey:@"A"];
    for (NSString *aString in arrayOfAWords) {
        NSLog(@"\n %@", aString);
    }
    
    NSArray *arrayOfBWords = [aDic objectForKey:@"B"];
    for (NSString *aString in arrayOfBWords) {
        NSLog(@"\n %@", aString);
    }
    
    NSDictionary *dicOfCat = [aDic objectForKey:@"Cat"];
    NSString *catType = [dicOfCat objectForKey:@"Type"];
    NSLog(@"\n %@", catType);
    
    NSString *catColor = [dicOfCat objectForKey:@"Color"];
    NSLog(@"\n %@", catColor);
    
    NSString *catHobby = [dicOfCat objectForKey:@"Hobby"];
    NSLog(@"\n %@", catHobby);
    
    // Read words from dictonary
    
    
    
    
}



@end
