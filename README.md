# Puppet module for os customization

Change those famous "message of the day" in a nice way.

## Description

Currently only change [motd][1]. Uses nice [ASCII art font][2] "slant". Of course you can use your own fonts/labels/arts.

## Usage

You should have file motd.tail at your main module under files/motd.tail

```ruby
class {"os":
  message_source => "puppet:///modules/your-module/motd.tail"
}
```

## Example of ASCII art
    __  __                                  __  __            __              __  __
    \ \/ /___  __  __   ____ _________     / /_/ /_  ___     / /_  ___  _____/ /_/ /
     \  / __ \/ / / /  / __ `/ ___/ _ \   / __/ __ \/ _ \   / __ \/ _ \/ ___/ __/ /
     / / /_/ / /_/ /  / /_/ / /  /  __/  / /_/ / / /  __/  / /_/ /  __(__  ) /_/_/
    /_/\____/\__,_/   \__,_/_/   \___/   \__/_/ /_/\___/  /_.___/\___/____/\__(_)

## GOODTODO

* Make less specicific -- currently I know, that it works on Debian family, and not sure if it will work on another families.


  [1]: http://en.wikipedia.org/wiki/Motd_(Unix)
  [2]: http://www.network-science.de/ascii/