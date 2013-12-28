//
//  XYZViewController.m
//  TestUICollectionView
//
//  Created by Martijn de Milliano on 26-12-13.
//  Copyright (c) 2013 Cafellow. All rights reserved.
//

#import "XYZViewController.h"

@interface XYZViewController () <UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation XYZViewController

- (IBAction)updateButtonPressed:(id)sender
{
    self.collectionView.contentSize = CGSizeMake(300, 2000);
    self.collectionView.frame = CGRectMake(0, 0, 300, 2000);
    [self.collectionView reloadData];
    [self.collectionView.collectionViewLayout invalidateLayout];
    NSLog(@"update button pressed");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 100;
}

- (UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
}

@end
