
#if __has_include("RCTEventEmitter.h")
#import "RCTEventEmitter.h"
#else
#import <React/RCTEventEmitter.h>
#endif

#import <Purchases_macOS/Purchases_macOS.h>

@interface RNPurchases : RCTEventEmitter <RCTBridgeModule>

@end
