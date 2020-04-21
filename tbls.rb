# This file was generated by GoReleaser. DO NOT EDIT.
class Tbls < Formula
  desc "tbls is a CI-Friendly tool for document a database, written in Go."
  homepage "https://github.com/k1LoW/tbls"
  version "1.35.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/k1LoW/tbls/releases/download/v1.35.0/tbls_v1.35.0_darwin_amd64.zip"
    sha256 "0b394aea1dcdbb0fe663e3b728912d533f9e0f3042d4a92e36a4c23b43549575"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/tbls/releases/download/v1.35.0/tbls_v1.35.0_linux_amd64.tar.gz"
      sha256 "75d97945dd56cbd6d65f454e354571161ee4e2ca3d3ddad2c2906a3465721b74"
    end
  end

  def install
    system './tbls', 'completion', 'bash', '--out', 'tbls.bash'
    system './tbls', 'completion', 'zsh', '--out', 'tbls.zsh'
    bin.install 'tbls'
    bash_completion.install 'tbls.bash' => 'tbls'
    zsh_completion.install 'tbls.zsh' => '_tbls'
  end
end
