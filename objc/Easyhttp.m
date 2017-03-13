#import <objc/Object.h>
#import <stdio.h>
#import <Foundation/Foundation.h>
#import <Easyhttp.h>

@implementation Easyhttp
/*
- (NSString *) getDataFrom:(NSString *)url
{
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setHTTPMethod:@"GET"];
    [request setURL:[NSURL URLWithString:url]];

    NSError *error = nil;
    NSHTTPURLResponse *responseCode = nil;

    NSData *oResponseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&responseCode error:&error];

    if([responseCode statusCode] != 200){
    NSLog(@"Error getting %@, HTTP status code %li", url, [responseCode statusCode]);
    return nil;
    }

    return [[NSString alloc] initWithData:oResponseData encoding:NSUTF8StringEncoding];
    }
 */
-(void) sendHTTPGet
{
    NSURLSessionConfiguration *defaultConfigObject = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *defaultSession = [NSURLSession sessionWithConfiguration: defaultConfigObject delegate: nil delegateQueue: [NSOperationQueue mainQueue]];

    NSURL * url = [NSURL URLWithString:@"http://hayageek.com/"];

    NSURLSessionDataTask * dataTask = [defaultSession dataTaskWithURL:url
						    completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
							if(error == nil)
							{
							    NSString * text = [[NSString alloc] initWithData: data encoding: NSUTF8StringEncoding];
							    NSLog(@"Data = %@",text);
							}

						    }];

    [dataTask resume];

}
@end
