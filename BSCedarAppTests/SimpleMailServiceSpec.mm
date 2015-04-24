#import <Cedar/Cedar.h>
#import "SimpleMailService.h"
#import "MailMessage.h"
#import "MailRelay.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(SimpleMailServiceSpecSpec)

describe(@"SimpleMailService", ^{
    __block SimpleMailService *mailService;
    __block MailMessage *message;
    __block MailRelay   *mailRelay;
    __block id<CedarDouble> fakeMailRelay;
    __block id<CedarDouble,Encryptor> fakeEncryptor;

    describe(@"when invoked with the default initializer", ^{
        
        beforeEach(^{
            mailRelay = [[MailRelay alloc] init];
            mailService = [[SimpleMailService alloc] init];
            message = [[MailMessage alloc] init];
            message.from = @"bugs@bunny.com";
            message.to = @"daffy@duck.com";
            message.subject = @"my carrot";
            message.body = @"where's my carrot, Daffy Duck?";
        });
        
        it(@"send should return true if mailRelay is set", ^{
            fakeMailRelay = nice_fake_for(MailRelay.class);
            fakeMailRelay stub_method(@selector(send:)).and_return(true);
            mailService.relay = fakeMailRelay;
            [mailService send:message] should be_truthy;
        });
        
        it(@"send should return false if mailRelay is not set", ^{
            [mailService send:message] should be_falsy;
        });
        
        it(@"sendEncrypted should return true if both mailRelay and encryptor are set", ^{
            fakeMailRelay = fake_for(MailRelay.class);
            fakeMailRelay stub_method(@selector(send:)).and_return(true);
            fakeEncryptor = fake_for(@protocol(Encryptor));
            fakeEncryptor stub_method(@selector(encrypt:)).and_return(@"....");
            mailService.relay = fakeMailRelay;
            mailService.encryptor = fakeEncryptor;
            [mailService sendEncrypted:message] should be_truthy;
        });
        
    });
    
});

SPEC_END
