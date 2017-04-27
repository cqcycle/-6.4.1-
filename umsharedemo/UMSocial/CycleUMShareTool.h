//
//  CycleUMShareTool.h
//  CDSBZX
//
//  Created by dihuijun on 17/3/23.
//  Copyright © 2017年 Cycle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CycleUMShareTool : NSObject

/** UM分享（QQ,QQ空间,微信,微信朋友圈,新浪微博）*/
+ (void)CycleUMShareWithTitle:(NSString *)title description:(NSString *)description ShareUrl:(NSString *)url imgURL:(NSString *)thumUrl showInViewController:(UIViewController *)showinVC;



@end
