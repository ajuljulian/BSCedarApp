//
//  MailRelay.m
//  BSCedarApp
//
//  Created by Ara Juljulian on 4/21/15.
//  Copyright (c) 2015 Ara Juljulian. All rights reserved.
//

#import "MailRelay.h"
#import "MailMessage.h"

@implementation MailRelay

-(NSString *)hello {
    return @"hello, back!";
}

-(BOOL) send:(MailMessage *)message {
    if (message.from == nil || message.to == nil || message.subject == nil || message.body == nil) {
        return FALSE;
    }
    else {
        return TRUE;
    }
}
@end
