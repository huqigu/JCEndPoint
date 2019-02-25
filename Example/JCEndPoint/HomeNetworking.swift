//
//  HomeNetworking.swift
//  JCNetworking-swift_Example
//
//  Created by yellow on 2019/2/25.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import JCEndPoint
class HomeNetworking : JCEndPoint {
    
    func getHomePageData(parameters: [String: Any]?,needLoading: Bool,logEnable: Bool,finished: @escaping JCNetworkFinished) -> Void {
        
        self.get("message/list", parameters: parameters,needLoading: needLoading,logEnable: logEnable,finished: finished);
    }

}
