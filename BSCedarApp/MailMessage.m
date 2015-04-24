//
//  MailMessage.m
//  BSCedarApp
//
//  Created by Ara Juljulian on 4/20/15.
//  Copyright (c) 2015 Ara Juljulian. All rights reserved.
//

#import "MailMessage.h"

@interface MailMessage ()


@end

@implementation MailMessage

- (NSString *)description {
    return [NSString stringWithFormat:@"from: %@\nto: %@\nsubject: %@\nbody: %@\n", self.from,
                                       self.to, self.subject, self.body];
}

@end
