// Filter Array
// 
//
// IDECodeSnippetCompletionPrefix: far
// IDECodeSnippetCompletionScopes: [CodeExpression]
// IDECodeSnippetIdentifier: 7C19CDCA-471F-45C3-8955-E58B17189B7C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Swift
// IDECodeSnippetPlatformFamily: iphoneos
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
let postToDelete = self.arrModel.filter({ return $0.aObjID == post.aObjID })

let noCurrentUser = post.likes.filter() { $0 != PFUser.currentUser()?.username! }