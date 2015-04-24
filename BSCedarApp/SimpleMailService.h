//
//  SimpleMailService.h
//  BSCedarApp
//
//  Created by Ara Juljulian on 4/21/15.
//  Copyright (c) 2015 Ara Juljulian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MailService.h"
#import "Encryptor.h"

@class MailMessage;
@class MailRelay;


@interface SimpleMailService : NSObject <MailService>

@property (nonatomic, strong) MailRelay *relay;
@property (nonatomic, strong) id<Encryptor> encryptor;

-(BOOL) send:(MailMessage *)message;
-(BOOL) sendEncrypted:(MailMessage *)message;

@end
