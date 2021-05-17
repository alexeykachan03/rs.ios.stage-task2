#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    NSMutableString *answer = [[NSMutableString alloc] init];
    int i = 0;
    if (numbersArray == nil || numbersArray.count == 0) {
            return @"";
            }
    for(i = 0; i < [numbersArray count]; i++){
        if([[numbersArray objectAtIndex:i] intValue] < 0){
            return @"Negative numbers are not valid for input.";
            }
        if([[numbersArray objectAtIndex:i] intValue] > 255){
            return @"The numbers in the input array can be in the range from 0 to 255.";
                }
        if([numbersArray count] > 4){
            return false;
            }
        [answer appendString:([[numbersArray objectAtIndex:i] stringValue])];
        if(i != 3){
            [answer appendString:(@".")];
                }
    }
    for(int j = i; j < 4; j++){
            [answer appendString:(@"0")];
        if(j != 3){
            [answer appendString:(@".")];
        }
    }
    return answer;
    }

@end
