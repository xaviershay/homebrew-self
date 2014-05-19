require "formula"

class Gssh < Formula
  homepage "https://github.com/syamp/gssh"
  url "https://github.com/syamp/gssh/archive/master.zip"
  head "https://github.com/syamp/gssh.git"
  sha1 "1e5979f15503eff38aad9f203951a081951a8d56"
  version '0.1'

  depends_on 'go' => :build

  def install
    ENV['GOPATH'] = buildpath
    system 'go', 'get', '-d'
    system 'go', 'build', 'gssh.go'
    bin.install 'gssh'
  end
end
