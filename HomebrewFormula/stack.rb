# This file was generated by GoReleaser. DO NOT EDIT.
class Stack < Formula
  desc "A support tool for use with Terraform stacks, Azure DevOps build pipelines, and GitHub projects/repos."
  homepage "https://github.com/jlucktay/stack"
  version "0.2.0"

  if OS.mac?
    url "https://github.com/jlucktay/stack/releases/download/v0.2.0/stack_0.2.0_Darwin_x86_64.tar.gz"
    sha256 "9759c4d0d2cebf4f9ad7191572aaf8656fbe955f0fb45472ca3ee30eebd61676"
  elsif OS.linux?
    url "https://github.com/jlucktay/stack/releases/download/v0.2.0/stack_0.2.0_Linux_x86_64.tar.gz"
    sha256 "d5cd543273a497c33d661f911d1f2d6e5a410d749d0585f5780609f9713bfd31"
  end

  def install
    bin.install "stack"
  end

  def caveats; <<~EOS
    Please see the README for usage instructions: https://github.com/jlucktay/stack/blob/master/README.md
  EOS
  end
end
