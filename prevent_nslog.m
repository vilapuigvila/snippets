// Prevent NSLOG
// Prevent nslog's in device
//
// IDECodeSnippetCompletionPrefix: pns
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: A18A7297-39E7-4846-91BE-A2ECDE75D1B8
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#if TARGET_IPHONE_SIMULATOR
#define NSLog(fmt,...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#define NSLog(...)
#endif