cask "geol" do
  name "geol"
  desc "geol, the cli to efficiently display product end-of-life dates in your terminal using the endoflife.date API."
  homepage "https://github.com/opt-nc/geol"
  version "2.13.0"

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
      sha256 "cc7e8b61c746ffc905593ca01523fe16f4834bb07c2a5b459ee35a2fdf26de95"
    end
    on_arm do
      url "https://github.com/opt-nc/geol/releases/download/v#{version}/geol_Darwin_arm64.tar.gz",
        using: :homebrew_curl
      sha256 "37debfdbf620daacbf0deff7fa70bd7cf42caa8956e40f681aae53f624670b90"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/opt-nc/geol/releases/download/v#{version}/geol_Linux_x86_64.tar.gz",
        using: :homebrew_curl
      sha256 "dfc71a359b514cb6f636b136771d9ada49893594601789f8b4e6bee7f427cc2f"
    end
    on_arm do
      url "https://github.com/opt-nc/geol/releases/download/v#{version}/geol_Linux_arm64.tar.gz",
        using: :homebrew_curl
      sha256 "9ff8cb9c50b04299160aaaf955638c35ab9a41e262de1c01436f8e28c098e04b"
    end
  end

  # No zap stanza required
end
