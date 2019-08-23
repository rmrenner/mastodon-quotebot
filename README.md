# Mastodon-quotebot

Mastodon-quotebot is a simple mastodon bot written in common lisp that posts randomly-selected lines from a text file.

### Requirements

Mastodon-quotebot depends on the [alexandria](https://common-lisp.net/project/alexandria/), [tooter](https://shinmera.github.io/tooter/), and [cl-json](https://common-lisp.net/project/cl-json/cl-json.html) libraries.

While it can be run from a Common Lisp REPL, a roswell script is provided to build a standalone executable and an example .service config file is included for operating systems that use systemd.

### Building the Executable

Install [roswell](https://github.com/roswell/roswell/wiki/Installation).

In the project directory, run `ros build quotebot.ros`.

### Getting an access token for your bot's account

On your mastodon account's settings page, go to the Development section and click "New Application."

From there, you can give your bot a name and decide what permissions to grant it. The defaults work as-is, but you may wish to disable all permissions except for `write:statuses`, since that's the only thing the bot will do.

Hit submit to go back to the "Your applications page" and click on the name of your new app.

From there, you can copy the client key, client secret, and access token into your bot's `settings.json` file.

### Configuring the bot

The sample settings.json file contains the following fields:

Field Name | Function
-----------|---------
instance-url | the URL of the mastodon instance hosting the bot
bot-name | this text will appear as the name of the client app that posted the status
client-key | find this on your mastodon account's settings
client-secret | find this on your mastodon account's settings
access-token | find this on your mastodon account's settings
corpus-file | a plain text file with newline-delimited things to toot
interval | the number of seconds between toots. The default is 21,600 (6hrs)
