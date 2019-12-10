//
//  API.swift
//  InstagramApp
//
//  Created by mohamed gamal mohamed on 7/14/19.
//  Copyright © 2019 mohamed gamal mohamed. All rights reserved.
//

import Foundation
import Alamofire

protocol URLRequestBuilder: URLRequestConvertible{
    var mainURl : URL {get}
    var requestURL : URL {get}
    var path : String {get}
    var parameters : Parameters? {get}
    var method : HTTPMethod {get}
    var encoding : ParameterEncoding {get}
    var urlRequest : URLRequest {get}
    
}

extension URLRequestBuilder {
    var encoding : ParameterEncoding {
        switch method {
        case .get :
            return URLEncoding.default
        default:
            return JSONEncoding.default
        }
    }
    var mainURL: URL {
        return URL(string:  "http://live.mysite.com")!
    }
    var requestURL:URL {
        return mainURL.appendingPathComponent(path)
    }
    var urlRequest: URLRequest? {
        var request = URLRequest(url: requestURL)
        request.httpMethod = method.rawValue
        return request
    }
    func asURLRequest() throws -> URLRequest {
        return try encoding.encode(urlRequest , with: parameters)
    }
    
    var headers : HTTPHeaders {
        return [:]
    }
}


