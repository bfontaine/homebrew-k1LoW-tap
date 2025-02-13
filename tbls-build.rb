# This file was generated by GoReleaser. DO NOT EDIT.
class TblsBuild < Formula
  desc "tbls-build is an external subcommand of tbls for customizing config file of tbls using other tbls.yml or schema.json."
  homepage "https://github.com/k1LoW/tbls-build"
  version "0.3.0"

  if OS.mac?
    url "https://github.com/k1LoW/tbls-build/releases/download/v0.3.0/tbls-build_v0.3.0_darwin_amd64.zip"
    sha256 "fc266a5048335a93bda511bd0fd256e4200da96dc44c7818f3841f815faa8e6f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/tbls-build/releases/download/v0.3.0/tbls-build_v0.3.0_linux_amd64.tar.gz"
      sha256 "da9326a44202776c6a80988703fb9399232149550a96d29795c4c42856c51901"
    end
  end

  depends_on "tbls"

  def install
    system './tbls-build', 'completion', 'bash', '--out', 'tbls-build.bash'
    system './tbls-build', 'completion', 'zsh', '--out', 'tbls-build.zsh'
    bin.install 'tbls-build'
    bash_completion.install 'tbls-build.bash' => 'tbls-build'
    zsh_completion.install 'tbls-build.zsh' => '_tbls-build'
  end
end
