// Keyboard Notifications
// Will and hidden Keyboard
//
// IDECodeSnippetCompletionPrefix: kwh
// IDECodeSnippetCompletionScopes: [CodeExpression]
// IDECodeSnippetIdentifier: 9B7D47A6-66CC-45E1-97C0-E52AFFCA53A7
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Swift
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    
//MARK: - NOTIFICATIONS
    func keyboardWillShow(notification: NSNotification){
        //http://stackoverflow.com/questions/25451001/getting-keyboard-size-from-userinfo-in-swift
        
        if let userInfo = notification.userInfo {
            
            if let rKey = userInfo[UIKeyboardFrameEndUserInfoKey]?.CGRectValue {
                
                print(rKey)
            }
        }
    }