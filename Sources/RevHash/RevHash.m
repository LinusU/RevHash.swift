#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonCrypto.h>

#import "RevHash.h"

NSString * _Nonnull revHashOfData(NSData * _Nonnull data) {
  __auto_type digestData = [NSMutableData dataWithCapacity:CC_MD5_DIGEST_LENGTH];
  __auto_type digestBytes = (unsigned char *) [digestData bytes];
  CC_MD5([data bytes], (CC_LONG) [data length], digestBytes);

  __auto_type result = [NSMutableString stringWithCapacity:10];
  [result appendFormat:@"%02x", digestBytes[0]];
  [result appendFormat:@"%02x", digestBytes[1]];
  [result appendFormat:@"%02x", digestBytes[2]];
  [result appendFormat:@"%02x", digestBytes[3]];
  [result appendFormat:@"%02x", digestBytes[4]];

  return result;
}

NSString * _Nonnull revHashOfString(NSString * _Nonnull string) {
  return revHashOfData([string dataUsingEncoding:NSUTF8StringEncoding]);
}

// FIXME: Reenable when https://stackoverflow.com/q/49718698/148072 is solved
// NSString * _Nullable revHashOfFile(NSURL * _Nonnull url, NSError ** error) {
//   __auto_type data = [NSData dataWithContentsOfURL:url options:NSDataReadingMappedIfSafe error:(NSError**)error];
//   return data ? revHashOfData(data) : nil;
// }
