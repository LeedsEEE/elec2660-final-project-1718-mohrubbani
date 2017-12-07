//
//  ButtonHandler.m
//  LeagueTable
//
//  Created by Syed Rubbani [el16smr] on 07/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "ButtonHandler.h"

@implementation ButtonHandler

- (IBAction)segmentChanged:(id)sender{
    
    self.segmentControl = sender;
    
    switch (self.segmentControl.selectedSegmentIndex) {
            
        case 0:
            [[NSNotificationCenter defaultCenter] postNotificationName:@"notifyButtonPressed0" object: self];
            break;
            
        case 1:
            [[NSNotificationCenter defaultCenter] postNotificationName:@"notifyButtonPressed1" object: self];
            break;
    }
    
}

@end
