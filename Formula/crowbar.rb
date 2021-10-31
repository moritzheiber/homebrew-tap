# frozen_string_literal: true

# The main formula
class Crowbar < Formula
  desc "Your trusty tool for retrieving AWS credentials securely via SAML"
  homepage "https://github.com/moritzheiber/crowbar"
  version "0.3.9"

  if OS.mac?
    url "https://github.com/moritzheiber/crowbar/releases/download/v0.3.9/crowbar-x86_64-macos"
    sha256 "8c214925df64b3df6ab6f35e3f72a518a772d8d2a88a96277b8dc7b00e87149e"
  end

  def install
    mv "crowbar-x86_64-macos", "crowbar"
    bin.install "crowbar"
  end

  test do
    system "#{bin}/crowbar", "--version"
  end
end
