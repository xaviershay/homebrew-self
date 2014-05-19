require "formula"

class Gssh < Formula
  homepage "https://github.com/syamp/gssh"
  url "https://github.com/syamp/gssh/archive/v1.0.0.tar.gz"
  head "https://github.com/syamp/gssh.git"
  sha1 "571ad6a1e2952599eeba78698833019fd5964d9f"

  depends_on 'go' => :build

  def install
    ENV['GOPATH'] = buildpath
    system 'go', 'get', '-d'
    system 'go', 'build', 'gssh.go'
    bin.install 'gssh'
  end

  bottle do
    root_url 'https://raw.githubusercontent.com/xaviershay/homebrew-bottles/master'
    cellar :any
    sha1 "24c1f75ec6d8f779509b3c9384991ee73c7d17b4" => :mountain_lion
    sha1 "1f576f3fa7bc554773f13669a6a8389f5caae636" => :mavericks
  end
end
