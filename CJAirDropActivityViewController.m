//
//  CJAirDropActivityViewController.m
//
//  Created by Charles Joseph on 2015-03-20.
//

#import "CJAirDropActivityViewController.h"

@implementation CJAirDropActivityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIViewController *vc = [self valueForKey:@"activityGroupListViewController"];
    NSArray *controllers = [vc valueForKey:@"activityGroupViewControllers"];
    NSMutableArray *newControllers = [NSMutableArray array];
    for (UIViewController *controller in controllers) {
        if ([controller isKindOfClass:NSClassFromString(@"SFAirDropActivityViewController")]) {
            [newControllers addObject:controller];
        }
        else {
            controller.view.hidden = YES;
        }
    }
    
    [vc setValue:newControllers forKey:@"activityGroupViewControllers"];
    
    controllers = [vc valueForKey:@"visibleActivityGroupViewControllers"];
    newControllers = [NSMutableArray array];
    for (UIViewController *controller in controllers) {
        if ([controller isKindOfClass:NSClassFromString(@"SFAirDropActivityViewController")]) {
            [newControllers addObject:controller];
        }
        else {
            controller.view.hidden = YES;
        }
    }
    
    [vc setValue:newControllers forKey:@"visibleActivityGroupViewControllers"];
    
    vc.preferredContentSize = CGSizeMake(vc.preferredContentSize.width, 117);
    if ([vc isKindOfClass:[UICollectionViewController class]]) {
        [(UICollectionViewController *)vc collectionView].scrollEnabled = NO;
    }
}

@end
