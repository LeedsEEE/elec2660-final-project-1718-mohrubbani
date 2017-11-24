//
//  LeagueTableDataModel.m
//  LeagueTable
//
//  Created by Syed Rubbani [el16smr] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "LeagueTableDataModel.h"

@implementation LeagueTableDataModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.teams = [NSMutableArray array];
        Teams *AFCbournemouth = [[Teams alloc] init];
        AFCbournemouth.name = @"AFC Bournemouth";
  /*      AFCbournemouth.rank =
        AFCbournemouth.wins =
        AFCbournemouth.draws =
        AFCbournemouth.losses =
        AFCbournemouth.points =     */
        
        self.teams = [NSMutableArray array];
        Teams *arsenal = [[Teams alloc] init];
        arsenal.name = @"Arsenal";
   /*     arsenal.rank =
        arsenal.wins =
        arsenal.draws =
        arsenal.losses =
        arsenal.points =            */
        
        self.teams = [NSMutableArray array];
        Teams *brighton = [[Teams alloc] init];
        brighton.name=@"Brighton and Hove Albion";
   /*     brighton.rank =
        brighton.wins =
        brighton.draws =
        brighton.losses =
        brighton.points =           */
     
        self.teams = [NSMutableArray array];
        Teams *burnley = [[Teams alloc] init];
        burnley.name = @"Burnley";
   /*     burnley.rank =
        burnley.wins =
        burnley.draws =
        burnley.losses =
        burnley.points =            */
        
        self.teams = [NSMutableArray array];
        Teams *chelsea = [[Teams alloc] init];
        chelsea.name = @"Chelsea";
   /*     chelsea.rank =
        chelsea.wins =
        chelsea.draws =
        chelsea.losses =
        chelsea.points =            */
        
        self.teams = [NSMutableArray array];
        Teams *palace = [[Teams alloc] init];
        palace.name = @"Crystal Palace";
   /*     palace.rank =
        palace.wins =
        palace.draws =
        palace.losses =
        palace.points =             */
        
        self.teams = [NSMutableArray array];
        Teams *everton = [[Teams alloc] init];
        everton.name = @"Everton";
   /*     everton.rank =
        everton.wins =
        everton.draws =
        everton.losses =
        everton.points =            */
        
        self.teams = [NSMutableArray array];
        Teams *huddersfield = [[Teams alloc] init];
        huddersfield.name = @"Huddersfield Town";
   /*     huddersfield.rank =
        huddersfield.wins =
        huddersfield.draws =
        huddersfield.losses =
        huddersfield.points =       */
        
        self.teams = [NSMutableArray array];
        Teams *leicester = [[Teams alloc] init];
        leicester.name = @"Leicester City";
   /*     leicester.rank =
        leicester.wins =
        leicester.draws =
        leicester.losses =
        leicester.points =          */
        
        self.teams = [NSMutableArray array];
        Teams *liverpool = [[Teams alloc] init];
        liverpool.name = @"Liverpool";
   /*     liverpool.rank =
        liverpool.wins =
        liverpool.draws =
        liverpool.losses =
        liverpool.points =          */
        
        self.teams = [NSMutableArray array];
        Teams *city = [[Teams alloc] init];
        city.name = @"Manchester City";
   /*     city.rank =
        city.wins =
        city.draws =
        city.losses =
        city.points =               */
        
        self.teams = [NSMutableArray array];
        Teams *united = [[Teams alloc] init];
        united.name = @"Manchester United";
   /*     united.rank =
        united.wins =
        united.draws =
        united.losses =
        united.points =             */
        
        self.teams = [NSMutableArray array];
        Teams *newcastle = [[Teams alloc] init];
        newcastle.name = @"Newcastle United";
   /*     newcastle.rank =
        newcastle.wins =
        newcastle.draws =
        newcastle.losses =
        newcastle.points =          */
        
        self.teams = [NSMutableArray array];
        Teams *southampton = [[Teams alloc] init];
        southampton.name = @"Southampton";
   /*     southampton.rank =
        southampton.wins =
        southampton.draws =
        southampton.losses =
        southampton.points =        */
        
        self.teams = [NSMutableArray array];
        Teams *stoke = [[Teams alloc] init];
        stoke.name = @"Stoke City";
   /*     stoke.rank =
        stoke.wins =
        stoke.draws =
        stoke.losses =
        stoke.points =              */
        
        self.teams = [NSMutableArray array];
        Teams *swansea = [[Teams alloc] init];
        swansea.name = @"Swansea City";
   /*     swansea.rank =
        swansea.wins =
        swansea.draws =
        swansea.losses =
        swansea.points =            */
        
        self.teams = [NSMutableArray array];
        Teams *tottenham = [[Teams alloc] init];
        tottenham.name = @"Tottenham Hotspur";
   /*     tottenham.rank =
        tottenham.wins =
        tottenham.draws =
        tottenham.losses =
        tottenham.points =          */
        
        self.teams = [NSMutableArray array];
        Teams *watford = [[Teams alloc] init];
        watford.name = @"Watford";
   /*     watford.rank =
        watford.wins =
        watford.draws =
        watford.losses =
        watford.points =            */
        
        self.teams = [NSMutableArray array];
        Teams *westbrom = [[Teams alloc] init];
        westbrom.name = @"West Bromwich Albion";
   /*     westbrom.rank =
        westbrom.wins =
        westbrom.draws =
        westbrom.losses =
        westbrom.points =           */
        
        self.teams = [NSMutableArray array];
        Teams *westham = [[Teams alloc] init];
        westham.name = @"West Ham United";
   /*     westham.rank =
        westham.wins =
        westham.draws =
        westham.losses =
        westham.points =            */
        
        
        
        
        
    }
    
    
    
    return self;
}

@end
