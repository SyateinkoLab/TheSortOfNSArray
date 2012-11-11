//
//  Fujiviewcon.m
//  FujiSample
//
//  Created by MATSUFUJI_Nao on 12/11/07.
//  Copyright (c) 2012年 松藤 なお. All rights reserved.
//

#import "Fujiviewcon.h"

@interface Fujiviewcon ()

@end

@implementation Fujiviewcon

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

    // 並び替えるメソッドを呼びます
    // これで配列の中か位置順に並び替えます
    [self.sampleArray sortArray:self.sampleArray];

    
    // for文で配列内を取り出して、変更する
    for (int i=0; i<[self.sampleArray count]; i++)
    {
        // 配列の中に入っているクラスの型を取り出す
        UILabel* hogehoge = [self.sampleArray objectAtIndex:i];
        hogehoge.backgroundColor = [UIColor yellowColor];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    for (int i=0; i<[self.sampleArray count]; i++) {
        [[self.sampleArray objectAtIndex:i] removeFromSuperview];
    }
}

@end
