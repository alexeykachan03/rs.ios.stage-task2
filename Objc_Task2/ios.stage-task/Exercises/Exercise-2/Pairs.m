#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    int count = 0;
    for( int i = 0; i < [array count]; i++){
        for(int j = 0; j <[array count]; j++){
            if([[array objectAtIndex:i] intValue] - [[array objectAtIndex:j] intValue] == [number intValue]){
                count++;
            }
        }
    }
    return count;
}

@end
