//
//  NSString+Seapunkify.m
//  ScratchPad
//
//  Created by pat on 16/02/2015.
//  Copyright (c) 2015 lolnope. All rights reserved.
//

#import "NSString+Seapunkify.h"

@implementation NSString (Seapunkify)

+(NSString *)seapunkifyString:(NSString *)string {
    NSString *returnString = string;
    
    NSDictionary *seapunkDictionary = @{@"a" : @"\u0394",
                                        @"b" : @"\u03B2",
                                        @"c" : @"\u00A9",
                                        @"d" : @"\u20AB",
                                        @"e" : @"\u03A3",
                                        @"f" : @"\u0192",
                                        @"g" : @"\u011C",
                                        @"h" : @"\u03BB",
                                        @"i" : @"\u019A",
                                        @"j" : @"\u0134",
                                        @"k" : @"\u049A",
                                        @"l" : @"\u02E9",
                                        @"m" : @"\u264F",
                                        @"n" : @"\u014A",
                                        @"o" : @"\u262F",
                                        @"p" : @"\u03C1",
                                        @"q" : @"\u03D8",
                                        @"r" : @"\u00AE",
                                        @"s" : @"\uFF04",
                                        @"t" : @"\u271E",
                                        @"u" : @"\u03A9",
                                        @"v" : @"\u221A",
                                        @"w" : @"\u2646",
                                        @"x" : @"\u2653",
                                        @"y" : @"\u00A5",
                                        @"z" : @"\u017E"
                                        };
    NSArray *keys = [seapunkDictionary allKeys];
    for (NSString *key in keys) {
        returnString = [returnString stringByReplacingOccurrencesOfString:key withString:seapunkDictionary[key]];
    }
    
    NSArray *seapunkPrefixSuffixArray = @[@"YUNG", @"420", @"bae", @"SAINT", @"fam"];
    int randomNumber = arc4random_uniform(seapunkPrefixSuffixArray.count-1);
    returnString = [NSString stringWithFormat:@"%@%@", seapunkPrefixSuffixArray[randomNumber],returnString];
    
    return returnString;

}

@end
