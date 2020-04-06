#import "Combinator.h"

@implementation Combinator


/*- (long)factorial: (long)chislo{
    if (chislo == 1){
        return 1;
    }else{
        return [self factorial:chislo-1] * chislo;
        
    }
    
}

-(double)factorial:(long)chislo{
    long fact=1;
    if(chislo==1)
    {
        return fact;
    }
    else
    {
        
        for(int i=1;i<=chislo;++i)
        {
           
            fact*=i;
        }
        return fact;
    }
}
- (NSNumber*)chechChooseFromArray:(NSArray <NSNumber*>*)array {
    if (array[1].intValue == array[0].intValue) { return @1;
    }
   // if([array count]==2){
    
    int m=[array[0] intValue];
    int n=[array[1]intValue];
    //long k=1;
    int sochet;
        for(int k=1;k<n;k++){
   // while(k<n){
        sochet=[self factorial:n]/[self factorial:n-k]*[self factorial:k];
        if(sochet==m)
        {
            return [NSNumber numberWithInt:k];
            break;
        }
     //   ++k;
    }
        return nil;
   /* }
    else
    {
        return nil;
    }
  
}*/
- (NSNumber*)chechChooseFromArray:(NSArray <NSNumber*>*)array {
    
    NSNumber *result = nil;
    
    long m = [array[0] intValue];
    
    long n  = [array[1] intValue];
    
    long sochet;
    
    for (int x = 1; x < n; x++) {
        
        sochet = [self factorial:n] / ([self factorial:x] * [self factorial:(n - x)]);
        
        if (sochet == m) {
            
            result = @(x);
            
            break;
        }
    }
    
    return result;
}

- (long)factorial:(int)number {

    double result = 1;

    for (int i = 1; i <= number; i++) {
        
        result *= i;
    }

    return result;
}
    @end
    
