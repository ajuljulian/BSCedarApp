#import <Cedar/Cedar.h>
#import "AESEncryptor.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(AESEncryptorSpecSpec)

describe(@"AESEncryptor", ^{
    __block AESEncryptor *encryptor;

    beforeEach(^{
        encryptor = [[AESEncryptor alloc] init];
    });
    
    it(@"encrypting a string returns a same-length string with every character replaced by a dot.", ^{
        [[encryptor encrypt:@"how to you do?"] isEqualToString:@".............."] should be_truthy;
        [[encryptor encrypt:@""] isEqualToString:@""] should be_truthy;
    });
});

SPEC_END
