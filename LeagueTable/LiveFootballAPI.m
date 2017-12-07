//
//  LiveFootballAPI.m
//  LeagueTable
//
//  Created by Syed Rubbani [el16smr] on 29/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "LiveFootballAPI.h"
#import "UNIRest.h"

@implementation LiveFootballAPI



-(void)GetLiveData{

    NSDictionary *headers = @{@"X-Mashape-Key": @"01RQtmhf7Umshs9Uj3WtU1JSYfiVp1JpFRNjsn4cIknFGR1VGf", @"Accept": @"application/json"};     // Needed my specific key given by the API service provider in order to access the football data
    
    NSURL *url = [NSURL URLWithString:@"https://heisenbug-premier-league-live-scores-v1.p.mashape.com/api/premierleague/table"];        // Gets the information from this URL
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
    [request setHTTPMethod:@"GET"];
    [request addValue:@"01RQtmhf7Umshs9Uj3WtU1JSYfiVp1JpFRNjsn4cIknFGR1VGf" forHTTPHeaderField:@"X-Mashape-Key"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error)
    {
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
        if(httpResponse.statusCode == 200)
        {
            NSError *parseError = nil;
            NSDictionary *responseDictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:&parseError];
          
            _teamData = responseDictionary;
        }
        else
        {
            NSLog(@"Error");     // Added an NSLog to check whether my application is receiving the correct information. Easy way to debug issues
        }
    }];
    [dataTask resume];

}

@end
