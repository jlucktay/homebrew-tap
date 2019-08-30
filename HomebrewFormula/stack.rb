# This file was generated by GoReleaser. DO NOT EDIT.
class Stack < Formula
  desc "A support tool for use with Terraform stacks, Azure DevOps build pipelines, and GitHub projects/repos."
  homepage "https://github.com/jlucktay/stack"
  version "0.5.7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/jlucktay/stack/releases/download/v0.5.7/stack_0.5.7_Darwin_x86_64.tar.gz"
    sha256 "8755a45cf949fabae9c091601c11f51c920a9010ee9fac73d395149547647b1d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/jlucktay/stack/releases/download/v0.5.7/stack_0.5.7_Linux_x86_64.tar.gz"
      sha256 "a6f097567694ce43391655525a342354880ee823bdaee0f82b5024a2a7db6e0c"
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
