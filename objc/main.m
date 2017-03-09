#import <objc/Object.h>
#import <stdio.h>
//#import <Foundation/Foundation.h>
#import <HelloWorld.h>

int main(int argc, char* argv[])
{
    printf("entered main\n");
    id o = [HelloWorld new];
    printf("created memory, calling funciton...\n");
    [o hello];
    printf("leaving main\n");
    return 0;
}
