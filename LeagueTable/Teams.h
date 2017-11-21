//
//  Teams.h
//  LeagueTable
//
//  Created by Syed Rubbani [el16smr] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Teams : NSObject

@property NSInteger *rank;
@property (nonatomic, strong) NSString *name;
@property NSInteger *wins;
@property NSInteger *draws;
@property NSInteger *losses;
@property NSInteger *points;

@end
