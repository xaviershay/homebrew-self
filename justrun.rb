require "formula"

class Justrun < Formula
  homepage "https://github.com/jmhodges/justrun"
  url "https://github.com/jmhodges/justrun/archive/v1.0.0.tar.gz"
  sha256 "f7aaedfbd1812cddac3ba0aa8646eae4a0256dc083d30bb64459462a84ae946d"

  depends_on 'go' => :build

  def install
    ENV['GOPATH'] = buildpath
    system 'go', 'get', '-d'
    system 'go', 'build', '-o', 'justrun'
    bin.install 'justrun'
  end

  bottle do
    root_url 'https://raw.githubusercontent.com/xaviershay/homebrew-bottles/master'
    cellar :any
    sha256 "d20bffcf5f3a2710e513a6a2b0cf1543e3ef4153" => :mavericks
  end
end
