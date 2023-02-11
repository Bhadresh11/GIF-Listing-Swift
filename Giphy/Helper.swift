//
//  Helper.swift
//  Giphy
//
//  Created by iOS on 14/06/22.
//

import Foundation
import UIKit


//extension String {
//
//    func stringByAddingPercentEncodingForURLQueryValue() -> String? {
//        let allowedCharacters = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~")
//        return self.addingPercentEncoding(withAllowedCharacters: allowedCharacters)
//    }
//
//}
//
//
//extension Dictionary {
//
//    func stringFromHttpParameters() -> String {
//        let parameterArray = self.map { (key, value) -> String in
//            let percentEscapedKey = (key as! String).stringByAddingPercentEncodingForURLQueryValue()!
//            let percentEscapedValue = (value as! String).stringByAddingPercentEncodingForURLQueryValue()!
//            return "\(percentEscapedKey)=\(percentEscapedValue)"
//        }
//
//        return parameterArray.joined(separator: "&")
//    }
//}



enum HttpMethods: String {
    case GET = "GET"
    case HEAD = "HEAD"
    case POST = "POST"
    case PUT = "PUT"
    case DELETE = "DELETE"
    case CONNECT = "CONNECT"
    case OPTIONS = "OPTIONS"
    case TRACE = "TRACE"
    case PATCH = "PATCH"
}
enum RelativePath : String {
    case trending = "trending"
    case search = "search"
}
//class HTTPRequest{
//    
//    typealias CompletionHandler = (_ data: Data?,_ responce: URLResponse?,_ error: Error?) -> Void
//
//    class func request(url: String,method: HttpMethods, parameters: [String: String],completionHandler:  @escaping CompletionHandler){
//        
//        let parameterString = parameters.stringFromHttpParameters()
//        let url = URL(string: "\(url)?\(parameterString)")!
//        var request = URLRequest(url: url)
//        request.httpMethod = method.rawValue
//        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
//        
//        let task = URLSession.shared.dataTask(with: request) { data, responce, error in
//
//            completionHandler(data,responce,error)
//        }
//        
//        task.resume()
//    }
//}



