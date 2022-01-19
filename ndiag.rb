# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ndiag < Formula
  desc "ndiag is a high-level architecture diagramming/documentation tool."
  homepage "https://github.com/k1LoW/ndiag"
  version "0.14.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/ndiag/releases/download/v0.14.2/ndiag_v0.14.2_darwin_amd64.zip"
      sha256 "71ff2ebfe91b06fb99d51a1a312bcc69b5cd77e7aed8adccdfabcdfbb4a1e990"

      def install
        system './ndiag', 'completion', 'bash', '--out', 'ndiag.bash'
        system './ndiag', 'completion', 'zsh', '--out', 'ndiag.zsh'
        bin.install 'ndiag'
        bash_completion.install 'ndiag.bash' => 'ndiag'
        zsh_completion.install 'ndiag.zsh' => '_ndiag'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/ndiag/releases/download/v0.14.2/ndiag_v0.14.2_linux_amd64.tar.gz"
      sha256 "72bfe741078607a15f028e1061e45a4a03cfb6cab3e170491469669a262a60b9"

      def install
        system './ndiag', 'completion', 'bash', '--out', 'ndiag.bash'
        system './ndiag', 'completion', 'zsh', '--out', 'ndiag.zsh'
        bin.install 'ndiag'
        bash_completion.install 'ndiag.bash' => 'ndiag'
        zsh_completion.install 'ndiag.zsh' => '_ndiag'
      end
    end
  end
end
