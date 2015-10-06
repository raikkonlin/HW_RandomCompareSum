//
//  ViewController.m
//  RandomCompareSum
//
//  Created by LINCHUNGYAO on 2015/10/6.
//  Copyright © 2015年 LINCHUNGYAO. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self randomNumberOddSum];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)randomNumberOddSum{
    int a=0,b=0;

    do{
        a=arc4random()%1000;
        b=arc4random()%1000;
        NSLog(@"a=%d",a);
        NSLog(@"b=%d",b);
    }while (a>b);

    if ((a%2)==0) {
        a=a+1;
    }

    int sum=0;
    for (int i=a; i<=b; i+=2) {
        sum+=i;
    }
    NSLog(@"sum=%d",sum);
}
@end
