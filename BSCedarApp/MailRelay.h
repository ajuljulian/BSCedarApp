//
//  MailRelay.h
//  BSCedarApp
//
//  Created by Ara Juljulian on 4/21/15.
//  Copyright (c) 2015 Ara Juljulian. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MailMessage;

@interface MailRelay : NSObject

-(NSString *) hello;
-(BOOL) send:(MailMessage *)message;

@end
