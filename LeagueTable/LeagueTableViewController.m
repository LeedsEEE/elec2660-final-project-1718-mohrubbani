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
- (IBAction)startEditing:(id)sender {
    
    self.editing = YES;
    
}

- (IBAction)stopEditing:(id)sender {
    
    self.editing = NO;
}


- (void)viewDidLoad {
    [super viewDidLoad];
   
  
   
    
   

    

    
    self.data = [[LeagueTableDataModel alloc] init];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
    return numberofRows;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LeagueTableCell" forIndexPath:indexPath];
    
   
    
    if (indexPath.section == 0) {
        Teams *tempTeams = [self.data.teams objectAtIndex:indexPath.row];
        
        
        cell.textLabel.text= [NSString stringWithFormat:@"%ld",tempTeams.rank];
        cell.detailTextLabel.text = tempTeams.name;
        
        
        
 
        
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
    
    return UITableViewCellEditingStyleNone;
    

}






- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
    
 
  

 

}




-(BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 
    return YES;
}


#pragma mark - Navigation

/*
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
