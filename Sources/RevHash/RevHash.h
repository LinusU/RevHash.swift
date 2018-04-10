#import <Foundation/Foundation.h>

NSString * _Nonnull revHashOfData(NSData * _Nonnull data) NS_SWIFT_NAME(revHash(of:));
NSString * _Nonnull revHashOfString(NSString * _Nonnull string) NS_SWIFT_NAME(revHash(of:));

// FIXME: Reenable when https://stackoverflow.com/q/49718698/148072 is solved
// NSString * _Nullable revHashOfFile(NSURL * _Nonnull url, NSError * _Nullable * _Nullable error) __attribute__((swift_error(nonnull_error), swift_name("revHash(ofFile:)")));
