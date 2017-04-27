//
//  CycleUMShareTool.m
//  CDSBZX
//
//  Created by dihuijun on 17/3/23.
//  Copyright © 2017年 Cycle. All rights reserved.
//

#import "CycleUMShareTool.h"


@implementation CycleUMShareTool


/** UM分享（QQ,QQ空间,微信,微信朋友圈,新浪微博）*/
+ (void)CycleUMShareWithTitle:(NSString *)title description:(NSString *)description ShareUrl:(NSString *)url imgURL:(NSString *)thumUrl showInViewController:(UIViewController *)showinVC{
    
    __weak typeof(self) wself = self;
   [UMSocialUIManager setPreDefinePlatforms:@[
                                               @(UMSocialPlatformType_Sina),@(UMSocialPlatformType_QQ),@(UMSocialPlatformType_Qzone),@(UMSocialPlatformType_WechatTimeLine),@(UMSocialPlatformType_WechatSession)]];
    [UMSocialUIManager showShareMenuViewInWindowWithPlatformSelectionBlock:^(UMSocialPlatformType platformType, NSDictionary *userInfo) {
        
        NSLog(@"userInfo:%@",userInfo);
        // 根据获取的platformType确定所选平台进行下一步操作
//        self share
//        [self shareTextToPlatformType:platformType Title:title descriptTitle:description ShareUrl:url showInViewController:showinVC];
        
        
        //创建分享消息对象
        UMSocialMessageObject *messageObject = [UMSocialMessageObject messageObject];
        //创建网页内容对象
     //   NSString* thumbURL = @"https://mobile.umeng.com/images/pic/home/social/img-1.png";
        NSString* thumbURL =thumUrl;
        UMShareWebpageObject *shareObject = [UMShareWebpageObject shareObjectWithTitle:title descr:description thumImage:thumbURL];
        //设置网页地址
        shareObject.webpageUrl = url;
        
        //分享消息对象设置分享内容对象
        messageObject.shareObject = shareObject;
        
#ifdef UM_Swift
        [UMSocialSwiftInterface shareWithPlattype:platformType messageObject:messageObject viewController:showinVC completion:^(UMSocialShareResponse * data, NSError * error) {
#else
            //调用分享接口
            [[UMSocialManager defaultManager] shareToPlatform:platformType messageObject:messageObject currentViewController:showinVC completion:^(id data, NSError *error) {
#endif
                if (error) {
                    UMSocialLogInfo(@"************Share fail with error %@*********",error);
                }else{
                    if ([data isKindOfClass:[UMSocialShareResponse class]]) {
                        
                        UMSocialShareResponse *resp = data;
                        //分享结果消息
                        UMSocialLogInfo(@"response message is %@",resp.message);
                        //第三方原始返回的数据
                        UMSocialLogInfo(@"response originalResponse data is %@",resp.originalResponse);
                        
                    }else{
                        UMSocialLogInfo(@"response data is %@",data);
                    }
                }
                //            [self alertWithError:error];
            }];

        
    }];
}
//分享文本
- (void)shareTextToPlatformType:(UMSocialPlatformType)platformType Title:(NSString *)title descriptTitle:(NSString *)description ShareUrl:(NSString *)url showInViewController:(UIViewController *)showinVC
{
//    //创建分享消息对象
//    UMSocialMessageObject *messageObject = [UMSocialMessageObject messageObject];
//    //创建网页内容对象
//    NSString* thumbURL = @"https://mobile.umeng.com/images/pic/home/social/img-1.png";
//    UMShareWebpageObject *shareObject = [UMShareWebpageObject shareObjectWithTitle:title descr:description thumImage:thumbURL];
//    //设置网页地址
//    shareObject.webpageUrl = url;
//    
//    //分享消息对象设置分享内容对象
//    messageObject.shareObject = shareObject;
//    
//#ifdef UM_Swift
//    [UMSocialSwiftInterface shareWithPlattype:platformType messageObject:messageObject viewController:showinVC completion:^(UMSocialShareResponse * data, NSError * error) {
//#else
//        //调用分享接口
//        [[UMSocialManager defaultManager] shareToPlatform:platformType messageObject:messageObject currentViewController:showinVC completion:^(id data, NSError *error) {
//#endif
//            if (error) {
//                UMSocialLogInfo(@"************Share fail with error %@*********",error);
//            }else{
//                if ([data isKindOfClass:[UMSocialShareResponse class]]) {
//                    
//                    UMSocialShareResponse *resp = data;
//                    //分享结果消息
//                    UMSocialLogInfo(@"response message is %@",resp.message);
//                    //第三方原始返回的数据
//                    UMSocialLogInfo(@"response originalResponse data is %@",resp.originalResponse);
//                    
//                }else{
//                    UMSocialLogInfo(@"response data is %@",data);
//                }
//            }
//            //            [self alertWithError:error];
//        }];
    }

@end
