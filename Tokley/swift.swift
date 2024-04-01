//
//  swift.swift
//  Tokley
//
//  Created by Yash Dhaduk on 08/03/24.
//

import Foundation
import UIKit
import StoreKit



@available(iOS 13.0, *)
func rateUs() {
    if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
        DispatchQueue.main.async {
            if #available(iOS 14.0, *) {
                SKStoreReviewController.requestReview(in: scene)
            } else {
                // Fallback on earlier versions
            }
        }
    } else {
        print(" - - - - - - Rating view in not present - - - -")
    }
}

