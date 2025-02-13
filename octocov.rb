# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octocov < Formula
  desc "octocov is a toolkit for collecting code metrics."
  homepage "https://github.com/k1LoW/octocov"
  version "0.40.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/octocov/releases/download/v0.40.1/octocov_v0.40.1_darwin_amd64.zip"
      sha256 "033f2c0c9c6362d4a6110000913664c69adc18a2b0ada16607d9b4b95945bd3f"

      def install
        bin.install 'octocov'
        output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'bash')
        (bash_completion/'octocov').write output
        output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'zsh')
        (zsh_completion/'_octocov').write output
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/k1LoW/octocov/releases/download/v0.40.1/octocov_v0.40.1_darwin_arm64.zip"
      sha256 "086e28933b218d0463be8d5ddbf2517f2c3b49c94cd8ae68259c6c000b554794"

      def install
        bin.install 'octocov'
        output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'bash')
        (bash_completion/'octocov').write output
        output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'zsh')
        (zsh_completion/'_octocov').write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/octocov/releases/download/v0.40.1/octocov_v0.40.1_linux_amd64.tar.gz"
      sha256 "691e55134e1b475a267e924a1affe855c1934e6a4e24241e633049c676c42ad6"

      def install
        bin.install 'octocov'
        output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'bash')
        (bash_completion/'octocov').write output
        output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'zsh')
        (zsh_completion/'_octocov').write output
      end
    end
  end
end
