#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    if (array == nil || array.count == 0 || ![array[0] isKindOfClass:NSArray.class]){
           return @[];
       }
    NSMutableArray *numbersArray = [[NSMutableArray alloc] init];
    NSMutableArray *stringsArray = [[NSMutableArray alloc] init];
    
    for (NSArray *subArray in array) {
        for(int i = 0; i < [subArray count]; i++){
            if([subArray.firstObject isKindOfClass:NSNumber.class]){
            [numbersArray addObject:[subArray objectAtIndex:i]];
                
            }
            else [stringsArray addObject:[subArray objectAtIndex:i]];
        }
    }
    [numbersArray sortUsingSelector:@selector(compare:)];
    [stringsArray sortUsingSelector:@selector(compare:)];
    NSMutableArray *result = [[NSMutableArray alloc] init];
    [result addObjectsFromArray:numbersArray];
    [result addObjectsFromArray:stringsArray];
    return result;
}

@end
// NSArray *inputArray = @[@[@3,@2,@1],@[@4,@6,@5],@[@9,@7,@8]];
//NSArray *resultArray = @[@1,@2,@3,@4,@5,@6,@7,@8,@9];
