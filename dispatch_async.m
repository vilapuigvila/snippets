// Dispatch Async
// simply async dispatch
//
// IDECodeSnippetCompletionPrefix: dsa
// IDECodeSnippetCompletionScopes: [CodeExpression]
// IDECodeSnippetIdentifier: 5679269C-83C0-46A3-B93C-90AE2FF65AD2
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Swift
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//http://www.raywenderlich.com/79149/grand-central-dispatch-tutorial-swift-part-1
dispatch_async(dispatch_get_global_queue(
            Int(QOS_CLASS_USER_INTERACTIVE.value), 0)) {
                
                
        }