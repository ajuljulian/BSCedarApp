#import <Cedar/Cedar.h>
#import "MailRelay.h"
#import "MailMessage.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(MailRelaySpecSpec)

describe(@"MailRelay", ^{
    __block MailRelay *mailRelay;
    __block MailMessage *message;

    beforeEach(^{
        mailRelay = [[MailRelay alloc] init];
        message = [[MailMessage alloc] init];
    });
    
    it(@"hello returns the string 'hello, back!'", ^{
        [[mailRelay hello] isEqualToString:@"hello, back!"] should be_truthy;
    });
    
    it(@"send returns TRUE if message contains non-nil from, to, subject, and body", ^{
        
        message.from = @"bugs@bunny.com";
        message.to = @"daffy@duck.com";
        message.subject = @"my carrot";
        message.body = @"where's my carrot, Daffy Duck?";
        [mailRelay send:message] == TRUE should be_truthy;
    });
    
    it(@"send returns FALSE if any of message's from, to, subject, or body fields are nil", ^{
        
        message.from = @"speedy@gonzales.com";
        [mailRelay send:message] == FALSE should be_truthy;
    });
});

SPEC_END
