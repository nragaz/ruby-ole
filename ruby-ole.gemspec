Kernel.load File.dirname(__FILE__) + '/lib/ole/storage/version.rb'

PKG_NAME = 'ruby-ole' unless defined?(PKG_NAME)
PKG_VERSION = Ole::Storage::VERSION unless defined?(PKG_VERSION)

Gem::Specification.new do |s|
	s.name = PKG_NAME 
	s.version = PKG_VERSION
	s.summary = %q{Ruby OLE library.}
	s.description = %q{A library for easy read/write access to OLE compound documents for Ruby.}
	s.authors = ['Charles Lowe']
	s.email = %q{aquasync@gmail.com}
	s.homepage = %q{http://code.google.com/p/ruby-ole}
	s.rubyforge_project = %q{ruby-ole}

	s.executables = ['oletool']
	s.files  = ['README', 'COPYING', 'Rakefile', 'ChangeLog', 'ruby-ole.gemspec', 'data/propids.yaml']
	s.files += Dir.glob('lib/**/*.rb')
	s.files += Dir.glob('test/{test_*.rb,*.doc,oleWithDirs.ole,test_SummaryInformation}')
	s.files += Dir.glob('bin/*')
	s.test_files = Dir.glob('test/test_*.rb')

	s.has_rdoc = true
	s.extra_rdoc_files = ['README', 'ChangeLog']
	s.rdoc_options += [
		'--main', 'README',
		'--title', "#{PKG_NAME} documentation",
		'--tab-width', '2'
	]
end

