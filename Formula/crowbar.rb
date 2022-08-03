# frozen_string_literal: true

# The main formula
class Crowbar < Formula
  desc "Your trusty tool for retrieving AWS credentials securely via SAML"
  homepage "https://github.com/moritzheiber/crowbar"
  url "https://github.com/moritzheiber/crowbar/releases/download/v0.4.9/crowbar-x86_64-macos"
  version "0.4.9"
  sha256 "79c198f998733aedf58bc4ac4967a1d1cd4d609610cf5a664d458df8c4daaf92"

  def install
    mv "crowbar-x86_64-macos", "crowbar"
    bin.install "crowbar"
  end

  test do
    system "#{bin}/crowbar", "--version"
  end
end
