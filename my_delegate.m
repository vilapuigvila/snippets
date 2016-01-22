// My Delegate
// 
//
// IDECodeSnippetCompletionPrefix: mdel
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 206E65A7-DD51-4E52-AADA-93693DF60BAD
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
@protocol AVP... <NSObject>

@required
- (void)syncDone:(BOOL)succes object:(NSObject*)obj;

@end

@property (weak, nonatomic) id <AVPGooglePlacesDelegate> delegate;

// call delegate in some point of program
if ([self.delegate respondsToSelector:@selector(someFunction:)]) {
    [self.delegate someFunction];
}