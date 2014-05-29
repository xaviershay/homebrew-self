require "formula"

class Flip < Formula
  homepage "https://github.com/anthonybishopric/flip"
  url "https://github.com/anthonybishopric/flip/archive/master.tar.gz"
  head "https://github.com/anthonybishopric/flip.git"
  sha1 "42f6ecf390864daeff1e960972a5ca647ec832f3"
  version '0.1'

  depends_on 'go' => :build

  def install
    ENV['GOPATH'] = buildpath
    system 'go', 'get', '-d'
    system 'go', 'build', 'flip.go'
    bin.install 'flip'
  end

  bottle do
    root_url 'https://raw.githubusercontent.com/xaviershay/homebrew-bottles/master'
    cellar :any
    sha1 "5b41b8a27cb3a9d3a575a1390b622ba711a730df" => :mavericks
  end
end
