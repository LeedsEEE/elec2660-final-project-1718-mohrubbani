//
//  ViewController.m
//  LeagueTable
//
//  Created by Syed Rubbani [el16smr] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated{
    [[[NSURLSession sharedSession] dataTaskWithURL:[NSURL URLWithString:@"GEThttps://heisenbug-premier-league-live-scores-v1.p.mashape.com/api/premierleague/table"] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSDictionary *headers = @{@"accept": @"application/json"};
        NSDictionary *parameters = @{@"parameter": @"value", @"foo": @"bar"};
      /*
        [[UNIRest post:^(UNISimpleRequest *request) {
            [request setUrl:@"http://httpbin.org/post"];
            [request setHeaders:headers];
            [request setParameters:parameters];
        }] asJsonAsync:^(UNIHTTPJsonResponse* response, NSError *error) {
            // This is the asyncronous callback block
            NSInteger code = response.code;
            NSDictionary *responseHeaders = response.headers;
            UNIJsonNode *body = response.body;
            NSData *rawBody = response.rawBody;
        }];
       */
        
      
        
        NSLog(@"response %@", response);
        
        NSLog(@"data %@", data);
        
        
        
        
    }] resume];
}

@end
