//
//  BBViewController.m
//  BBLearnsDelegate
//
//  Created by Hahn.Chan on 7/18/14.
//  Copyright (c) 2014 Hahn.Chan. All rights reserved.
//

#import "BBViewController.h"
#import "BBSquareView.h"
#import "BBWTFView.h"

@interface BBViewController ()

@end

@implementation BBViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupSelf];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void) setupSelf
{
    self.view.backgroundColor = [UIColor redColor];
    
//    BBSquareView *tmp = [[BBSquareView alloc] initWithFrame:CGRectMake(0, 290, 100, 100)];
//    tmp.backgroundColor = [UIColor yellowColor];
//    tmp.delegate = self;
//    [self.view addSubview:tmp];
//    [tmp run];
    BBWTFView *tmp = [[BBWTFView alloc] initWithFrame:CGRectMake(0, 290, 100, 100)];
    tmp.backgroundColor = [UIColor yellowColor];
    tmp.bbWTFDelegate = self;
    [self.view addSubview:tmp];
    [tmp bbrun];
}

#pragma mark - BBAnimationDelegate

- (void) animationBBSquareView:(BBSquareView *)squareView didFinishAnimationWithStatus:(NSDictionary *)status
{
    NSLog(@"current status is %@\n",[status objectForKey:@"status"]);
}

#pragma mark - BBWTFDelegate

-(void) buttonPressed
{
    NSLog(@"pressed\n");
    
    UIViewController *aVC = [[UIViewController alloc] init];
    aVC.view.backgroundColor = [UIColor greenColor];
    [self presentViewController:aVC animated:YES completion:nil];
    
    NSLog(@"pushed\n");
}
@end
