# What is this?

This repository is an [external command](https://github.com/Homebrew/brew/blob/master/docs/External-Commands.md) for [Homebrew](https://brew.sh). It helps you **manage bundles** for the popular [TextMate](https://github.com/textmate/textmate) editor, like Homebrew does for apps.

Or, in other words: it’s a Homebrew [tap](https://github.com/Homebrew/brew/blob/master/docs/brew-tap.md) that allows you to **use the command line to search, install, and uninstall TextMate bundles.**


# Three important warnings

## This tap is experimental

**Consider this tap untested.** Do not use it unless you have backed up your important data.

Issues and pull requests are welcome.


## This tap adds an external command to Homebrew

**This tap is different to most other taps because it contains executable code.**

Even if you are very familiar with Homebrew taps, and even if you use them regularly without problems, you may want to be careful with the external command introduced by this tap.


## This tap adds and removes TextMate bundles to/from your Library

**Be warned that this tap installs and deletes things willy-nilly** inside your `~/Library/Application Support/TextMate/Pristine Copy/Bundles` folder; you may want to take extra care to back up this particular folder before you even tap this repo.


# Features

This tap provides a `brew tm` command, which has the following features, all via the command line:

- Install one or more TextMate bundles

- Uninstall TextMate bundles, or reinstall them

- Search for TextMate bundles inside the repository

- Shorthand for opening a TextMate bundle’s homepage

- Support for editing and auditing package files (Casks) for TextMate bundles


# Installation

1. Make sure you have [Homebrew](https://brew.sh) installed.

2. Update TextMate to the latest version. You can do this either manually or via `brew cask reinstall textmate`.

3. Run `brew tap claui/textmate` to tap into this repository.


# Usage

Run `brew tm` for information on how to use this tap.


# Example

Search for TextMate bundles that support 6502 assembly:

    $ brew tm search 6502
    ==> Partial Match
    tm-6502-assembler


Install the `tm-6502-assembler` bundle directly into TextMate:

    $ brew tm install 6502-assembler


# Troubleshooting

If you experience any issue using `brew tm`, **do not submit** an issue to the Homebrew project.

Instead, try the following steps in any order:

- Run `brew update-reset && brew update` to make sure your Homebrew installation is up to date. (Note that this will reset any changes you have made to taps.)

- Run `brew untap claui/textmate` and see if the problem goes away. Re-tap by running `brew tap claui/textmate`.

- Run `brew tm` to list all bundles you have installed, then `brew tm uninstall --force` one bundle at a time.

- Go to `/usr/local/Caskroom` and delete all the directories that start with `tm-`.

- Search the `homebrew-textmate` repo on GitHub for the same or similar issues.

- Follow Homebrew’s [troubleshooting steps](https://github.com/Homebrew/brew/blob/master/docs/Troubleshooting.md).

- **If none of these steps help**, file a new issue **with the `homebrew-textmate` project**. **Do not submit** an issue to the Homebrew project if the issue seems to be related to TextMate bundles, or to the `brew tm` command.


# Contributing

Feel free to fork, and contribute to, this repository in any way you like, for example in one or more of the following ways:

- create new Casks for (official or unofficial) TextMate bundles,

- submit pull requests to have your work merged with this repo,

- report issues, or

- contribute features or bug fixes.

Contributing Casks for TextMate bundles is easy. They are largely compatible with the [Cask Language Reference](https://github.com/caskroom/homebrew-cask/tree/master/doc); the only actual technical difference is that it introduces a new `tmbundle` stanza.


## Creating a new Cask for TextMate bundles

An easy method to create a new Cask for TextMate bundles would be to look at the [examples](https://github.com/claui/homebrew-textmate/blob/master/Casks) and learn/copy/paste from them.

You can also find [excellent documentation](https://github.com/caskroom/homebrew-cask/tree/master/doc) for the Cask Language if that’s more your thing.

The Caskroom repo also has a detailed [tutorial on creating new Casks](https://github.com/caskroom/homebrew-cask/blob/master/doc/development/adding_a_cask.md).

The main difference between regular Casks and `brew tm`-style Casks is that the latter introduces a new `tmbundle` stanza. The `tmbundle` stanza is needed to install TextMate bundles to the appropriate directory. The stanza can be used like [any other artifact stanza](https://github.com/caskroom/homebrew-cask/blob/master/doc/cask_language_reference/all_stanzas.md#at-least-one-artifact-stanza-is-also-required) in the Cask definition language.

When following the [Caskroom’s instructions](https://github.com/caskroom/homebrew-cask/blob/master/doc/development/adding_a_cask.md), be sure to apply the following modifications:

- When you choose or generate a token for your Cask, always prepend it with the `tm-` prefix when it’s a TextMate bundle.

- To edit a Cask for a TextMate bundle, use `brew tm audit` instead of `brew cask audit`.

- To test a Cask for a TextMate bundle, use `brew tm install` instead of `brew cask install`.

- To audit a Cask for a TextMate bundle prior to submitting a PR, use `brew tm audit` instead of `brew cask audit`.

- Use the `claui/homebrew-textmate` repository instead of `caskroom/homebrew-cask`.

- For your personal fork, use `<your-github-username>/homebrew-textmate` instead of …`-cask`.

- When writing a Cask for a Textmate bundle, use the `tmbundle` stanza instead of `app`.

- The section [Finding a Home For Your Cask](https://github.com/caskroom/homebrew-cask/blob/master/doc/development/adding_a_cask.md#finding-a-home-for-your-cask) does not apply for TextMate bundles. You can safely ignore it.

- When you’re ready to submit your pull request, the base fork should be `claui/homebrew-textmate @ master`, and the head fork should be `my-github-username/homebrew-textmate @ my-new-cask`.


# FAQ

## Why would I need this?

The command line is good for automating things, for example for unattended mass deployment. Also, some people just generally prefer command-line workflows over a GUI.

Chances are you don’t; in that case, the `brew tm` command and the `homebrew-textmate` repository are probably not for you.

## Is this an official extension to TextMate?

No.

## Is this an official extension to Homebrew?

No.

## Is this an official Homebrew tap?

No.

## What’s wrong with the TextMate » Preferences » Bundles list built into TextMate?

Nothing wrong in the least; TextMate’s list of built-in bundles is perfectly fine.

The `brew tm` command and this repo simply want to be an alternative method, designed for people who prefer a CLI workflow, or need to automate installing/uninstalling TextMate bundles for one reason or the other.

While the `brew tm` command does not support the Preferences » Bundles list built into TextMate today, it may do so in the future. In the meantime, you can freely use one or the other interchangeably, or both at the same time. They should play well with each other.

## Does this thing affect TextMate’s own bundle list under TextMate » Preferences » Bundles?

No. Managed bundles should work alongside the `brew tm` command without any issues. You can use one or the other, or both.

## Do I need to be familiar with Homebrew to use this?

No.

The `brew tm` command should be pretty self-explanatory; being familiar with Homebrew won’t hurt though.

## Do I need to be familiar with brew cask to use this?

No.

You don’t need to be familiar with the `brew cask` command, although it will not hurt. In essence, the `brew tm` command is not much more than a façade to `brew cask` but with a focus on TextMate bundles.

## Why yet another subcommand for brew?

In Homebrew, you can add custom features only if you bring along your own unofficial subcommand.

## Why not just fork Homebrew, then add support for TextMate bundles as a core feature?

I don’t believe the Homebrew project will ever be an appropriate home for TextMate bundles. Homebrew has a strong focus on features which are useful for _many_ users (and rightly so).

In my personal opinion and judgement, the TextMate ecosystem is not notable enough.

The good thing is that Homebrew allows – and, in fact, encourages – users to extend Homebrew by tapping into repos to their hearts’ content.

## How was this implemented?

Homebrew offers a `brew cask` command which allows you to manage packages related to GUI apps on macOS.

Homebrew also offers external commands to extend the features of Homebrew.

This tap takes the `brew cask` feature and applies it to TextMate bundles.

For installing and removing TextMate bundles, `brew tm` uses a few (unsupported) implementation details of TextMate.

## Why doesn’t TextMate show a confirmation dialog during installation?

It is part of a shared philosophy of many package managers that installing software should be free from needless user interactions.

The `brew tm` command uses an implementation detail of TextMate to circumvent the confirmation dialog while installing a TextMate bundle.

## Will this interfere with Homebrew proper?

Probably not, but minor cosmetic issues are possible.

There are a few possible points of contact where the `brew tm` command will cause Homebrew itself to produce errors.

One of them is that Homebrew keeps a bit of metadata inside the `/usr/local/Caskroom/` hierarchy. This metadata will include instances of the `tmbundle` artifact stanza, which is proprietary for TextMate-related Casks.

The `tmbundle` stanza is unknown both to Homebrew and to the `brew cask` command. Homebrew does not expect metadata to contain `tmbundle` entries, which possibly leads to warnings or error messages. If you experience issues, refer to the Troubleshooting section.

## Will this break TextMate or my bundles in any way?

I’m not aware of any major issues. However, `brew tm` relies heavily on implementation details in TextMate. Such details can change at any moment on TextMate’s end without notice. This can break `brew tm`, and it won’t be TextMate’s responsibility. (Any project is free to change its private implementation details at its own discretion.)

I strongly recommend that you prepare for this by making frequent backups. At the very least, those backups should include your `~/Library/Application Support/TextMate` folder and all of its subfolders.

## Can I still download and install .tmbundle files manually?

Yes.

`brew tm` will not be aware of files you have installed manually; it won’t assist you with uninstalling if you later choose so.

Apart from that, everything should be fine.

## Can I still uninstall bundles manually?

Yes.

If you’re referring to a bundle shown in _TextMate » Preferences » Bundles,_ you can uninstall it by removing the check mark in the list.

If you’re referring to a bundle you have installed manually, you will find it in the `~/Library/Application Support/TextMate/Pristine Copy/Bundles` directory. Simply delete that bundle to uninstall.

Note that either way, your manual modifications will be kept even after the bundle has been deleted. This is expected behavior.

## How do I configure a different location to keep my TextMate bundles?

The `brew tm` command does not support this feature yet.

It uses the `~/Library/Application Support/TextMate/Pristine Copy/Bundles` directory as its (hard-coded) default location for the time being.

## What happens with my manual changes I have made to bundles?

Making manual changes to bundles is unrelated to `brew tm`, and should continue to work as expected.

TextMate goes to extra lengths to preserve each and every manual change you have made, no matter which method you have used to install or uninstall the bundle. Your choice of installation method does not affect the way TextMate preserves your manual changes.

## How do I undo my manual changes to bundles?

The `brew tm` command cannot help you with that yet. A future release might offer a feature to allow you to undo your custom modifications.

## How do I uninstall the tap altogether?

Run `brew untap claui/textmate`.

## Can I remove the entire tap but still keep the brew tm command around?

Not yet. This would involve splitting the repository in two or more taps. I don’t think this would be worth the additional effort on the user’s side, at least for now.


# Legal notice

This tap, including the `brew tm` command and all Cask definitions for TextMate bundles, is in no way affiliated with, nor is it endorsed by, the TextMate project nor any of the people who maintain that project, nor MacroMates Ltd., nor the Homebrew project nor any of its maintainers, nor the Caskroom organization.


# License

Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.


# Acknowledgements

The idea for this repo comes from a [discussion thread started by じょいすじょん](http://lists.macromates.com/textmate/2017-July/040365.html) on the [TextMate mailing list](http://lists.macromates.com/listinfo/textmate).
