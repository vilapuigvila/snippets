// Choose Image From
// Choose Image from Camera or my local library
//
// IDECodeSnippetCompletionPrefix: cim
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 8BF45D71-5F9E-4DDA-8812-09E9CA8656A4
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Swift
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
    
    var image      = UIImagePickerController()
    image.delegate = self
    
    let alert = PSKAlertController.showActionSheet("Select choice", aBtnTitle: "Camera Roll", bBtnTitle: "Camera", cancelBtn: { () -> Void in
        
        }, aBtn: { () -> Void in // Camera Roll
            
            image.sourceType    = UIImagePickerControllerSourceType.PhotoLibrary
            image.allowsEditing = false
            
            self.presentViewController(image, animated: true, completion: nil)
            
        }) { () -> Void in
            
            if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera)
            {
                image.sourceType    = UIImagePickerControllerSourceType.Camera
                image.allowsEditing = true
                
                self.presentViewController(image, animated: true, completion: nil)
                
            } else {
                
                let noCamera = PSKAlertController.showOnlyDoneButton("Alert", aMsg: "IOS Simulator has no camera", doneBtn: { () -> Void in
                    self.dismissViewControllerAnimated(true , completion: nil)
                })
                self.presentViewController(noCamera, animated: true, completion: nil)
            }
    }
    self.presentViewController(alert, animated: true, completion: nil)