//
//  HomeViewControllerTestClass.swift
//  TeesasAppTests
//
//  Created by Tes on 25/03/2022.
//

import XCTest
@testable import TeesasApp

class HomeViewControllerTestClass: XCTestCase {
    var sut: HomeViewController!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = HomeViewController()
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func testIfHomeViewControllerHasTeesasLogo(){
        // given
        let guess = sut.logoImageView
        
        // when
        sut.loadViewIfNeeded()

        // then
        XCTAssertNotNil(guess)
    }

}
