#import <Foundation/Foundation.h>
#import <Foundation/NSURLSession.h>
#import <Foundation/NSURL.h>
#import <Foundation/NSLog.h>
#import <Foundation/NSURLSessionConfiguration.h>
#import <Foundation/NSString.h>
#import <Foundation/NSOperationQueue.h>

int main(int argc, char* argv[])
{
    NSLog("entered main\n");
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setURL:[NSURL URLWithString:@"http://YourURL.com/FakeURL/PARAMETERS"]];
    [request setHTTPMethod:@"GET"];

    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
NSString *requestReply = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
NSLog(@"requestReply: %@", requestReply);
    }] resume];
    NSLog("leaving main\n");
    return 0;
}
