// DispatchAsync to Loop
// 
//
// IDECodeSnippetCompletionPrefix: dsf
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 356B7491-9FDC-4406-B03E-3C77FF42C5F9
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Swift
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
        dispatch_async(dispatch_get_global_queue(Int(QOS_CLASS_UTILITY.rawWalue), 0)) {
            
            // Init for loop
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    
                })
        }