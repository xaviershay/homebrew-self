require "formula"

class Flip < Formula
  homepage "https://github.com/anthonybishopric/flip"
  url "https://github.com/anthonybishopric/flip/archive/master.tar.gz"
  head "https://github.com/anthonybishopric/flip.git"
  sha256 "6130e07e50e764d655e5062d47005244be262f4fd3ecf2ece0e2578449cecef4"
  version '0.1'

  depends_on 'go' => :build

  def install
    ENV['GOPATH'] = buildpath
    system 'go', 'get', '-d'
    system 'go', 'build', 'flip.go'
    bin.install 'flip'
  end
end
