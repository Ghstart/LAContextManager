# LAContextManager
Modular TouchID and FaceID
Easy to using...

```
  [DCCJ_LAContextManager dccjOpenFingerLockOn:self
                                        success:^{
                                            //[self showMessage:@"success"];
                                        } failure:^(NSError *e, DCCJ_FeedBackTypes feedType) {
                                           // [self showMessage:[NSString stringWithFormat:@"%@---%lu", e, feedType]];
                                        }];
```
