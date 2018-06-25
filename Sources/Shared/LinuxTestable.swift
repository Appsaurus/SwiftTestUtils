//
//  LinuxTestable.swift
//  ServasaurusTesting
//
//  Created by Brian Strobach on 5/11/18.
//

import Foundation
import XCTest

public protocol LinuxTestable{
	func assertLinuxTestCoverage(tests: [Any])
}
extension LinuxTestable where Self: XCTestCase{
	public typealias LinuxTestCase = (String, (XCTestCase) -> () throws -> Void)

	public func assertLinuxTestCoverage(tests: [Any]) {
		#if !os(Linux)
		let thisClass = type(of: self)
		let linuxCount = tests.count
		let darwinCount = Int(thisClass.defaultTestSuite.testCaseCount)
		let failureMessage = "\(darwinCount - linuxCount) tests are missing from allTests in \(thisClass)."
		XCTAssertEqual(linuxCount, darwinCount,failureMessage)
		#endif
	}
}
