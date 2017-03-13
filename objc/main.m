#import <objc/Object.h>
#import <stdio.h>
#import <Foundation/Foundation.h>
#import <HelloWorld.h>
#import <Foundation/NSURL.h>
#import <Foundation/NSURLSession.h>
#import <Foundation/NSURLRequest.h>
#import <Foundation/NSURLConnection.h>
//#import <Easyhttp.h>

int main(int argc, char* argv[])
{
    printf("entered main\n");
    id o = [HelloWorld new];
    printf("created memory, calling funciton...\n");
    [o hello];
    //NSString *ret = [Http sendHTTPGet:"http://localhost:8081/v1/feedback?features=DISCOVER_WEEKLY:8081"]; 
    //Easyhttp* foo = [[Easyhttp alloc] init];
    //[foo sendHTTPGet];
    /*
    NSURL *URL = [NSURL URLWithString:@"http://example.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];

    [NSURLConnection sendAsynchronousRequest:request
				       queue:[NSOperationQueue mainQueue]
			   completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
			       // ...
			   }];
    */
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setURL:[NSURL URLWithString:@"http://YourURL.com/FakeURL/PARAMETERS"]];
    [request setHTTPMethod:@"GET"];

    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
	    NSString *requestReply = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
	        NSLog(@"requestReply: %@", requestReply);
    }] resume];
    //NSLog(@"ret string is %@", ret);
    printf("qua leaving main\n");
    return 0;
}
