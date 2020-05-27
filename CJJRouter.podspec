Pod::Spec.new do |s|

s.name 			= 'CJJRouter'
s.version 		= '1.0.2'
s.license		= { :type => 'MIT'}
s.summary		= 'CJJRouter实现了一句代码跳转任意控制器（可传参数），不需要再引用头文件，减少耦合和依赖'	
s.description 		= 'CJJRouter is a tool to achieve pushing by one line of code.'
s.homepage 		= 'https://github.com/JimmyCJJ/CJJRouter'
s.authors		= { 'JimmyCJJ' => '403327747@qq.com' }
s.social_media_url	= 'https://www.jianshu.com/u/fd9922e50c1a'
s.ios.deployment_target = '9.0'
s.source 		= { :git => 'https://github.com/JimmyCJJ/CJJRouter.git',:commit => "c4b1240", :tag => s.version  }
s.frameworks = 'UIKit'
s.requires_arc = true
s.source_files = 'CJJRouterDemo/CJJRouterDemo/CJJRouter/*.{h,m}'

end

