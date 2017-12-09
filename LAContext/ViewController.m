//
//  ViewController.m
//  LAContext
//
//  Created by 龚欢 on 2017/11/29.
//  Copyright © 2017年 龚欢. All rights reserved.
//

#import "ViewController.h"
#import "DCCJ_LAContextManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)doAuthor:(id)sender {
    [DCCJ_LAContextManager dccjOpenFingerLockOn:self
                                        success:^{
                                            [self showMessage:@"success"];
                                        } failure:^(NSError *e, DCCJ_FeedBackTypes feedType) {
                                            [self showMessage:[NSString stringWithFormat:@"%@---%lu", e, feedType]];
                                        }];
}

- (void)showMessage:(NSString *)content {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"FaceID/TouchID" message:content preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"好" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    }];
    
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:YES completion:nil];
}



@end
