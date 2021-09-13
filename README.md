# Raclette (moulinette)

A script that runs Norminette and compiles your code and runs some Moulinette checks automatically with the correct flags. Great for peer reviews and checking your own work.

A Swiss adaptation of theThe community's best attempt to recreate Moulinette (https://github.com/kristofk/MockMoulinette).

It isn't 100% accourate. So if it says everything is good, it might still be wrong. Also, it might have some false-positive errors. But again, this is the best we got.

If you notice an error please open an [issue](https://github.com/kristofk/MockMoulinette/issues) about it here in the repo.

The Moulinette checks are based on [42us-stupidity](https://github.com/mirror12k/42us-stupidity).

## Prerequisits

You have to run this on a computer provided by School42. There are 2 reasons for this:

 - Only those machines have the necessery kerberos tickets and access rights
 - Only those machines have the command necessary for this project: `norminette`

## Usage 

1. Clone this repo `git clone git@github.com:Kaherdin/raclette.git raclette`
2. Go into the clone folder and run:

> `sh raclette <git_repo_to_evaluate> <c_number>` 

(e.g. `sh raclette git@vogsphere.42lausanne.ch:vogsphere/intra-uuid-b4e5dcb1-6e64-48f3-96d6-fb71cf847541-3766933 06`)

Now you should have the results in RESULT_CXX.txt file and this file should be open infront of you.


## Common errors and mistakes

**Error: No such file or directory**
 - Solution #1: Check the extension, some browsers put some extension to the file
 - Solution #2: Check that you are in the right folder: the one that contains the script
 
 **Other errors**
  - Solution #1: Make sure that the arguments are correct in the script call (`sh mockmoulinette <repo_link> <day_number>`)
  - Solution #2: Open an [issue](https://github.com/kristofk/MockMoulinette/issues)

## Contributing

If you notice a bug or an error or have a question then open an [issue](https://github.com/kristofk/MockMoulinette/issues) regarding it.

If you want to help but don't know how then check the [issues](https://github.com/kristofk/MockMoulinette/issues).

When you have changes ready, you can create pull requests.

I will respond to everyone asap.

## Example outputs

Example of a perfect output:
```
+-+-+-+-+-+-+-+-+-+-+
|N|o|r|m|i|n|e|t|t|e|
+-+-+-+-+-+-+-+-+-+-+

Norme: ./work/ex00/ft_ft.c
Norme: ./work/ex01/ft_ultimate_ft.c
Norme: ./work/ex02/ft_swap.c
Norme: ./work/ex03/ft_div_mod.c
Norme: ./work/ex04/ft_ultimate_div_mod.c
Norme: ./work/ex05/ft_putstr.c
Norme: ./work/ex06/ft_strlen.c
Norme: ./work/ex07/ft_strrev.c
Norme: ./work/ex08/ft_atoi.c
Norme: ./work/ex09/ft_sort_integer_table.c

+-+-+-+-+-+-+-+-+-+-+
|M|o|u|l|i|n|e|t|t|e|
+-+-+-+-+-+-+-+-+-+-+

work/ex00/main good!
work/ex01/main good!
work/ex02/main good!
work/ex03/main good!
work/ex04/main good!
work/ex05/main_basic good!
work/ex05/main_multiple good!
work/ex05/main_empty good!
work/ex06/main_basic good!
work/ex06/main_empty good!
work/ex07/main_basic good!
work/ex07/main_empty good!
work/ex08/main_basic good!
work/ex08/main_big good!
work/ex09/main_basic good!
```
