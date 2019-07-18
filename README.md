# MockMoulinette

The community's best attempt to recreate Moulinette.

It isn't 100% accourate. So if it says everything is good, it might still be wrong. Also, it might have some false-positive errors. But again, this is the best we got.

If you notice an error please open an issue about it here in the repo.

## Prerequisits

You have to run this on a computer provided by School42. There are 2 reasons for this:

 - Only those machines have the necessery kerberos tickets and access rights
 - Only those machines have the command necessary for this project: `norminette`

## Usage

1. Go to [releases](https://github.com/kristofk/MockMoulinette/releases)
2. From the latest release download `mockmoulinette`
3. Go into the download folder and run:

> `sh mockmoulinette <git_repo_to_evaluate> <day_number>` 

(e.g. `sh mockmoulinette vogsphere@vgs.42.us.org:intra/2019/activities/piscine_c_day_06/uuser 06`)

Now you should have the results on the Desktop in RESULT.txt file and this file should be open infront of you.

## Common errors and mistakes

**Error: No such file or directory**
 - Solution #1: Check the extension, some browsers put some extension to the file
 - Solution #2: Check that you are in the right folder: the one that contains the script
 
 **Other errors**
  - Solution #1: Make sure that the arguments are correct in the script call (`sh mockmoulinette <repo_link> <day_number>`)
  - Solution #2: Open an issue

## Contributing

If you notice a bug or an error or have a question then open an Issue regarding it.

If you want to help but don't know how then check the Issues.

When you have changes ready, you can create pull requests.

I will respond to everyone asap.
