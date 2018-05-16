Pod::Spec.new do |s|
s.name         = 'BMHUD'
s.version      = '1.0.0'
s.summary      = 'MBProgressHUD custom encapsulation'
s.homepage     = 'https://github.com/liangdahong/BMHUD'
s.license      = 'MIT'
s.authors      = {'liangdahong' => 'ios@liangdahong.com'}
s.platform     = :ios, '6.0'
s.source       = {:git => 'https://github.com/liangdahong/BMHUD.git', :tag => s.version}
s.source_files = 'BMHUD/BMHUD/**/*.{h,m}'
s.resources    = 'BMHUD/BMHUD/**/*.{png}'
s.requires_arc = true
end
