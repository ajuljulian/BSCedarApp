//
//  Encryptor.h
//  BSCedarApp
//
//  Created by Ara Juljulian on 4/16/15.
//  Copyright (c) 2015 Ara Juljulian. All rights reserved.
//

@protocol Encryptor <NSObject>

- (NSString *) encrypt:(NSString *)text;

@end

