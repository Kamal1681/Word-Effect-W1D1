//
//  main.m
//  Word Effect P1
//
//  Created by Kamal Maged on 2019-01-07.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 255 unit long array of characters
        char inputChars[255];
        char command[3];
        char *ptr;//dummy pointer for getting an integer value using strtol function
        long operation = 5;
        while (YES)
        {
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            // print as a c string
            printf("Your string is %s\n", inputChars);
            
            // convert char array to an NSString object
            NSMutableString *inputString = [NSMutableString stringWithUTF8String:inputChars];

            NSLog(@"Input was: %@", inputString);
           
            printf("Enter a number from 1 to 6 : ");
            fgets(command, 3, stdin);
            operation = strtol(command, &ptr, 10);
            
            switch (operation) {
                case 1:
                    NSLog(@"%@", [inputString uppercaseString]);
                    break;
                case 2:
                    NSLog(@"%@", [inputString lowercaseString]);
                    break;
                case 3:
                    NSLog(@"%d", [inputString intValue]);
                    break;
                case 4:
                    NSLog(@"%@", [[inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""] stringByAppendingString:@",eh?"]);
                    break;
                case 5:
                    if ([inputString hasSuffix:@"?\n"]){
                        NSLog(@"I don't know");
                    }
                    if([inputString hasSuffix:@"!\n"]){
                        NSLog(@"Whoa, calm down!");
                    }
                    break;
                case 6:
                    NSLog(@"%@", [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                default:
                    break;
            }
        }
    }
    return 0;
}
