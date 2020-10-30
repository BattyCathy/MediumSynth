//
//  Synth.swift
//  MediumSynth
//
//  Created by Austin Roach on 10/29/20.
//
import AVFoundation
import Foundation


class Synth {
   
    //MARK: Properties
    public static let shared = Synth()
    
    public var volume: Float {
        set {
            audioEngine.mainMixerNode.outputVolume = newValue
        }
        get {
            return audioEngine.mainMixerNode.outputVolume
        }
    }
    private var audioEngine: AVAudioEngine
    private var time: Float = 0
    private let sampleRate: Double
    private let deltaTime: Float
    
    //MARK: Init
    init() {
        audioEngine = AVAudioEngine()
        
        
        let mainMixer = audioEngine.mainMixerNode
        let outputNode = audioEngine.mainMixerNode
        let format = outputNode.inputFormat(forBus: 0)
        
        sampleRate = format.sampleRate
        deltaTime = 1 / Float(sampleRate)
        }
    
    //MARK: Public Funtions
}


