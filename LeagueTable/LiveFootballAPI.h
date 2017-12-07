//
//  LiveFootballAPI.h
//  LeagueTable
//
//  Created by Syed Rubbani [el16smr] on 29/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LiveFootballAPI : NSObject

@property (strong, nonatomic) NSDictionary *teamData;       // created an NSDictionary for the data received from the API

-(void)GetLiveData;

@end
