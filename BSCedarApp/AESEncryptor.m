//
//  AESEncryptor.m
//  BSCedarApp
//
//  Created by Ara Juljulian on 4/21/15.
//  Copyright (c) 2015 Ara Juljulian. All rights reserved.
//

#import "AESEncryptor.h"

@implementation AESEncryptor

- (NSString *) encrypt:(NSString *)text {
    
    NSMutableString *mutableString = [text mutableCopy];
    for (int i = 0; i < text.length; i++) {
        [mutableString replaceCharactersInRange:NSMakeRange(i, 1) withString:@"."];
    }

    return mutableString;
}

@end
