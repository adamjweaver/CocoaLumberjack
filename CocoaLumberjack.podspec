Pod::Spec.new do |s|
  s.name     = 'CocoaLumberjack'
  s.version  = '1.3.3'
  s.license  = 'BSD'
  s.summary  = 'A fast & simple, yet powerful & flexible logging framework for Mac and iOS.'
  s.homepage = 'https://github.com/robbiehanson/CocoaLumberjack'
  s.author   = { 'Robbie Hanson' => 'robbiehanson@deusty.com' }
  s.source   = { :git => 'https://github.com/robbiehanson/CocoaLumberjack.git',
                 :tag => '1.3.3' }

  s.description = 'It is similar in concept to other popular logging frameworks such as log4j, '   \
                  'yet is designed specifically for objective-c, and takes advantage of features ' \
                  'such as multi-threading, grand central dispatch (if available), lockless '      \
                  'atomic operations, and the dynamic nature of the objective-c runtime.'

  
  s.osx.deployment_target   = '10.6'
  s.preserve_paths = 'Lumberjack/**/README*'

  s.public_header_files = 'Lumberjack/**/*.h'
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'Lumberjack/*.{h,m}'
  end

  s.subspec 'Extensions' do |ss|
    ss.dependency 'CocoaLumberjack/Core'
    ss.source_files = 'Lumberjack/Extensions/*.{h,m}'
  end
end
