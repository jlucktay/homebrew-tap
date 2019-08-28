# This file was generated by GoReleaser. DO NOT EDIT.
class Stack < Formula
  desc "A support tool for use with Terraform stacks, Azure DevOps build pipelines, and GitHub projects/repos."
  homepage "https://github.com/jlucktay/stack"
  version "0.5.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/jlucktay/stack/releases/download/v0.5.5/stack_0.5.5_Darwin_x86_64.tar.gz"
    sha256 "f23f60e371ee91cd0d2a7ffb82f5a2e828ffce32708a3bdfc2a471f32ad32fdc"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/jlucktay/stack/releases/download/v0.5.5/stack_0.5.5_Linux_x86_64.tar.gz"
      sha256 "4fcf702cd800c791df6c77b6d47429d1409cf27838a3c9bbbd325b0798fce6d3"
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
