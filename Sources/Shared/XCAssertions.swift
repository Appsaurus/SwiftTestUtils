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



//public func XCTAssertJSONEqual(source: Encodable, candidates: Encodable...) {
//	XCTAssert(jsonIsEqual(source: source, candidates: candidates))
//}
//
//public func XCTAssertJSONNotEqual(source: Encodable, candidates: Encodable...){
//	XCTAssertFalse(jsonIsEqual(source: source, candidates: candidates))
//}
//
//public func jsonIsEqual(source: Encodable, candidates: [Encodable]) -> Bool{
//	let sourceString = try! source.encodeAsJSONString()
//	return !candidates.contains(where: {try! $0.encodeAsJSONString() != sourceString})
//}
//
//
//fileprivate extension Encodable {
//	fileprivate func encodeAsJSONData(using encoder: JSONEncoder =  JSONEncoder()) throws -> Data {
//		return try encoder.encode(self)
//	}
//
//	fileprivate func encodeAsJSONString(using encoder: JSONEncoder = JSONEncoder(), stringEncoding: String.Encoding = .utf8) throws -> String{
//		let jsonData = try encodeAsJSONData(using: encoder)
//		guard let jsonString = String(data: jsonData, encoding: stringEncoding) else{
//			let context = EncodingError.Context(codingPath: [], debugDescription: "Unable to convert data \(jsonData) from object \(self) to string.")
//			throw EncodingError.invalidValue(self, context)
//		}
//		return jsonString
//	}
//}
