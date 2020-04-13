#import "Combinator.h"

@implementation Combinator

- (NSNumber*)chechChooseFromArray:(NSArray <NSNumber*>*)array {
    
    NSNumber *result = nil;
    
    long m = [array[0] intValue];
    
    long n  = [array[1] intValue];
    
    long sochet;
    
    int x=1;
    while(x<n){
        
       sochet = [self factorial:n] / ([self factorial:x] * [self factorial:(n - x)]);
        
        if (sochet == m) {
            return [NSNumber numberWithInt:x];
            break;
        }
        x++;
    }
    
    return result;
}

- (long)factorial:(int)number {

    long result = 1;

    for (int i = 1; i <= number; i++) {
        
        result *= i;
    }

    return result;
}
    @end
    
