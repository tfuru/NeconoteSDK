//
//  ViewController.m
//  NeconoteSDK
//
//  Created by 古川信行 on 2015/03/07.
//  Copyright (c) 2015年 古川信行. All rights reserved.
//

#import "ViewController.h"
#import "NeconoteBLE.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickBtnFindWithName:(id)sender {
    //Neconoteに接続
    [[NeconoteBLE shared] findWithName:@"2" ready:^{
        //接続完了した
        NSLog(@"findWithName ready");
    }];    
}

- (IBAction)clickBtnOn:(id)sender {
    //ON
    [[NeconoteBLE shared] on:^{
        //操作が終わった時
         NSLog(@"on complete");
    }];
}

- (IBAction)clickBtnOff:(id)sender {
    //OFF
    [[NeconoteBLE shared] off:^{
        //操作が終わった時
        NSLog(@"off complete");
    }];
}

- (IBAction)clickBtnToggle:(id)sender {
    //Toggle
    [[NeconoteBLE shared] toggle:^(BOOL flg) {
        NSLog(@"toggle complete flg:%@",(flg==YES)?@"YES":@"NO");
    }];
}


- (IBAction)clickBtnDisconnect:(id)sender {
    //切断処理
    [[NeconoteBLE shared] disconnect];
}

@end
