// Sort Array by Dates
// Sort array by properties dates
//
// IDECodeSnippetCompletionPrefix: sa
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 891635CF-772C-4749-969D-1DA100267CF1
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Swift
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
conversations.sort({
                        $0.lastUpdate.compare($1.lastUpdate) == NSComparisonResult.OrderedDescending
                    })