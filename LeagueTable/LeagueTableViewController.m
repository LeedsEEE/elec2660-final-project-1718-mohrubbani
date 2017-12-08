//
//  LeagueTableViewController.m
//  LeagueTable
//
//  Created by Syed Rubbani [el16smr] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "LeagueTableViewController.h"

@interface LeagueTableViewController ()



@end

@implementation LeagueTableViewController



- (void)viewDidLoad {
    [super viewDidLoad];
   
  
    self.data = [[LeagueTableDataModel alloc] init];        // Initialises my data model
    
   
     }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


  
    
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSInteger numberofRows;
    
    if (section ==0) {
        numberofRows = self.data.teams.count;
        
    }
    return numberofRows;            // Returns the same number of rows as there are teams. Therefore the number of rows is not hardcoded into the application and could possibly work for different                 leagues with different numbers of teams.
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LeagueTableCell" forIndexPath:indexPath];            // Puts information into table view cell which has an identifier    'LeagueTableCell'

    if (indexPath.section == 0) {
        Teams *tempTeams = [self.data.teams objectAtIndex:indexPath.row];
        
        
        cell.textLabel.text= [NSString stringWithFormat:@"%d",tempTeams.points];         // Displays the team rank in the textLabel
        cell.detailTextLabel.text = tempTeams.name;                                     // Displays the team name in the detailTextLabel
        
        
        
 
        
    }
    
  
    return cell;
}





/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/




- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return UITableViewCellEditingStyleNone;     // Gets rid of the delete function for tableview cells so that the user does not delete a team
    

}






- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
    
 
  

 

}


// Gives the user the ability to reorder tableview rows

-(BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 
    return YES;
}

// Allows the tableview rows to be moved
#pragma mark - Navigation

/*
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
