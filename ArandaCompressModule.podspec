Pod::Spec.new do |s|

#Configuracion
s.platform = :ios
s.ios.deployment_target = '9.0'
s.name = "ArandaCompressModule"
s.summary = "ArandaCompressModule es una librería para comprimir archivos usando FFMpeg."
s.requires_arc = true

#Version
s.version = "1.0.1"

#Licencia
s.license = { :type => "MIT", :file => "LICENSE" }

# Autor
s.author = { "Enar Gómez" => "enar.gomez@arandasoft.com" }

# pagina inicial
s.homepage = "https://github.com/EnarGomez/CompressModule"

# repositorio
s.source = { :git => "https://github.com/EnarGomez/CompressModule.git",
             :tag => "#{s.version}" }

# dependencias
#s.framework = "UIKit"
s.dependency 'mobile-ffmpeg-full', '3.1'

# archivos de software
s.source_files = "ArandaCompressModule/**/*.{h,m,swift}"
s.exclude_files = "ArandaCompressModule/*.plist"
# archivos de recursos
#s.resources = "ArandaCompressModule/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

# swift version
s.swift_version = "5.0"

end

