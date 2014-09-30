//
//  ViewController.m
//  SimpleTable
//
//  Created by Joan Barrull Ribalta on 29/09/14.
//  Copyright (c) 2014 com.giria. All rights reserved.
//

#import "ViewController.h"
#import "AddViewController.h"

@interface ViewController () {
 NSMutableArray *recipes;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSArray *irecipes = @[@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger"];
    recipes = [[NSMutableArray alloc]init];
    [recipes addObjectsFromArray:irecipes];
    NSLog(@" %@", recipes);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    return cell;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)addItemViewController:(AddViewController *)controller addItem:(NSString *)item{
    
    NSLog(@"done");
    [recipes addObject: item];
    [_tableView reloadData];
    
    
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
   
        AddViewController *addVC = (AddViewController*) segue.destinationViewController;
        
        addVC.delegado = self;
        //[[self navigationController] pushViewController:addVC animated:YES];
   
}




@end
