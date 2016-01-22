// Keyboard Notification
// 
//
// IDECodeSnippetCompletionPrefix: kbn
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: EDD26702-D3B2-44CC-960B-C5991D3C4ADF
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 [[NSNotificationCenter defaultCenter] addObserver:self
                                          selector:@selector(keyboardWillShow:)
                                              name:UIKeyboardWillHideNotification
                                            object:nil];

[[NSNotificationCenter defaultCenter] addObserver:self
                                         selector:@selector(keyboardDidHide:)
                                             name:UIKeyboardDidChangeFrameNotification
                                           object:nil];
 - (void) keyboardWillShow:(NSNotification *)notification {
     
     if (!isAdjusted) {
         
         CGFloat keyHeight = [[[notification userInfo] objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size.height;
         [self.scrollView updateFrameAndContentSizeKeyboardWillShow:keyHeight];
         isAdjusted = YES;
     }
 }
 - (void) keyboardWillHide:(NSNotification *)notification {
     
     if (isAdjusted) {
         
         CGFloat keyHeight = [[[notification userInfo] objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size.height;
         [self.scrollView updateFrameAndContentSizeKeyboardWillHide:keyHeight];
         isAdjusted = NO;
     }
 }
 - (void) dealloc {
     [[NSNotificationCenter defaultCenter] removeObserver:self];
 }