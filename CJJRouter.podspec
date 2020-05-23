Pod::Spec.new do |s|

s.name 			= 'CJJRouter'
s.version 		= '1.0.0'
s.license		= { :type => 'MIT'}
s.summary		= 'CJJRouter'	
s.description 		= 'CJJRouter is a tool to achieve pushing by one line of code.'
s.homepage 		= 'https://github.com/JimmyCJJ/CJJRouter'
s.authors		= { 'JimmyCJJ' => '403327747@qq.com' }
s.social_media_url	= 'https://www.jianshu.com/u/fd9922e50c1a'
s.ios.deployment_target = '9.0'
s.source 		= { :git => 'https://github.com/JimmyCJJ/CJJRouter.git', :tag => s.version  }
s.frameworks = 'UIKit'
s.requires_arc = true
s.source_files = 'CJJRouterDemo/CJJRouterDemo/CJJRouter/*.{h,m}'

end

