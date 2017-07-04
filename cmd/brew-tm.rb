#:  * `tm` `audit` <token>:
#:    Check whether the given Cask is valid for use with
#:    `brew tm` and passes all requirements.
#:
#:  * `tm` `cat` <token>:
#:    Display the Cask that belongs to the given token.
#:
#:  * `tm` `edit` <token>:
#:    Open the Cask in a text editor.
#:
#:  * `tm` `help`:
#:    Display this help text.
#:
#:  * `tm` `home`:
#:    Open the homepage of the external `brew tm` command.
#:
#:  * `tm` `home` <token>:
#:    Open the project homepage for the given TextMate bundle
#:    token.
#:
#:  * `tm` `info` <token>:
#:    Display information about the TextMate bundle with
#:    the given token.
#:
#:  * `tm` `install` [--force] <token>:
#:    Download and install the TextMate bundle with the
#:    given token.
#:
#:  * `tm` `reinstall` [--force] <token>:
#:    Download and reinstall the TextMate bundle with the
#:    given token; if an old installation exists, it will be
#:    removed before reinstalling.
#:
#:  * `tm` `search`:
#:    List all known TextMate bundles in all tapped
#:    repositories.
#:
#:  * `tm` `search` <text>:
#:    Search all tapped repositories for TextMate bundles
#:    whose token starts with the given substring.
#:
#:  * `tm` `uninstall` [--force] <token>:
#:    Uninstall the TextMate bundle with the given token.

$LOAD_PATH.unshift("#{HOMEBREW_LIBRARY_PATH}/cask/lib")
require "hbc"

require_relative "hbc/artifact"
require_relative "hbc/dsl"
require_relative "hbc/locations"

BREW_TM_HOME = "https://github.com/claui/homebrew-textmate"

module Homebrew
  module_function

  def run!
    odebug "Invoking the custom `brew tm` command"

    exec help_command if ARGV.empty?

    case sub_command
    when "audit" then default!
    when "cat" then default!
    when "edit" then default!
    when "help" then exec help_command
    when "home" then home!
    when "info" then default!
    when "install" then default!
    when "reinstall" then default!
    when "search" then search!
    when "uninstall" then default!
    else onoe "Unsupported command: #{sub_command}"
    end
  end

  def home!
    if sub_args.empty?
      odebug "Opening the tap homepage"
      Hbc::CLI::Home.open_url(BREW_TM_HOME)
    else
      odebug "Calling brew cask to open the project homepage"
      Hbc::CLI.run(sub_command, *sub_args)
    end
  end

  def search!
    if sub_args.reject { |arg| arg.start_with?("-") }.empty?
      odebug "Using brew cask to search for all TextMate bundles"
      Hbc::CLI.run(sub_command, ["/^tm-/"].concat(sub_args))
    else
      odebug "Using brew cask to search for a token"
      Hbc::CLI.run(sub_command, *sub_args)
    end
  end

  def default!
    if sub_args.empty?
      odebug "Showing help due to missing arguments"
      exec help_command
    else
      odebug "Handing over to brew cask"
      Hbc::CLI.run(sub_command, *sub_args)
    end
  end

  def help_command
    "brew help tm"
  end

  def sub_command
    @sub_command = ARGV.first
  end

  def sub_args
    @sub_args ||= begin
      mapped_args = ARGV[1..-1].map do |arg, index|
        next arg if arg.start_with?("-")
        next arg if arg.start_with?("tm-")
        "tm-#{arg}"
      end
      mapped_args.compact
    end
  end

  run!

  odebug "`brew tm` command completed"
end
