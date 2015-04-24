//
//  MailMessage.h
//  BSCedarApp
//
//  Created by Ara Juljulian on 4/20/15.
//  Copyright (c) 2015 Ara Juljulian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MailMessage : NSObject

@property (nonatomic, strong) NSString *from;
@property (nonatomic, strong) NSString *to;
@property (nonatomic, strong) NSString *subject;
@property (nonatomic, strong) NSString *body;

- (NSString *)description;

@end
