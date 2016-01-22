// Last Photo
// Last photo by date in camera roll
//
// IDECodeSnippetCompletionPrefix: lpc
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: FC8EF679-CD58-410A-809B-68528ECA4822
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Swift
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
    func lastPhoto(noti: NSNotification){

        let fetchOptions: PHFetchOptions = PHFetchOptions()
        
        fetchOptions.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: true)]
        
        let fetchResult = PHAsset.fetchAssetsWithMediaType(PHAssetMediaType.Image, options: fetchOptions)
        
        if (fetchResult.lastObject != nil) {
            
            let lastAsset: PHAsset = fetchResult.lastObject as! PHAsset
            
            PHImageManager.defaultManager().requestImageForAsset(lastAsset, targetSize: PHImageManagerMaximumSize, contentMode: PHImageContentMode.AspectFill, options: PHImageRequestOptions()) { (result, info) -> Void in
                
                if result != nil {
                    
                    if let data = UIImageJPEGRepresentation(result!, ratioQuality) {
                        
                        self.sendImageToDataBase(image: data)
                    }
                } else {
                    
                    PSKAlertController.alertPresent(params: kDicForAlert(aTitle: "no photo..", aMesage: "try again or later"), dismissDelay: 1.0)
                }
            }
        }
    }