# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octocov < Formula
  desc "octocov is a tool for collecting code metrics."
  homepage "https://github.com/k1LoW/octocov"
  version "0.21.1"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/octocov/releases/download/v0.21.1/octocov_v0.21.1_darwin_amd64.zip"
      sha256 "2090c752bb32b23b4fc13f0fd69db241a7f208f8301af984f21dcba2b5b92fa8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/octocov/releases/download/v0.21.1/octocov_v0.21.1_linux_amd64.tar.gz"
      sha256 "3e33aa94f8da5c0f83ab37ba8c0aa5d4be5842289a064f7366bd4f73a2ce06a4"
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
