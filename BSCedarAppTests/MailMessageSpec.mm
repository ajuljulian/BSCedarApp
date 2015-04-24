#import <Cedar/Cedar.h>
#import "MailMessage.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(MailMessageSpec)

describe(@"MailMessage", ^{
    __block MailMessage *mailMessage;

    beforeEach(^{
        mailMessage = [[MailMessage alloc] init];
    });
    
    it(@"description returns the from address, the to address, the subject and the body", ^{
        mailMessage.from = @"bugs@bunny.com";
        mailMessage.to = @"daffy@duck.com";
        mailMessage.subject = @"hello Daffy!";
        mailMessage.body = @"how are you?";
        
        NSLog(@"%@", [mailMessage description]);
        [[mailMessage description] isEqualToString:[NSString stringWithFormat:@"from: %@\nto: %@\nsubject: %@\nbody: %@\n", mailMessage.from,
          mailMessage.to, mailMessage.subject, mailMessage.body]] should be_truthy;
    });
});

SPEC_END
