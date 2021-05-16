#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    UInt8 result = 0;
    NSMutableString *binary = [[NSMutableString alloc] init];
    NSMutableString *reversed = [[NSMutableString alloc] init];
    for (NSInteger i = 0; i < 8; i++) {
        [binary insertString:([NSString stringWithFormat:@"%d", n%2]) atIndex:0];
        [reversed appendString:([NSString stringWithFormat:@"%d", n%2])];
        n = n / 2;
    }
    for (NSInteger i = 0; i < 8; i++) {
        NSString *singleCharSubstring = [reversed substringWithRange:NSMakeRange((7-i), 1)];
        NSInteger *x = [singleCharSubstring intValue];
        if (x == 1) {
        result += pow(2, i);
        }
    }
    return result;
}
