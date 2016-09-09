Pod::Spec.new do |s|
  s.name             = "ContainerViewManager"
  s.version          = "1.0.6"
  s.summary          = "Helper classes to ContainerView usage with IE."
  s.description      = <<-DESC
ContainerViewManager helps you with linking more than one ViewController to the same ContainerView with segues in the Interface Builder.
                       DESC
  s.homepage         = "https://github.com/brurend/ContainerViewManager"
  s.license          = 'MIT'
  s.author           = { "brurend" => "brurend@hotmail.com" }
  s.source           = { :git => "https://github.com/brurend/ContainerViewManager.git", :tag => s.version.to_s }
  s.platform     = :ios, '8.3'
  s.requires_arc = true
  s.source_files = 'ContainerViewManager/*'
end
