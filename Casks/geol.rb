cask "geol" do
  name "geol"
  desc "geol, the cli to efficiently display product end-of-life dates in your terminal using the endoflife.date API."
  homepage "https://github.com/opt-nc/geol"
  version "2.14.0"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "geol"
  manpage "manpages/geol.1.gz"
  bash_completion "completions/geol.bash"
  zsh_completion "completions/geol.zsh"
  fish_completion "completions/geol.fish"

  on_macos do
    on_intel do
      url "https://github.com/opt-nc/geol/releases/download/v#{version}/geol_Darwin_x86_64.tar.gz",
        using: :homebrew_curl
      sha256 "c09086ad7591a853f9dea9d08d285f851e947c62d8906899d8cf591a2d59bb7f"
    end
    on_arm do
      url "https://github.com/opt-nc/geol/releases/download/v#{version}/geol_Darwin_arm64.tar.gz",
        using: :homebrew_curl
      sha256 "924621f79bc8eb774f6e6557f5e21c73b96ea584deca578563f198ac1e960f5f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/opt-nc/geol/releases/download/v#{version}/geol_Linux_x86_64.tar.gz",
        using: :homebrew_curl
      sha256 "616f29e7810e7353a1764af5c99a38f67a8389721a29a1efb6a06c7b9f564357"
    end
    on_arm do
      url "https://github.com/opt-nc/geol/releases/download/v#{version}/geol_Linux_arm64.tar.gz",
        using: :homebrew_curl
      sha256 "97e40aea114bc28ad9e2c9cf4d472477835e6cddbbce98ccfaee876bb467a9ac"
    end
  end

  # No zap stanza required
end
