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
    revision 1
    sha1 "5c403897eee083b13ec2260399a0d1c84d767afc" => :mountain_lion
  end
end
