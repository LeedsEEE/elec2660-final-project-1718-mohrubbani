//
//  LeagueTableDataModel.m
//  LeagueTable
//
//  Created by Syed Rubbani [el16smr] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "LeagueTableDataModel.h"
#import "LiveFootballAPI.h"

@implementation LeagueTableDataModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        LiveFootballAPI *liveData = [[LiveFootballAPI alloc] init];     // Initialises my football API
        [liveData GetLiveData];
        while([liveData teamData] == NULL){
            
        }

        NSDictionary *data = [liveData teamData];
        NSArray *records = [data objectForKey:@"records"];      // Only gets information under the records header on the website
        
    
        
        for(NSDictionary *d in records){
            
            NSLog(@"RECORDS OF: %@, WITH POINTS %@", [d objectForKey:@"team"], [d objectForKey:@"points"]);     // Prints the team name and number of points in the log to check whether the information is being updated
        }
    
        
        
        
        
        
        self.teams = [NSMutableArray array];                //Created built in values for teams so that the table can be updated manually if the API fails to recall the data
        Teams *AFCbournemouth = [[Teams alloc] init];
        AFCbournemouth.name = @"AFC Bournemouth";
        AFCbournemouth.points = 15;
        
        self.teams = [NSMutableArray array];
        Teams *arsenal = [[Teams alloc] init];
        arsenal.name = @"Arsenal";
        arsenal.points = 28;
        
        self.teams = [NSMutableArray array];
        Teams *brighton = [[Teams alloc] init];
        brighton.name=@"Brighton and Hove Albion";
        brighton.points = 17;
     
        self.teams = [NSMutableArray array];
        Teams *burnley = [[Teams alloc] init];
        burnley.name = @"Burnley";
        burnley.points = 25;
        
        self.teams = [NSMutableArray array];
        Teams *chelsea = [[Teams alloc] init];
        chelsea.name = @"Chelsea";
        chelsea.points = 32;
        
        self.teams = [NSMutableArray array];
        Teams *palace = [[Teams alloc] init];
        palace.name = @"Crystal Palace";
        palace.points = 10;
        
        self.teams = [NSMutableArray array];
        Teams *everton = [[Teams alloc] init];
        everton.name = @"Everton";
        everton.points = 18;
        
        self.teams = [NSMutableArray array];
        Teams *huddersfield = [[Teams alloc] init];
        huddersfield.name = @"Huddersfield Town";
        huddersfield.points = 15;
        
        self.teams = [NSMutableArray array];
        Teams *leicester = [[Teams alloc] init];
        leicester.name = @"Leicester City";
        leicester.points = 20;
        
        self.teams = [NSMutableArray array];
        Teams *liverpool = [[Teams alloc] init];
        liverpool.name = @"Liverpool";
        liverpool.points = 29;
        self.teams = [NSMutableArray array];
        Teams *city = [[Teams alloc] init];
        city.name = @"Manchester City";
        city.points = 43;
        
        self.teams = [NSMutableArray array];
        Teams *united = [[Teams alloc] init];
        united.name = @"Manchester United";
        united.points = 35;
        
        self.teams = [NSMutableArray array];
        Teams *newcastle = [[Teams alloc] init];
        newcastle.name = @"Newcastle United";
        newcastle.points = 15;
        
        self.teams = [NSMutableArray array];
        Teams *southampton = [[Teams alloc] init];
        southampton.name = @"Southampton";
        southampton.points = 17;
        
        self.teams = [NSMutableArray array];
        Teams *stoke = [[Teams alloc] init];
        stoke.name = @"Stoke City";
        stoke.points = 16;
        
        self.teams = [NSMutableArray array];
        Teams *swansea = [[Teams alloc] init];
        swansea.name = @"Swansea City";
        swansea.points = 9;
        self.teams = [NSMutableArray array];
        Teams *tottenham = [[Teams alloc] init];
        tottenham.name = @"Tottenham Hotspur";
        tottenham.points = 25;
        self.teams = [NSMutableArray array];
        Teams *watford = [[Teams alloc] init];
        watford.name = @"Watford";
        watford.points = 22;
        
        self.teams = [NSMutableArray array];
        Teams *westbrom = [[Teams alloc] init];
        westbrom.name = @"West Bromwich Albion";
        westbrom.points = 13;
        
        self.teams = [NSMutableArray array];
        Teams *westham = [[Teams alloc] init];
        westham.name = @"West Ham United";
        westham.points = 10;
        
        
       
        [self.teams addObject:city];
        [self.teams addObject:united];
        [self.teams addObject:chelsea];
        [self.teams addObject:liverpool];
        [self.teams addObject:arsenal];
        [self.teams addObject:tottenham];
        [self.teams addObject:burnley];
        [self.teams addObject:watford];
        [self.teams addObject:leicester];
        [self.teams addObject:everton];
        [self.teams addObject:southampton];
        [self.teams addObject:brighton];
        [self.teams addObject:stoke];
        [self.teams addObject:AFCbournemouth];
        [self.teams addObject:newcastle];
        [self.teams addObject:huddersfield];
        [self.teams addObject:westbrom];
        [self.teams addObject:palace];
        [self.teams addObject:westham];
        [self.teams addObject:swansea];
        
        // Added the teams to my table view in descending order sorted by points
        
    }
    
    
    
    return self;
}

@end
