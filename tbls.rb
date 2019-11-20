# This file was generated by GoReleaser. DO NOT EDIT.
class Tbls < Formula
  desc "tbls is a CI-Friendly tool for document a database, written in Go."
  homepage "https://github.com/k1LoW/tbls"
  version "1.22.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/k1LoW/tbls/releases/download/v1.22.1/tbls_v1.22.1_darwin_amd64.zip"
    sha256 "8199f36dee60899d017ca1b010789cf5d8eb61157114c0fb3c5915f48948abf0"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/tbls/releases/download/v1.22.1/tbls_v1.22.1_linux_amd64.tar.gz"
      sha256 "637e3986ebd8c8a85f132fc49eb1a89d058d91935303c293c6443f53dcc44bd8"
    end
  end

  def install
    bin.install 'tbls'
  end
end
