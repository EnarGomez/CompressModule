//
//  ArandaCompress.swift
//  ArandaCompressModule
//
//  Created by Enar GoMez on 23/04/20.
//  Copyright © 2020 Aranda. All rights reserved.
//

import Foundation


public class ArandaCompress {
    let compressUtil = CompresUtil()
    
    public init(){
        
    }
    
    
    /// comprime un archivo multimedia (audio, imagen, video) utlizando la libreria mmpeg
    /// - Parameters:
    ///   - path: ruta del archivo a convertir
    ///   - quality: calidad deseada (HIGH, MEDIUM, LOW),
    ///   - filetype: tipo de archivo a convertir AUDIO, IMAGEN, VIDEO
    ///   - postCompleted: bloque de informacion con el resultado de la informacion
    /// - Returns: true y ruta del nuevo archivo en caso de exito
    public func compressInBackgound(path:String, quality: Quality, filetype: FileType, rotate:RotateEnum, postCompleted : @escaping (_ succeeded: Bool, _ msg: String, _ path: String) -> ()){
        
        //obtiene el nombre del archivo desde la ruta
        let fileName = Utils.getFileName(path: path)
        //print("fileName: \(fileName)")
        //obtine la ruta del archivo
        let filePath = Utils.getPathWithOutFileName(path: path, fileName: fileName)
        //print("filePath: \(filePath)")
        //obtiene el nombre del archivo sin extension
        let fileNameWithOutExtension = Utils.getFileNameWithOutExtension(fileName: fileName)
        //print("fileNameWithOutExtension: \(fileNameWithOutExtension)")
        let temporaryFileName = Utils.getNameForTemporalFile(fileName: fileNameWithOutExtension, fileType: filetype)
        //print("temporaryFileName: \(temporaryFileName)")
        let commandType = Utils.getCommandType(fileType: filetype, quality: quality)
        //print("commandType: \(commandType.rawValue)")
        let command = Utils.getCommandFor(originalFile: path, temporalFile: "\(filePath)\(temporaryFileName)", commnad: commandType, rotate: rotate)
        //print("command \(command)")
        self.executeCommand(command: command) { (success, msg) in
            if success {
              
                let extensionNewFile = Utils.getFileExtension(fileName: temporaryFileName)
                //print("extensionNewFile: \(extensionNewFile)")
                let newFileName = "\(fileNameWithOutExtension).\(extensionNewFile)"
                //print("newFileNewPath: \(newFileName)")
                let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
                let url = NSURL(fileURLWithPath: path)
                if let pathComponent = url.appendingPathComponent(fileName),
                    let newPathFile = url.appendingPathComponent(temporaryFileName){
                    let renamePath = url.appendingPathComponent(newFileName)
                    let filePath = pathComponent.path
                    let newFilePath = newPathFile.path
                    let fileManager = FileManager.default
                    if fileManager.fileExists(atPath: filePath) && fileManager.fileExists(atPath: newFilePath){
                        do {
                            //print("FILE AVAILABLE")
                            try fileManager.removeItem(atPath: filePath)
                            //se renombre el archivo
                            if filetype == .AUDIO{
                                try fileManager.moveItem(atPath: newFilePath, toPath: renamePath!.path) //filePath
                            }else{
                                try fileManager.moveItem(atPath: newFilePath, toPath: filePath) //filePath
                            }
                            postCompleted(true, "", newFileName)
                        }catch let error as NSError {
                            print("ERROR: \(error.description)")
                            postCompleted(false, "ERROR: currio un error al procesar los archivos los rchivo", error.description)
                        }
                    } else {
                        //print("FILE NOT AVAILABLE")
                        postCompleted(false, "ERROR: ocurrio un error al convertir archivo", "")
                    }
                } else {
                    //print("FILE PATH NOT AVAILABLE")
                    postCompleted(false, "ERROR: FILE PATH NOT AVAILABLE", "")
                }
            }else {
                print("ERROR: ocurrio un error al convertir archivo")
                 postCompleted(false, "ERROR: ocurrio un error al convertir archivo", "")
            }
           
        }
    }
    
    
    /// Ejecuta el llamado a la utilidad de compresion de archivos
    /// - Parameters:
    ///   - command: cadena de texto con el comando a ejecutar
    ///   - postCompleted: bloque de resultado
    /// - Returns: bloque
    private func executeCommand(command:String, postCompleted : @escaping (_ succeeded: Bool, _ msg: String) -> ()){
        
        self.compressUtil.executeCommand(command) {(success : Bool, message: String) in
            postCompleted(success,message)
        }
    }
    
    
}
