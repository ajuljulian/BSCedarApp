//
//  SimpleMailService.m
//  BSCedarApp
//
//  Created by Ara Juljulian on 4/21/15.
//  Copyright (c) 2015 Ara Juljulian. All rights reserved.
//

#import "SimpleMailService.h"
#import "Encryptor.h"
#import "MailRelay.h"
#import "Blindside.h"
#import "MailMessage.h"

@implementation SimpleMailService

/*
+ (BSInitializer *)bsInitializer {
    return [BSInitializer initializerWithClass:self
                                      selector:@selector(initWithEncryptor:)
                                  argumentKeys:@"myEncryptor", nil];
}

- (id)initWithEncryptor:(id)theEncryptor {
    NSLog(@"initializing with encryptor");
    
    if (self = [super init]) {
        
        encryptor = theEncryptor;
    }
    return self;
}
*/

-(BOOL) send:(MailMessage *)message {

    if (self.relay == nil) {
        return FALSE;
    }
    else {
        return [self.relay send:message];
    }
}

-(BOOL) sendEncrypted:(MailMessage *)message {
    
    if (self.relay == nil || self.encryptor == nil) {
        return FALSE;
    }
    else {
        NSString *encryptedMessageBody = [self.encryptor encrypt:message.body];
        message.body = encryptedMessageBody;
        return [self.relay send:message];
    }
}

@end
