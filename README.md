## インストール方法
1.Konashiデレクトリをコピー
2.Podfile ファイルに NSTimer-Blocks を追加してインストール
  pod 'NSTimer-Blocks', '~> 0.0'
 
2. 必要Frameworkを追加
- CoreGraphics.framework
- Foundation.framework
- UIKit.framework
- JavaScriptCore.framework
- CoreBluetooth.framework

4.NeconoteBLE.h NeconoteBLE.m をコピー

5.NeconoteBLE.h を適当なview にimportしてビルドできるか確認


## 利用サンプル
```
- (IBAction)clickBtnFindWithName:(id)sender {
    //Neconoteに接続
    [[NeconoteBLE shared] findWithName:@"1" ready:^{
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
```

