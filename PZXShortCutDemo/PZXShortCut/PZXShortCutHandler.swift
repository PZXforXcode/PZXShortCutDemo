//
//  PZXShortCutHandler.swift
//  PZXShortCut
//
//  Created by 彭祖鑫 on 2023/11/22.
//

import UIKit
import Intents

public class PZXShortCutHandler: NSObject,PZXShowLabelIntentHandling {
    
    public func confirm(intent: PZXShowLabelIntent, completion: @escaping (PZXShowLabelIntentResponse) -> Void) {
        completion(PZXShowLabelIntentResponse(code: .ready, userActivity: nil))
    }
    
    public func handle(intent: PZXShowLabelIntent, completion: @escaping (PZXShowLabelIntentResponse) -> Void) {
        
        completion(PZXShowLabelIntentResponse(code: .ready, userActivity: nil))
    }
    

}
