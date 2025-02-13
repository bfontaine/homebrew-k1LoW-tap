# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GhStarHistory < Formula
  desc "Show star history of repositories."
  homepage "https://github.com/k1LoW/gh-star-history"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k1LoW/gh-star-history/releases/download/v0.1.0/gh-star-history_v0.1.0_darwin_arm64.zip"
      sha256 "8c2f293551bdf00ea0a44b708286be6def1303cab57712b32131ed9af25ca822"

      def install
        bin.install "gh-star-history"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/gh-star-history/releases/download/v0.1.0/gh-star-history_v0.1.0_darwin_amd64.zip"
      sha256 "f1c5e861fed9daa15871ad2c62ce1d6741f69991a5012d6ae600c5aa64730c1a"

      def install
        bin.install "gh-star-history"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/gh-star-history/releases/download/v0.1.0/gh-star-history_v0.1.0_linux_amd64.tar.gz"
      sha256 "ae2b1ad1d129cc1c00a7bbb47c1c9cbd9fdb833a3145c15bd5496f998e621ab9"

      def install
        bin.install "gh-star-history"
      end
    end
  end
end
