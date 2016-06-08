//
//  LSLogSettings.m
//  LSLog-XCode
//
//  Created by lslin on 15/12/11.
//  Copyright © 2015年 lessfun.com. All rights reserved.
//

#import "LSLogSettings.h"
#import "LSLog.h"

NSString *kKeyLogLevelPrefixError = @"com.lessfun.LSLog.KeyLogLevelPrefixError";
NSString *kKeyLogLevelPrefixWarn = @"com.lessfun.LSLog.KeyLogLevelPrefixWarn";
NSString *kKeyLogLevelPrefixInfo = @"com.lessfun.LSLog.KeyLogLevelPrefixInfo";
NSString *kKeyLogLevelPrefixDebug = @"com.lessfun.LSLog.KeyLogLevelPrefixDebug";
NSString *kKeyLogLevelPrefixVerbose = @"com.lessfun.LSLog.KeyLogLevelPrefixVerbose";

NSString *kKeyEnableColoring = @"com.lessfun.LSLog.KeyEnableColoring";

NSString *kKeyFgColorError = @"com.lessfun.LSLog.KeyFgColorError";
NSString *kKeyFgColorWarn = @"com.lessfun.LSLog.KeyFgColorWarn";
NSString *kKeyFgColorInfo = @"com.lessfun.LSLog.KeyFgColorInfo";
NSString *kKeyFgColorDebug = @"com.lessfun.LSLog.KeyFgColorDebug";
NSString *kKeyFgColorVerbose = @"com.lessfun.LSLog.KeyFgColorVerbose";

//NSString *kKeyBgColorError = @"com.lessfun.LSLog.KeyBgColorError";
//NSString *kKeyBgColorWarn = @"com.lessfun.LSLog.KeyBgColorWarn";
//NSString *kKeyBgColorInfo = @"com.lessfun.LSLog.KeyBgColorInfo";
//NSString *kKeyBgColorVerbose = @"com.lessfun.LSLog.KeyBgColorVerbose";

@interface LSLogSettings()

@property (strong, nonatomic) NSNumber *enableColoringValue;

@end

@implementation LSLogSettings


@synthesize logLevelPrefixError = _logLevelPrefixError;
@synthesize logLevelPrefixWarn = _logLevelPrefixWarn;
@synthesize logLevelPrefixInfo = _logLevelPrefixInfo;
@synthesize logLevelPrefixDebug = _logLevelPrefixDebug;
@synthesize logLevelPrefixVerbose = _logLevelPrefixVerbose;

@synthesize fgColorError = _fgColorError;
@synthesize fgColorWarn = _fgColorWarn;
@synthesize fgColorInfo = _fgColorInfo;
@synthesize fgColorDebug = _fgColorDebug;
@synthesize fgColorVerbose = _fgColorVerbose;

//@synthesize bgColorError = _bgColorError;
//@synthesize bgColorWarn = _bgColorWarn;
//@synthesize bgColorVerbose = _bgColorVerbose;
//@synthesize bgColorInfo = _bgColorInfo;


+ (instancetype)defaultSettings {
    static id _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] init];
    });
    return _sharedInstance;
}

- (id)init {
    if (self = [super init]) {
    }
    return self;
}

#pragma mark - Property

- (NSString *)logLevelPrefixError {
    if (!_logLevelPrefixError) {
        _logLevelPrefixError = [self getConfigForKey:kKeyLogLevelPrefixError];
        if (!_logLevelPrefixError) {
            _logLevelPrefixError = @"[UJET][error]";
        }
    }

    return _logLevelPrefixError;
}

- (void)setLogLevelPrefixError:(NSString *)logLevelPrefixError {
    if (!logLevelPrefixError.length) {
        return;
    }
    _logLevelPrefixError = logLevelPrefixError;
    [self setConfig:logLevelPrefixError forKey:kKeyLogLevelPrefixError];
}

- (NSString *)logLevelPrefixWarn {
    if (!_logLevelPrefixWarn) {
        _logLevelPrefixWarn = [self getConfigForKey:kKeyLogLevelPrefixWarn];
        if (!_logLevelPrefixWarn) {
            _logLevelPrefixWarn = @"[UJET][warn]";
        }
    }
    
    return _logLevelPrefixWarn;
}

- (void)setLogLevelPrefixWarn:(NSString *)logLevelPrefixWarn {
    if (!logLevelPrefixWarn.length) {
        return;
    }
    _logLevelPrefixWarn = logLevelPrefixWarn;
    [self setConfig:logLevelPrefixWarn forKey:kKeyLogLevelPrefixWarn];
}

- (NSString *)logLevelPrefixVerbose {
    if (!_logLevelPrefixVerbose) {
        _logLevelPrefixVerbose = [self getConfigForKey:kKeyLogLevelPrefixVerbose];
        if (!_logLevelPrefixVerbose) {
            _logLevelPrefixVerbose = @"[UJET][verbose]";
        }
    }
    
    return _logLevelPrefixVerbose;
}

- (void)setLogLevelPrefixVerbose:(NSString *)logLevelPrefixVerbose {
    if (!logLevelPrefixVerbose.length) {
        return;
    }
    _logLevelPrefixVerbose =logLevelPrefixVerbose;
    [self setConfig:logLevelPrefixVerbose forKey:kKeyLogLevelPrefixVerbose];
}

- (NSString *)logLevelPrefixInfo {
    if (!_logLevelPrefixInfo) {
        _logLevelPrefixInfo = [self getConfigForKey:kKeyLogLevelPrefixInfo];
        if (!_logLevelPrefixInfo) {
            _logLevelPrefixInfo = @"[UJET][info]";
        }
    }
    
    return _logLevelPrefixInfo;
}

- (void)setLogLevelPrefixInfo:(NSString *)logLevelPrefixInfo {
    if (!logLevelPrefixInfo.length) {
        return;
    }
    _logLevelPrefixInfo = logLevelPrefixInfo;
    [self setConfig:logLevelPrefixInfo forKey:kKeyLogLevelPrefixInfo];
}

- (NSString *)logLevelPrefixDebug {
    if (!_logLevelPrefixDebug) {
        _logLevelPrefixDebug = [self getConfigForKey:kKeyLogLevelPrefixDebug];
        if (!_logLevelPrefixDebug) {
            _logLevelPrefixDebug = @"[UJET][debug]";
        }
    }
    
    return _logLevelPrefixDebug;
}

- (void)setLogLevelPrefixDebug:(NSString *)logLevelPrefixDebug {
    if (!logLevelPrefixDebug.length) {
        return;
    }
    _logLevelPrefixDebug = logLevelPrefixDebug;
    [self setConfig:logLevelPrefixDebug forKey:kKeyLogLevelPrefixDebug];
}

- (BOOL)enableColoring {
    self.enableColoringValue = [self getConfigForKey:kKeyEnableColoring];
    if (!self.enableColoringValue) {
        [self setEnableColoring:YES];
    }
    return [self.enableColoringValue boolValue];
}

- (void)setEnableColoring:(BOOL)enableColoring {
    self.enableColoringValue = @(enableColoring);
    [self setConfig:self.enableColoringValue forKey:kKeyEnableColoring];
}

- (NSColor *)fgColorError {
    if (!_fgColorError) {
        _fgColorError = [self getColorForKey:kKeyFgColorError];
        if (!_fgColorError) {
            _fgColorError = LS_COLOR_RGB(204, 0, 0);
        }
    }
    
    return _fgColorError;
}

- (void)setFgColorError:(NSColor *)fgColorError {
    _fgColorError = fgColorError;
    [self setColor:fgColorError forKey:kKeyFgColorError];
}

- (NSColor *)fgColorWarn {
    if (!_fgColorWarn) {
        _fgColorWarn = [self getColorForKey:kKeyFgColorWarn];
        if (!_fgColorWarn) {
            _fgColorWarn = LS_COLOR_RGB(221, 119, 34);
        }
    }
    
    return _fgColorWarn;
}

- (void)setFgColorWarn:(NSColor *)fgColorWarn {
    _fgColorWarn = fgColorWarn;
    [self setColor:fgColorWarn forKey:kKeyFgColorWarn];
}

- (NSColor *)fgColorInfo {
    if (!_fgColorInfo) {
        _fgColorInfo = [self getColorForKey:kKeyFgColorInfo];
        if (!_fgColorInfo) {
            _fgColorInfo = LS_COLOR_RGB(0, 0, 204);
        }
    }
    
    return _fgColorInfo;
}

- (void)setFgColorInfo:(NSColor *)fgColorInfo {
    _fgColorInfo = fgColorInfo;
    [self setColor:fgColorInfo forKey:kKeyFgColorInfo];
}

- (NSColor *)fgColorDebug {
    if (!_fgColorDebug) {
        _fgColorDebug = [self getColorForKey:kKeyFgColorDebug];
        if (!_fgColorDebug) {
            _fgColorDebug = LS_COLOR_RGB(102, 102, 102);
        }
    }
    
    return _fgColorDebug;
}

- (void)setFgColorDebug:(NSColor *)fgColorDebug {
    _fgColorDebug = fgColorDebug;
    [self setColor:fgColorDebug forKey:kKeyFgColorDebug];
}

- (NSColor *)fgColorVerbose {
    if (!_fgColorVerbose) {
        _fgColorVerbose = [self getColorForKey:kKeyFgColorVerbose];
        if (!_fgColorVerbose) {
            _fgColorVerbose = LS_COLOR_RGB(153, 153, 153);
        }
    }
    
    return _fgColorVerbose;
}

- (void)setFgColorVerbose:(NSColor *)fgColorVerbose {
    _fgColorVerbose = fgColorVerbose;
    [self setColor:fgColorVerbose forKey:kKeyFgColorVerbose];
}

//- (NSColor *)bgColorError {
//    if (!_bgColorError) {
//        _bgColorError = [self getColorForKey:kKeyBgColorError];
//        if (!_bgColorError) {
//            _bgColorError = LS_COLOR_RGB(255, 255, 255);
//        }
//    }
//    
//    return _bgColorError;
//}
//
//- (void)setBgColorError:(NSColor *)bgColorError {
//    _bgColorError = bgColorError;
//    [self setColor:bgColorError forKey:kKeyBgColorError];
//}
//
//- (NSColor *)bgColorWarn {
//    if (!_bgColorWarn) {
//        _bgColorWarn = [self getColorForKey:kKeyBgColorWarn];
//        if (!_bgColorWarn) {
//            _bgColorWarn = LS_COLOR_RGB(255, 255, 255);
//        }
//    }
//    
//    return _bgColorWarn;
//}
//
//- (void)setBgColorWarn:(NSColor *)bgColorWarn {
//    _bgColorWarn = bgColorWarn;
//    [self setColor:bgColorWarn forKey:kKeyBgColorWarn];
//}
//
//- (NSColor *)bgColorInfo {
//    if (!_bgColorInfo) {
//        _bgColorInfo = [self getColorForKey:kKeyBgColorInfo];
//        if (!_bgColorInfo) {
//            _bgColorInfo = LS_COLOR_RGB(255, 255, 255);
//        }
//    }
//    
//    return _bgColorInfo;
//}
//
//- (void)setBgColorInfo:(NSColor *)bgColorInfo {
//    _bgColorInfo = bgColorInfo;
//    [self setColor:bgColorInfo forKey:kKeyBgColorInfo];
//}
//- (NSColor *)bgColorVerbose {
//    if (!_bgColorVerbose) {
//        _bgColorVerbose = [self getColorForKey:kKeyBgColorVerbose];
//        if (!_bgColorVerbose) {
//            _bgColorVerbose = LS_COLOR_RGB(255, 255, 255);
//        }
//    }
//
//    return _bgColorVerbose;
//}
//
//- (void)setBgColorVerbose:(NSColor *)bgColorVerbose {
//    _bgColorVerbose = bgColorVerbose;
//    [self setColor:bgColorVerbose forKey:kKeyBgColorVerbose];
//}

#pragma mark - Private

- (id)getConfigForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] valueForKey:key];
}

- (void)setConfig:(id)value forKey:(NSString *)key
{
    if (!value || !key) {
        return;
    }
    [[NSUserDefaults standardUserDefaults] setObject:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSColor *)getColorForKey:(NSString *)key {
    NSData *data = [self getConfigForKey:key];
    if (data) {
        return (NSColor *)[NSUnarchiver unarchiveObjectWithData:data];
    }
    return nil;
}

- (void)setColor:(NSColor *)color forKey:(NSString *)key {
    if (color && key) {
        NSData *data = [NSArchiver archivedDataWithRootObject:color];
        [self setConfig:data forKey:key];
    }
}

@end
