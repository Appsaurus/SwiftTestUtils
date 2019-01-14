//
//  XCAssertions.swift
//  Pods
//
//  Created by Brian Strobach on 5/11/18.
//

import Foundation
import XCTest

// swiftlint:disable vertical_parameter_alignment
public func assertEachEqual<E: Equatable>(_ target: E,
                                         _ testCandidates: E...,
    file: StaticString = #file,
    line: UInt = #line){
    assertEachEqual(target, testCandidates, file: file, line: line)
}

public func assertEachEqual<E: Equatable>(_ target: E,
                                         _ testCandidates: [E],
                                         file: StaticString = #file,
                                         line: UInt = #line){
    testCandidates.forEach { (testCandidate) in
        XCTAssertEqual(target, testCandidate, file: file, line: line)
    }
}


public typealias AnyObjectClosureTuplePair = (first: () -> AnyObject?, second: () -> AnyObject?)
public typealias AnyObjectTuplePair = (first: AnyObject?, second: AnyObject?)

public func assertIdentical(_ expression1: @autoclosure () -> AnyObject?,
                            _ expression2: @autoclosure () -> AnyObject?,
                            _ message: String? = nil,
                            file: StaticString = #file,
                            line: UInt = #line) {
    XCTAssertTrue(expression1() === expression2(), message ?? "\(String(describing: expression1())) was not identical to \(String(describing: expression2()))", file: file, line: line)
}


public func assertIdentical(_ expressions: AnyObjectClosureTuplePair...,
    message: String? = nil,
    file: StaticString = #file,
    line: UInt = #line) {
    expressions.forEach {assertIdentical($0.first(), $0.second())}
}

public func assertIdentical(_ expressions: AnyObjectTuplePair...,
    message: String? = nil,
    file: StaticString = #file,
    line: UInt = #line) {
    expressions.forEach {assertIdentical($0.first, $0.second, message, file: file, line: line)}
}
