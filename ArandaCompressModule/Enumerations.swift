//
//  Enumerations.swift
//  ArandaCompressModule
//
//  Created by Enar GoMez on 23/04/20.
//  Copyright © 2020 Aranda. All rights reserved.
//

import Foundation

public enum Quality: Int{
    case HIGH = 1
    case MEDIUM = 2
    case LOW = 3
}

public enum FileType: Int{
    case AUDIO = 1
    case IMAGE = 2
    case VIDEO = 3
}

public enum CommandType: String {
    case VIDEO_HIGH = "-ab 256k -b 1024k -vcodec mpeg4" 
    case VIDEO_MEDIUM = "-ab 128k -b 512k -vcodec mpeg4"
    case VIDEO_LOW = "-ab 64k -b 256k -vcodec mpeg4"
    case IMAGE_HIGH = "-q:v 1"
    case IMAGE_MEDIUM = "-q:v 10"
    case IMAGE_LOW = "-q:v 20"
    case AUDIO_HIGH = "-b:a 320k"
    case AUDIO_MEDIUM = "-b:a 160k"
    case AUDIO_LOW = "-b:a 8k"
    
}

public enum RotateEnum: String {
    case COUNTER_CLOKWISE_FLIP_VERTICALLY = "-vf transpose=0"
    case CLOCKWISE = "-vf transpose=1"
    case COUNTER_CLOCKWISE = "-vf transpose=2"
    case CLOKWISE_FLIP_VERTICALLY = "-vf transpose=3"
    case COUNTER_CLOCKWISE_FOR_TWO = "-vf transpose=2,transpose=2"
    case NONE = ""
}
