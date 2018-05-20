//
//  Renderer.swift
//  MetalShaderTraining
//
//  Created by 藤井陽介 on 2018/05/15.
//  Copyright © 2018 touyou. All rights reserved.
//

import Foundation
import MetalKit

class Renderer: NSObject {

    weak var view: MTKView?
    weak var device: MTLDevice?
    var library: MTLLibrary
    var commandQueue: MTLCommandQueue

    init?(with view: MTKView) {

        self.view = view
        self.device = MTLCreateSystemDefaultDevice()
        self.view?.device = device

        guard let device = self.device else {
            print("Failed to create device")
            return nil
        }

        guard let library = device.makeDefaultLibrary() else {
            print("Failed to create Library")
            return nil
        }
        self.library = library

        guard let commandQueue = device.makeCommandQueue() else {
            print("Failed to create command queue")
            return nil
        }
        self.commandQueue = commandQueue

        super.init()

        view.delegate = self
    }
}

extension Renderer: MTKViewDelegate {

    func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize) {

    }

    func draw(in view: MTKView) {


    }
}
