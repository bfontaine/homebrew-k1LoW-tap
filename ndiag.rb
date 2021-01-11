# This file was generated by GoReleaser. DO NOT EDIT.
class Ndiag < Formula
  desc "ndiag is a high-level architecture diagramming/documentation tool."
  homepage "https://github.com/k1LoW/ndiag"
  version "0.9.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/k1LoW/ndiag/releases/download/v0.9.0/ndiag_v0.9.0_darwin_amd64.zip"
    sha256 "98a52b8dfc69bb894171d9de3a22cb409596438e861498e3938e9d45a73f6312"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/ndiag/releases/download/v0.9.0/ndiag_v0.9.0_linux_amd64.tar.gz"
      sha256 "48561cbe680236345b49b5b72186745b12a50c6518e385fae6c7430a9f2de2b8"
    end
  end

  def install
    system './ndiag', 'completion', 'bash', '--out', 'ndiag.bash'
    system './ndiag', 'completion', 'zsh', '--out', 'ndiag.zsh'
    bin.install 'ndiag'
    bash_completion.install 'ndiag.bash' => 'ndiag'
    zsh_completion.install 'ndiag.zsh' => '_ndiag'
  end
end
