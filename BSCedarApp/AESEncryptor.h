//
//  AESEncryptor.h
//  BSCedarApp
//
//  Created by Ara Juljulian on 4/21/15.
//  Copyright (c) 2015 Ara Juljulian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Encryptor.h"

@interface AESEncryptor : NSObject <Encryptor>

- (NSString *) encrypt:(NSString *)text;

@end
