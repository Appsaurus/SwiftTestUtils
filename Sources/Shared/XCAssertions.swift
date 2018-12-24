//
//  XCAssertions.swift
//  Pods
//
//  Created by Brian Strobach on 5/11/18.
//

import Foundation
import XCTest

public func XCTAssertAllEqual<E: Equatable>(_ target: E, _ testCandidates: E...){
	XCTAssertAllEqual(target, testCandidates)
}
public func XCTAssertAllEqual<E: Equatable>(_ target: E, _ testCandidates: [E]){
	testCandidates.forEach { (testCandidate) in
		XCTAssertEqual(target, testCandidate)
	}
}
