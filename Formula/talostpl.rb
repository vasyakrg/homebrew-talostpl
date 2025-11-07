class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.1.9"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.1.9/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "50d7fe39daf2449634980bbf597394267a7e517fc3d99eda09b880f1eccf51ba"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.1.9/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "1ffcbe72f4645f49d4af52ee56fb610f064b06bb9ad4251698a75ab8b65b1df2"
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
