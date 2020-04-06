#import "PolynomialConverter.h"

@implementation PolynomialConverter
- (NSString*)convertToStringFrom:(NSArray <NSNumber*>*)numbers {
    
    if([numbers count] == 0) {
    return nil;
    }
    
    NSArray *array = [numbers copy];
    
    int sizeOfArr=(int)[array count];
    NSInteger curValue;
    NSInteger exponent = 0;
    NSMutableString *result = [NSMutableString new];
    BOOL firstIteration=YES;
    for(int i=0;i<sizeOfArr;i++)
    {
        exponent=sizeOfArr-1-i;
        curValue=[array[i] integerValue];
    
        if(firstIteration)
        {
            
            if(curValue<0)
            {
                [result appendString:@"- "];
                curValue*=-1;
            }
            else if(curValue==0)
            {
                continue;
            }
      }
        else{
            if(curValue>0)
            {
                [result appendString:@" + "];
            }
            else if(curValue<0){
                [result appendString:@" - "];
                curValue*=-1;
            }
            else if(curValue==0){
                continue;
            }
        }
        
        firstIteration=NO;
        
        if(exponent!=0)
        {
            
            if(curValue!=1){
                [result appendFormat:@"%ld",(long)curValue];
                }
            [result appendFormat:@"x"];
            if(exponent!=1){
                if(curValue!=1){
                [result appendFormat:@"^%ld",(long)exponent];
                }
            }
           
        }
        else{
            [result appendFormat:@"%ld",(long)curValue];
        }
    }
    
    
    return result;
}
@end
