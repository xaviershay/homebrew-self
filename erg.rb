require "formula"

class Erg < Formula
  homepage "https://github.com/xaviershay/erg"
  url "https://github.com/xaviershay/erg/archive/v1.0.1.tar.gz"
  sha1 "fd8d366a3229f8f62ea8203ca4f1f64b372bce3f"

  depends_on 'go' => :build

  def install
    ENV['GOPATH'] = buildpath
    system 'go', 'get', '-d'
    system 'go', 'build', 'erg.go'
    bin.install 'erg'
  end

  bottle do
    root_url 'https://raw.githubusercontent.com/xaviershay/homebrew-self/master'
    cellar :any
    sha1 "14d7006ab7fe8bd66e60535a12aabc8f129ed30d" => :mavericks
  end
end
