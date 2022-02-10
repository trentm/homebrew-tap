# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ecslog < Formula
  desc "Pretty rendering of ecs-logging logs"
  homepage "https://github.com/trentm/go-ecslog"
  version "0.6.0"
  license "Apache-2.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/trentm/go-ecslog/releases/download/v0.6.0/ecslog_0.6.0_macos_x86_64.tar.gz"
    sha256 "6ac731144278dcfc4cb2cadd6dd6fa9e49c150de11acfde9a22173df9e402592"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/trentm/go-ecslog/releases/download/v0.6.0/ecslog_0.6.0_macos_arm64.tar.gz"
    sha256 "e48aaf86e1db4fcc92a35f91825f60eda0ab7e6916ddec7e35a04db981c29f71"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/trentm/go-ecslog/releases/download/v0.6.0/ecslog_0.6.0_linux_x86_64.tar.gz"
    sha256 "f19b18049ae6303b2ace84cb7d12049779c1a91018b65924cc44d70868379621"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/trentm/go-ecslog/releases/download/v0.6.0/ecslog_0.6.0_linux_arm64.tar.gz"
    sha256 "c8a980bc58438dcdf45ef6408db09ce374dff58973a32c91f04a26982f1f2160"
  end

  def install
    bin.install "ecslog"
  end

  test do
    system "#{bin}/ecslog --version"
  end
end
