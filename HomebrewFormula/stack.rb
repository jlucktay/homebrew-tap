# This file was generated by GoReleaser. DO NOT EDIT.
class Stack < Formula
  desc "A support tool for use with Terraform stacks, Azure DevOps build pipelines, and GitHub projects/repos."
  homepage "https://github.com/jlucktay/stack"
  version "0.8.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/jlucktay/stack/releases/download/v0.8.0/stack_0.8.0_Darwin_x86_64.tar.gz"
    sha256 "d143e8e1c112aa0b52ec53eb5500a23d1c0a770bc233b9fbeabfe309410f7d68"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/jlucktay/stack/releases/download/v0.8.0/stack_0.8.0_Linux_x86_64.tar.gz"
      sha256 "3f33e37ea54e10fb3a934677a2e6782b51744fd8d059908f1500b96c09dbbff8"
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
