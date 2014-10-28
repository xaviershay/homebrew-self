require "formula"

class Erg < Formula
  homepage "https://github.com/xaviershay/erg"
  url "https://github.com/xaviershay/erg/archive/v1.1.1.tar.gz"
  head "https://github.com/xaviershay/erg.git"
  sha1 "95b3935557a47703998f6aede1e549459f69275d"

  depends_on 'go' => :build

  def install
    ENV['GOPATH'] = buildpath
    system 'go', 'get', 'github.com/xaviershay/erg'
    system 'go', 'get', 'github.com/droundy/goopt'
    system 'go', 'build', 'main/erg.go'
    bin.install 'erg'
  end

  bottle do
    root_url 'https://raw.githubusercontent.com/xaviershay/homebrew-bottles/master'
    cellar :any
    sha1 "5d8da89bddeb5b0a8b280469c406973ad31c895e" => :mavericks
  end
end
