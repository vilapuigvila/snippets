// UIPan
// move object in limits of the view
//
// IDECodeSnippetCompletionPrefix: pan
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 083E825B-EF53-4573-AB4A-4F83C2805C8C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (void)panDetected:(UIPanGestureRecognizer *)sender {
    
    if (!CGSizeEqualToSize(self.scrllView.frame.size, fInvoice.size))
    {
        CGRect  rect    = self.scrllView.frame;
        CGFloat aWidht  = rect.size.width;
        CGFloat aHeight = rect.size.height;
        
        CGFloat oriX = rect.origin.x;
        CGFloat oriY = rect.origin.y;
        
        //-- Prevent exit on the main view
        if (sender.state == UIGestureRecognizerStateEnded)
        {
            if (oriX <= ((-aWidht) + 50)) {
                rect.origin.x = ((-aWidht) + 51);
                self.scrllView.frame = rect;

            }else if (oriX >= self.view.frame.size.width - 50){
                rect.origin.x = self.view.frame.size.width - 51;
                self.scrllView.frame = rect;

            }else if (oriY <= ((-aHeight) + 100)){
                rect.origin.y = ((-aHeight) + 101);
                self.scrllView.frame = rect;

            }else if (oriY >= self.view.frame.size.height - 50){
                rect.origin.y = (self.view.frame.size.height - 51);
                self.scrllView.frame = rect;
                
            }
            return;
        }
        CGPoint translation = [sender translationInView:self.view];
        CGPoint position = self.scrllView.center;
        position.x += translation.x;
        position.y += translation.y;
        self.scrllView.center = position;
        [sender setTranslation:CGPointZero inView:self.view];
        
    }
}