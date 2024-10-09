//
//  IntentHandler.swift
//  PZXShortCut
//
//  Created by 彭祖鑫 on 2023/11/21.
//

import Intents
// As an example, this class is set up to handle Message intents.
// You will want to replace this or add other intents as appropriate.
// The intents you wish to handle must be declared in the extension's Info.plist.

// You can test your example integration by saying things to Siri like:
// "Send a message using <myApp>"
// "<myApp> John saying hello"
// "Search for messages in <myApp>"

class IntentHandler: INExtension,PZXShowLabelIntentHandling,PZXBBIntentHandling,PZXKKKIntentHandling{

    

    
    
    override func handler(for intent: INIntent) -> Any {
        // This is the default implementation.  If you want different objects to handle different intents,
        // you can override this and return the handler you want for that particular intent.
//        
//        if intent is PZXShowLabelIntent {
//            return PZXShortCutHandler()
//        }
        
        return self
    }

    
    /**
     handle 方法：
     作用：handle 方法用于实际执行 Siri 意图所代表的任务。在这个方法中，你会编写代码来处理传递给它的意图，执行相关的逻辑，并返回一个包含任务执行结果的 PZXShowLabelIntentResponse 对象。
     触发时机：handle 方法会在确认（如果有的话）之后被调用。它是执行实际任务的地方，例如显示标签。
     异步性质：handle 方法可以是异步的，这意味着它可能包含一些需要时间的操作，但最终会调用 completion 闭包返回结果。
     */
    
    func handle(intent: PZXShowLabelIntent, completion: @escaping (PZXShowLabelIntentResponse) -> Void) {
        
        
        let userActivity = NSUserActivity(activityType: NSStringFromClass(PZXShowLabelIntent.self))
        let response = PZXShowLabelIntentResponse(code: .continueInApp, userActivity: userActivity)
        response.showLabel = "（这是自定义的文字）"
        completion(response)
 
    }

    func handle(intent: PZXBBIntent, completion: @escaping (PZXBBIntentResponse) -> Void) {
        
        let userActivity = NSUserActivity(activityType: NSStringFromClass(PZXBBIntent.self))
        let response = PZXBBIntentResponse(code: .continueInApp, userActivity: nil)
        completion(response)
        
        
    }
    func handle(intent: PZXKKKIntent) async -> PZXKKKIntentResponse {
        let userActivity = NSUserActivity(activityType: NSStringFromClass(PZXKKKIntent.self))
        let response = PZXKKKIntentResponse(code: .continueInApp, userActivity: nil)
//        completion(response)
        return response
    }


    /**
     confirm 方法：
     作用：confirm 方法用于在实际执行任务之前，验证意图是否准备好被处理。它返回一个 PZXShowLabelIntentResponse 对象，其中可能包含一些额外的信息，用于在处理之前向用户显示相关信息。
     触发时机：在执行 handle 方法之前，系统可能会调用 confirm 方法，以确保意图的合法性。如果实现了 confirm，它将在 handle 之前被调用。
     异步性质：confirm 方法也可以是异步的，允许在确认之前执行一些异步验证操作。
     */
//     func confirm(intent: PZXShowLabelIntent, completion: @escaping (PZXShowLabelIntentResponse) -> Void) {
//        
//        let userActivity = NSUserActivity(activityType: NSStringFromClass(PZXShowLabelIntent.self))
//         
//        let response = PZXShowLabelIntentResponse(code: .failure, userActivity: userActivity)
//         response.showLabel = "你好你好你好"
//        completion(response);
//
//    }
}
