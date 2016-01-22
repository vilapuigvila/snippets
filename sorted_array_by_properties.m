// Sorted Array by Properties
// 
//
// IDECodeSnippetCompletionPrefix: sap
// IDECodeSnippetCompletionScopes: [CodeExpression]
// IDECodeSnippetIdentifier: 91C79817-4FF1-4DAA-AC8C-54D4353D2388
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Swift
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
self.arrModel = sorted(self.arrModel) {
                            
                            return $0.updatedAt.compare($1.updatedAt) == NSComparisonResult.OrderedDescending
                        }
var aSorted = sorted(someArray as! [String], {$0 < $1} ) // abcde or 1.klk 2.sdkj


