// TextField Notifications
// Appears & disappears & text change
//
// IDECodeSnippetCompletionPrefix: txn
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 00C64C4B-A533-45F5-9085-9DA1B5C6E69A
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Swift
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
NSNotificationCenter.defaultCenter().addObserver(self, selector: "textFieldDidChange:", name:UITextFieldTextDidChangeNotification,  object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:",   name:UIKeyboardWillShowNotification,        object: nil);
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:",   name:UIKeyboardWillHideNotification,        object: nil);


func textFieldDidChange(noti:NSNotification) {
    
    
}
func keyboardWillShow(sender: NSNotification) {
    
    
}
func keyboardWillHide(sender: NSNotification) {

    
}