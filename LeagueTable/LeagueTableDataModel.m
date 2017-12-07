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
    
        
        
        
        
        
        self.teams = [NSMutableArray array];
        Teams *AFCbournemouth = [[Teams alloc] init];
        AFCbournemouth.name = @"AFC Bournemouth";
        AFCbournemouth.rank = 5;
  /*      AFCbournemouth.wins =
        AFCbournemouth.draws =
        AFCbournemouth.losses =
        AFCbournemouth.points =     */
        
        self.teams = [NSMutableArray array];
        Teams *arsenal = [[Teams alloc] init];
        arsenal.name = @"Arsenal";
        arsenal.rank = 2;
   /*     arsenal.wins =
        arsenal.draws =
        arsenal.losses =
        arsenal.points =            */
        
        self.teams = [NSMutableArray array];
        Teams *brighton = [[Teams alloc] init];
        brighton.name=@"Brighton and Hove Albion";
        brighton.rank = 3;
   /*     brighton.wins =
        brighton.draws =
        brighton.losses =
        brighton.points =           */
     
        self.teams = [NSMutableArray array];
        Teams *burnley = [[Teams alloc] init];
        burnley.name = @"Burnley";
        burnley.rank = 4;
   /*     burnley.wins =
        burnley.draws =
        burnley.losses =
        burnley.points =            */
        
        self.teams = [NSMutableArray array];
        Teams *chelsea = [[Teams alloc] init];
        chelsea.name = @"Chelsea";
        chelsea.rank = 7;
   /*     chelsea.wins =
        chelsea.draws =
        chelsea.losses =
        chelsea.points =            */
        
        self.teams = [NSMutableArray array];
        Teams *palace = [[Teams alloc] init];
        palace.name = @"Crystal Palace";
        palace.rank = 19;
   /*     palace.wins =
        palace.draws =
        palace.losses =
        palace.points =             */
        
        self.teams = [NSMutableArray array];
        Teams *everton = [[Teams alloc] init];
        everton.name = @"Everton";
        everton.rank = 15;
   /*     everton.wins =
        everton.draws =
        everton.losses =
        everton.points =            */
        
        self.teams = [NSMutableArray array];
        Teams *huddersfield = [[Teams alloc] init];
        huddersfield.name = @"Huddersfield Town";
        huddersfield.rank = 17;
   /*     huddersfield.wins =
        huddersfield.draws =
        huddersfield.losses =
        huddersfield.points =       */
        
        self.teams = [NSMutableArray array];
        Teams *leicester = [[Teams alloc] init];
        leicester.name = @"Leicester City";
        leicester.rank = 11;
   /*     leicester.wins =
        leicester.draws =
        leicester.losses =
        leicester.points =          */
        
        self.teams = [NSMutableArray array];
        Teams *liverpool = [[Teams alloc] init];
        liverpool.name = @"Liverpool";
        liverpool.rank = 8;
   /*     liverpool.wins =
        liverpool.draws =
        liverpool.losses =
        liverpool.points =          */
        
        self.teams = [NSMutableArray array];
        Teams *city = [[Teams alloc] init];
        city.name = @"Manchester City";
        city.rank = 1;
   /*     city.wins =
        city.draws =
        city.losses =
        city.points =               */
        
        self.teams = [NSMutableArray array];
        Teams *united = [[Teams alloc] init];
        united.name = @"Manchester United";
        united.rank = 6;
   /*     united.wins =
        united.draws =
        united.losses =
        united.points =             */
        
        self.teams = [NSMutableArray array];
        Teams *newcastle = [[Teams alloc] init];
        newcastle.name = @"Newcastle United";
        newcastle.rank = 14;
   /*     newcastle.wins =
        newcastle.draws =
        newcastle.losses =
        newcastle.points =          */
        
        self.teams = [NSMutableArray array];
        Teams *southampton = [[Teams alloc] init];
        southampton.name = @"Southampton";
        southampton.rank = 16;
   /*     southampton.wins =
        southampton.draws =
        southampton.losses =
        southampton.points =        */
        
        self.teams = [NSMutableArray array];
        Teams *stoke = [[Teams alloc] init];
        stoke.name = @"Stoke City";
        stoke.rank = 20;
   /*     stoke.wins =
        stoke.draws =
        stoke.losses =
        stoke.points =              */
        
        self.teams = [NSMutableArray array];
        Teams *swansea = [[Teams alloc] init];
        swansea.name = @"Swansea City";
        swansea.rank = 12;
   /*     swansea.wins =
        swansea.draws =
        swansea.losses =
        swansea.points =            */
        
        self.teams = [NSMutableArray array];
        Teams *tottenham = [[Teams alloc] init];
        tottenham.name = @"Tottenham Hotspur";
        tottenham.rank = 10;
   /*     tottenham.wins =
        tottenham.draws =
        tottenham.losses =
        tottenham.points =          */
        
        self.teams = [NSMutableArray array];
        Teams *watford = [[Teams alloc] init];
        watford.name = @"Watford";
        watford.rank = 9;
   /*     watford.wins =
        watford.draws =
        watford.losses =
        watford.points =            */
        
        self.teams = [NSMutableArray array];
        Teams *westbrom = [[Teams alloc] init];
        westbrom.name = @"West Bromwich Albion";
        westbrom.rank = 13;
   /*     westbrom.wins =
        westbrom.draws =
        westbrom.losses =
        westbrom.points =           */
        
        self.teams = [NSMutableArray array];
        Teams *westham = [[Teams alloc] init];
        westham.name = @"West Ham United";
        westham.rank = 18;
   /*     westham.wins =
        westham.draws =
        westham.losses =
        westham.points =            */
        
        
        [self.teams addObject:AFCbournemouth];
        [self.teams addObject:arsenal];
        [self.teams addObject:brighton];
        [self.teams addObject:burnley];
        [self.teams addObject:chelsea];
        [self.teams addObject:palace];
        [self.teams addObject:everton];
        [self.teams addObject:huddersfield];
        [self.teams addObject:leicester];
        [self.teams addObject:liverpool];
        [self.teams addObject:city];
        [self.teams addObject:united];
        [self.teams addObject:newcastle];
        [self.teams addObject:southampton];
        [self.teams addObject:stoke];
        [self.teams addObject:swansea];
        [self.teams addObject:tottenham];
        [self.teams addObject:watford];
        [self.teams addObject:westbrom];
        [self.teams addObject:westham];
        
        
        
    }
    
    
    
    return self;
}

@end
