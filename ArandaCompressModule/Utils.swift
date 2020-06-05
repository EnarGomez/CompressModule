//
//  Utils.swift
//  ArandaCompressModule
//
//  Created by Enar GoMez on 23/04/20.
//  Copyright © 2020 Aranda. All rights reserved.
//

import Foundation

public class Utils {
    
    /// Obtiene el nombre de un archivo desde una ruta
    /// - Parameter path: ruta del archivo
    /// - Returns: nombre del archivo o vacio si la ruta no cuenta con el separador dado '/'
    class func getFileName(path:String)-> String {
        let arrParts = path.split(separator: "/")
        if arrParts.count > 1 {
            return String(arrParts[arrParts.count - 1])
        }
        return ""
    }
    
    /// Obtiene la ruta sin el nombre del archivo al final
    /// - Parameters:
    ///   - path: ruta del archivo
    ///   - fileName: nombre del archivo
    /// - Returns: ruta del archivo sin el nombre de archivo
    class func getPathWithOutFileName(path:String, fileName:String) -> String{
        return String(path.prefix(path.count - fileName.count))
    }
    
    class func getFileNameWithOutExtension(fileName:String) -> String {
        let arrParts = fileName.split(separator:".")
        let index = arrParts.count - 1
        let array = arrParts[0..<index]
        return array.joined(separator: "")
    }
    
    class func getFileExtension(fileName: String) -> String{
        let arrParts = fileName.split(separator:".")
        return String(arrParts[arrParts.count - 1])
    }
    
    /// obtiene el nombre para un archivo temporal en base de su extension.
    /// - Parameters:
    ///   - fileName: nombre del archivo
    ///   - fileType: tipo de archivo
    /// - Returns: nombre temporal del archivo con la extension dada
    class func getNameForTemporalFile(fileName:String, fileType: FileType) -> String {
        let extensionFile:String
        switch fileType {
        case .AUDIO:
            extensionFile = ".mp3"
            break
        case .IMAGE:
            extensionFile = ".jpg"
            break
        case .VIDEO:
            extensionFile = ".mov"
            break
       
        }
        return "\(fileName)tmp\(extensionFile)"
    }
    
    /// Construye el comando a ejecutarse por la libreria
    /// - Parameters:
    ///   - originalFile: ruta del archivo original
    ///   - temporalFile: ruta del nuevo archivo
    ///   - commnad: configuración a ejecutar
    ///   - rotate: indica si se debe rotar el archivo
    /// - Returns: cadena de comando a ejecutar
    class func getCommandFor(originalFile:String, temporalFile:String, commnad: CommandType, rotate: RotateEnum) -> String {
        if rotate.rawValue != RotateEnum.NONE.rawValue{
            return "-i \(originalFile) \(commnad.rawValue) \(rotate.rawValue) \(temporalFile)"
        }else{
            return "-i \(originalFile) \(commnad.rawValue) \(temporalFile)"
        }
    }
    
    class func getCommandType(fileType: FileType, quality: Quality) -> CommandType {
        let commanType: CommandType
        switch fileType {
        case .AUDIO:
            if(quality == Quality.HIGH){
                commanType = .AUDIO_HIGH
            }else if(quality == Quality.MEDIUM){
                commanType = .AUDIO_MEDIUM
            }else{
                commanType = .AUDIO_LOW
            }
            break
        case .IMAGE:
            if(quality == Quality.HIGH){
                commanType = .IMAGE_HIGH
            }else if(quality == Quality.MEDIUM){
                commanType = .IMAGE_MEDIUM
            }else{
                commanType = .IMAGE_LOW
            }
            break
        case .VIDEO:
            if(quality == Quality.HIGH){
                commanType = .VIDEO_HIGH
            }else if(quality == Quality.MEDIUM){
                commanType = .VIDEO_MEDIUM
            }else{
                commanType = .VIDEO_LOW
            }
            break
        }
        return commanType
    }
}
