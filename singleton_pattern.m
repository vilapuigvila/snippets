// Singleton pattern
// 
//
// IDECodeSnippetCompletionPrefix: sin
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 3B102F9E-D26E-41B6-B9AD-F3DE9FBC88DB
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Swift
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//http://krakendev.io/blog/the-right-way-to-write-a-singleton?utm_campaign=This%2BWeek%2Bin%2BSwift&utm_medium=web&utm_source=This_Week_in_Swift_45

private let sharedKraken = TheOneAndOnlyKraken()
class TheOneAndOnlyKraken {
    class var sharedInstance: TheOneAndOnlyKraken {
        return sharedKraken
    }
}