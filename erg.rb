require "formula"

class Erg < Formula
  homepage "https://github.com/xaviershay/erg"
  url "https://github.com/xaviershay/erg/archive/v1.1.0.tar.gz"
  head "https://github.com/xaviershay/erg.git"
  sha1 "bc964559206017c4c6e9e688c191d9cea888f512"

  depends_on 'go' => :build

  def install
    ENV['GOPATH'] = buildpath
    system 'go', 'get', '-d'
    system 'go', 'build', 'erg.go'
    bin.install 'erg'
  end

  bottle do
    root_url 'https://raw.githubusercontent.com/xaviershay/homebrew-bottles/master'
    cellar :any
    sha1 "df07881d42452f4beb8f46753e1bafc82ca02632" => :mavericks
  end
end
