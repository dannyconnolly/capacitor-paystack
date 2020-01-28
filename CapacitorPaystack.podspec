
  Pod::Spec.new do |s|
    s.name = 'CapacitorPaystack'
    s.version = '0.0.1'
    s.summary = 'A capacitor plugin to handle paystack payments'
    s.license = 'MIT'
    s.homepage = 'https://github.com/dannyconnolly/capacitor-paystack'
    s.author = 'Danny Connolly'
    s.source = { :git => 'https://github.com/dannyconnolly/capacitor-paystack', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '11.0'
    s.dependency 'Capacitor'
  end