//
//  PolynomialTests.swift
//  PolynomialTests
//
//  Created by Mike Cargal on 2/18/21.
//

@testable import Polynomial
import XCTest

class PolynomialTests: XCTestCase {
    let x = "X"
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPolynomialTermAddition() throws {
        let pt1 = PolynomialTerm(x, coefficient: 2, degree: 3)
        let pt2 = PolynomialTerm(x, coefficient: 5, degree: 3)
        let expected1 = PolynomialTerm(x, coefficient: 7, degree: 3)
        let result = pt1 + pt2
        XCTAssert(result == expected1, "Expected \(result) == \(expected1)")
    }
    
    func testPolynomialTermSubtraction() throws {
        let pt1 = PolynomialTerm(x, coefficient: 2, degree: 3)
        let pt2 = PolynomialTerm(x, coefficient: 5, degree: 3)
        let expected1 = PolynomialTerm(x, coefficient: 3, degree: 3)
        let result = pt2 - pt1
        XCTAssert(result == expected1, "Expected \(result) == \(expected1)")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
