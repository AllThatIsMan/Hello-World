//
//  main.m
//  Hello_World
//
//  Created by Scott Montgomery Stetzko on 8/26/14.
//  Copyright (c) 2014 Scott Montgomery Stetzko. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool
    {
        
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        //*********** Reading string from user input **************
        
        // This outputs a message for the user input
        NSLog(@"Please type in a word/words: ");
        
        // This returns the file/input or shared file/input associated with the standard input.
        NSFileHandle *input = [NSFileHandle fileHandleWithStandardInput];
        
        // NSData creates static data objects that can be used for data storage. In this case
        NSData *inputData = [input availableData];
        
        NSString *inputString = [[NSString alloc] initWithData:inputData encoding:NSUTF8StringEncoding];
        
        
        
        //************* outputing the string to the console *********
        NSLog(@"The string says: %@", inputString);
        
        
        //************* outputing the date and time ****************
        NSDate *currentDate = [NSDate date];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yyyy-MM-dd hh:mm:ss"];
        NSString *timeString = [formatter stringFromDate:currentDate];
        
        NSLog(@"Current Date and time is: %@", timeString);
        
    }
    return 0;
}

