// UIAlertController
// 
//
// IDECodeSnippetCompletionPrefix: alc
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: CE80E0C1-C33E-49AB-83DE-EF313D8B6891
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Swift
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
    func actionSheetDisplay() {
        
        //https://possiblemobile.com/2014/08/uialertcontroller-ios-8/
        // 1
        let actionSheet = UIAlertController(title: nil, message: NSLocalizedString("CHOOSE_OPTION", comment: ""), preferredStyle: .ActionSheet)
        
        // 2
        let deletePost = UIAlertAction(title: NSLocalizedString("DELETE_POST", comment: ""), style: UIAlertActionStyle.Destructive, handler: {
            (alert: UIAlertAction!) -> Void in
            print("File Deleted")
        })
        let hidePost = UIAlertAction(title: NSLocalizedString("HIDE_POST", comment: ""), style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("File Saved")
        })
        let reportPost = UIAlertAction(title: NSLocalizedString("REPORT_POST", comment: ""), style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Report")
        })
        //
        let cancelAction = UIAlertAction(title: NSLocalizedString("CANCEL", comment: ""), style: .Cancel, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Cancelled")
        })
        
        // 4
        actionSheet.addAction(deletePost)
        actionSheet.addAction(hidePost)
        actionSheet.addAction(reportPost)
        actionSheet.addAction(cancelAction)
        
        // 5
        self.presentViewController(actionSheet, animated: true, completion: nil)
    }