//
//  PolynomialTests.swift
//  PolynomialTests
//
//  Created by Mike Cargal on 2/18/21.
//

@testable import Polynomial
import XCTest

class PolynomialTests: XCTestCase {
    let p2x3 = PolynomialTerm("x", coefficient: 2, degree: 3)
    let p3x3 = PolynomialTerm("x", coefficient: 3, degree: 3)
    let p5x3 = PolynomialTerm("x", coefficient: 5, degree: 3)
    let p7x3 = PolynomialTerm("x", coefficient: 7, degree: 3)

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPolynomialTermAddition() throws {
        XCTAssertEqual(p2x3 + p5x3, p7x3)
    }

    func testPolynomialTermSubtraction() throws {
        XCTAssertEqual(p5x3 - p2x3, p3x3)
    }

    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
}
