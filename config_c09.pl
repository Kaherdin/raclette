
ex01 -N -f=Makefile -F=*.[ch]
eval_expr
check -m=eval_expr -t ====
%tests = (
	"$program" => '',
	"$program '5 + 5'" => "10\n",
	"$program '8 - 5'" => "3\n",
	"$program '5 - 20 - 15'" => "-30\n",
	"$program '5 * 5'" => "25\n",

	"$program '25 / 6'" => "4\n",
	"$program '25 % 6'" => "1\n",
	"$program '24 % 6'" => "0\n",
	"$program '27 % 6'" => "3\n",

	"$program '5 + 4 + 3'" => "12\n",
	"$program '5 + 4 * 3'" => "17\n",
	"$program '5 * 4 * 3'" => "60\n",
	"$program '5 * 4 + 3'" => "23\n",

	"$program '5 / 4 * 4'" => "4\n",
	"$program '5 * 4 / 4'" => "5\n",
	"$program '5 % 4 * 4'" => "4\n",
	"$program '5 * 4 % 3'" => "2\n",
	"$program '5 % 4 % 3'" => "1\n",

	"$program '(5 + 4)'" => "9\n",
	"$program '(5 - 4)'" => "1\n",
	"$program '(5 * 4)'" => "20\n",
	"$program '(10 / 4)'" => "2\n",
	"$program '(5 % 4)'" => "1\n",

	"$program '5 + (5 + 4)'" => "14\n",
	"$program '5 - (5 - 4)'" => "4\n",
	"$program '5 * (5 * 4)'" => "100\n",
	"$program '5 / (10 / 4)'" => "2\n",
	"$program '5 % (5 % 4)'" => "0\n",

	"$program '5 + (3 + 5) * 2'" => "21\n",
	"$program '5 - (10 - 4) / 3'" => "3\n",
	"$program '5 * (5 + 3) - 4'" => "36\n",
	"$program '10 / (10 / 4) / 4'" => "1\n",
	"$program '5 % (5 % 3) % 5'" => "1\n",

	"$program '(((5 * 7)))'" => "35\n",
	"$program '(5 + ((3 * 4) - 2))'" => "15\n",
);
====

ex02
char** ft_split(char *str, char *charset)
main_basic -m ====
char** res;
for (res = ft_split("asdf qwerty zxcv", " "); *res != 0; res++)
	printf("'%s',", *res);
printf("\n");
for (res = ft_split("s1_s2___++++___s3", "_+"); *res != 0; res++)
	printf("'%s',", *res);
printf("\n");
==== check_basic -e ====
$expected = "'asdf','qwerty','zxcv',
's1','s2','s3',
";
==== main_junk -m ====
char** res;
for (res = ft_split("++++lol_+_+hi____++++___", "_+"); *res != 0; res++)
	printf("'%s',", *res);
==== check_junk -e ====
$expected = "'lol','hi',";
==== main_less -m ====
char** res;
for (res = ft_split("NOPENOPENOPE", "NOPE"); *res != 0; res++)
	printf("'%s',", *res);
printf("\n");
for (res = ft_split("", "NOPE"); *res != 0; res++)
	printf("'%s',", *res);
printf("\n");
==== check_less -e ====
$expected = "\n\n";
====
