class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.4.1"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.4.1/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "b8e10ca653eddf6a0a0a5f09ce35b203e71db59b7ff4f9f0b850209c0f830fff"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.4.1/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "c18c9bda37b7a20dfa602f625412425450fcfba04d9b0282fb22a8f9b40d75b7"
  else
    odie "Unexpected platform!"
  end

  def install
    if OS.mac? && Hardware::CPU.intel?
      bin.install "talostpl-darwin-amd64" => "talostpl"
    elsif OS.mac? && Hardware::CPU.arm?
      bin.install "talostpl-darwin-arm64" => "talostpl"
    end
  end
end
