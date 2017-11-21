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
        
    }
    return self;
}

@end
