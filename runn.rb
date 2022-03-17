# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runn < Formula
  desc "runn is a tool for running operations following a scenario."
  homepage "https://github.com/k1LoW/runn"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k1LoW/runn/releases/download/v0.10.1/runn_v0.10.1_darwin_arm64.zip"
      sha256 "b4d51bb9b10abd940f5b290ea42c8d50b83ccbb6bd6336a638459af334332ae5"

      def install
        bin.install 'runn'
        output = Utils.safe_popen_read("#{bin}/runn", 'completion', 'bash')
        (bash_completion/'runn').write output
        output = Utils.safe_popen_read("#{bin}/runn", 'completion', 'zsh')
        (zsh_completion/'_runn').write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/runn/releases/download/v0.10.1/runn_v0.10.1_darwin_amd64.zip"
      sha256 "ab9c7ab3f8af14b8b65b8d653ae16bb1e9ba9421e0b5afec83e1c8a72ff917ba"

      def install
        bin.install 'runn'
        output = Utils.safe_popen_read("#{bin}/runn", 'completion', 'bash')
        (bash_completion/'runn').write output
        output = Utils.safe_popen_read("#{bin}/runn", 'completion', 'zsh')
        (zsh_completion/'_runn').write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/runn/releases/download/v0.10.1/runn_v0.10.1_linux_amd64.tar.gz"
      sha256 "08cf510008d0eb884632892cc83a9c39589b69fc9dffe83159fd52cff199957e"

      def install
        bin.install 'runn'
        output = Utils.safe_popen_read("#{bin}/runn", 'completion', 'bash')
        (bash_completion/'runn').write output
        output = Utils.safe_popen_read("#{bin}/runn", 'completion', 'zsh')
        (zsh_completion/'_runn').write output
      end
    end
  end
end
