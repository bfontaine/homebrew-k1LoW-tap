# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octocov < Formula
  desc "octocov is a tool for collecting code metrics."
  homepage "https://github.com/k1LoW/octocov"
  version "0.25.0"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/octocov/releases/download/v0.25.0/octocov_v0.25.0_darwin_amd64.zip"
      sha256 "d58e6796970a14721e2c5266971059347f84b98659fefe7ddeab208f77ab04dd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/octocov/releases/download/v0.25.0/octocov_v0.25.0_linux_amd64.tar.gz"
      sha256 "fc44dc702b2573f9eb5e665f7cb3242d041a6fb41ef5134b158a8c1b2b71ac9b"
    end
  end

  def install
    bin.install 'octocov'
    output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'bash')
    (bash_completion/'octocov').write output
    output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'zsh')
    (zsh_completion/'_octocov').write output
  end
end
