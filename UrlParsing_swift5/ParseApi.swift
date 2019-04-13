//
//  ParseApi.swift
//  UrlParsing_swift5
//
//  Created by Abins Musthafa on 12/04/19.
//  Copyright © 2019 Abins Musthafa. All rights reserved.
//

import Foundation
import Alamofire
struct Courses : Codable {
    var id : Int
    var name :String
    var imageUrl : String
    var  number_of_lessons : Int
}


class ParseApi{
//    parse normal Result
//   class func parseCourses(url : String , completion : @escaping (Result<[Courses],Error>) -> ()   )  {
//
//
//        guard let url = URL(string: url) else{
//
//
//            return}
//
//        URLSession.shared.dataTask(with: url) { (data, res, err) in
//
//            if  let error = err {
//              print("....errrrrr")
//             completion(.failure(error))
//
//
//            }
//
//            //sucess
//
//            if let data = data{
//
//                do{
//                    let courses = try JSONDecoder().decode([Courses].self, from: data)
//                    completion(.success(courses))
//
//
//                }catch let jsonError
//                {
//                    completion(.failure(jsonError))
//                }
//
//
//
//            }
//
//
//
//        }.resume()
//
//
//
//
//    }
    
 
    
    class func parseAlamofire(url : String,  completion : @escaping ([Courses]?,Error?) -> () ) {
    
        Alamofire.request(URL(string: url)!).responseJSON { (response) in
            
            if let error = response.error{
                completion(nil,error)
                return
            }
            
            if let data = response.data{
                
                do{
                    let courses =  try JSONDecoder().decode([Courses].self, from: data)
                    print(courses)
                    completion(courses,nil)
                    
                }catch let JsonError{
                    
                    completion(nil,JsonError)
                }
                
              
                
                
                
                
            }
            
        }
    
    
    }
    
    
    
    
    
}
