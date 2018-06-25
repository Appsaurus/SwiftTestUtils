//
//  BaseTestCase.swift
//  ServasaurusTesting
//
//  Created by Brian Strobach on 5/11/18.
//

import Foundation
import XCTest

open class BaseTestCase: XCTestCase, LinuxTestable{


	public static var hasSetup: Bool = false
	public var hasSetup: Bool {
		get{
			return type(of: self).hasSetup
		}
		set{
			type(of: self).hasSetup = newValue
		}
	}
	open func setupOnce() throws{

	}

	override open func setUp() {
		if !hasSetup{
			hasSetup = true
			do{
				try setupOnce()
			}
			catch{
				XCTFail("setupOnce failed \(error)")
			}
		}
		super.setUp()
	}
}
