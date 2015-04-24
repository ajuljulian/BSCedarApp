//
//  MailService.h
//  BSCedarApp
//
//  Created by Ara Juljulian on 4/20/15.
//  Copyright (c) 2015 Ara Juljulian. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MailMessage;

@protocol MailService <NSObject>

-(BOOL) send:(MailMessage *)message;
-(BOOL) sendEncrypted:(MailMessage *)message;

@end
