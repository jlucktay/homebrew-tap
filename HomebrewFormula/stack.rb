# This file was generated by GoReleaser. DO NOT EDIT.
class Stack < Formula
  desc "A support tool for use with Terraform stacks, Azure DevOps build pipelines, and GitHub projects/repos."
  homepage "https://github.com/jlucktay/stack"
  version "0.6.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/jlucktay/stack/releases/download/v0.6.1/stack_0.6.1_Darwin_x86_64.tar.gz"
    sha256 "8ef132a6699701942d174a441b7c57f16f56e369cef66562771e2e835aad4f94"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/jlucktay/stack/releases/download/v0.6.1/stack_0.6.1_Linux_x86_64.tar.gz"
      sha256 "a5b3dd28d7e5d8dc5591f0ee4e9310aede72c1ef950c94c6b52fe2afa53506ff"
    end
  end

  def install
    bin.install "stack"
  end

  def caveats; <<~EOS
    Please see the README for usage instructions: https://github.com/jlucktay/stack/blob/master/README.md
  EOS
  end
end
