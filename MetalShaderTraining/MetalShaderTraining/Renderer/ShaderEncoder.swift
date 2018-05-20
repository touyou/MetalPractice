//
//  ShaderEncoder.swift
//  MetalShaderTraining
//
//  Created by 藤井陽介 on 2018/05/15.
//  Copyright © 2018 touyou. All rights reserved.
//

import Foundation
import MetalKit

class ShaderEncoder {

    private func makePipelineState(device: MTLDevice, pipelineStateDescriptor: MTLRenderPipelineDescriptor) throws -> MTLRenderPipelineState {

        return try device.makeRenderPipelineState(descriptor: pipelineStateDescriptor)
    }
}
