# This file was generated by GoReleaser. DO NOT EDIT.
class Stack < Formula
  desc "A support tool for use with Terraform stacks, Azure DevOps build pipelines, and GitHub projects/repos."
  homepage "https://github.com/jlucktay/stack"
  version "0.3.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/jlucktay/stack/releases/download/v0.3.0/stack_0.3.0_Darwin_x86_64.tar.gz"
    sha256 "9b4ff0d84d776325589cabfe340b2f5c28a34bb2cbd7e8c6d4de4b97aba12bd8"
  elsif OS.linux?
    url "https://github.com/jlucktay/stack/releases/download/v0.3.0/stack_0.3.0_Linux_x86_64.tar.gz"
    sha256 "bc16985fd5ba9112bb83881c0978260b3a632deaaf12b3f89736c4925c6bed49"
  end

  def install
    bin.install "stack"
  end

  def caveats; <<~EOS
    Please see the README for usage instructions: https://github.com/jlucktay/stack/blob/master/README.md
  EOS
  end
end
