//
//  DataService.swift
//  task-manager
//
//  Created by siboch on 8/3/16.
//  Copyright © 2016 siboch. All rights reserved.
//

import Foundation

class DataService {
//    static let instance = DataService()
//    
//    let KEY_POSTS = "posts"
//    private var _loadedPosts = [Post]()
//    
//    
//    var loadedPosts: [Post] {
//        return _loadedPosts
//    }
//    
//    func savePosts() {
//        let postsData = NSKeyedArchiver.archivedDataWithRootObject(_loadedPosts)
//        NSUserDefaults.standardUserDefaults().setObject(postsData, forKey: KEY_POSTS)
//        NSUserDefaults.standardUserDefaults().synchronize()
//    }
//    
//    func loadPosts() {
//        if let postsData = NSUserDefaults.standardUserDefaults().objectForKey(KEY_POSTS) as? NSData {
//            
//            if let postsArray = NSKeyedUnarchiver.unarchiveObjectWithData(postsData) as? [Post] {
//                _loadedPosts = postsArray
//            }
//        }
//        
//        NSNotificationCenter.defaultCenter().postNotification(NSNotification(name: "postsLoaded", object: nil))
//    }
//    
//    func saveImageAndCreatePath(image: UIImage) -> String {
//        let imgData = UIImagePNGRepresentation(image)
//        let imgPath = "image\(NSDate.timeIntervalSinceReferenceDate()).png"
//        let fullPath = documentsPathForFileName(imgPath)
//        imgData?.writeToFile(fullPath, atomically: true)
//        return imgPath
//    }
//    
//    func imageForPath(path: String) -> UIImage? {
//        let fullPath = documentsPathForFileName(path)
//        let image = UIImage(named: fullPath)
//        return image
//    }
//    
//    func addPost(post: Post) {
//        _loadedPosts.append(post)
//        savePosts()
//        loadPosts()
//    }
//    
//    func documentsPathForFileName(name: String) -> String {
//        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
//        let fullPath = paths[0] as NSString
//        return fullPath.stringByAppendingPathComponent(name)
//    }
    
    
    func createCategory(sender: AnyObject!) {

    }
    
    
}