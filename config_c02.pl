ex00
char* ft_strcpy(char* dest, char* src)
main -m ====
char test1[256] = "asdf";
printf("%s", ft_strcpy(test1, "qwerty\n"));
printf("%s", ft_strcpy(test1, ""));
printf("%s", ft_strcpy(test1, "hell0\n"));
==== check -e ====
$expected = "qwerty\nhell0\n";
====


ex01
char* ft_strncpy(char* dest, unsigned int n)
main -m ====
char test1[256] = "asdf";
printf("%s\n", ft_strncpy(test1, "uiop", 5));
printf("%s\n", ft_strncpy(test1, "qwerty", 4));
printf("%s\n", ft_strncpy(test1, "z", 1));
==== check -e ====
$expected = "uiop\nqwer\nzwer\n";
====

ex02
int ft_str_is_alpha(char* str)
main -p -m ====
my %tests = (
	asdf => 1,
	QWERTY => 1,
	asdf1234 => 0,
	'999' => 0,
	'' => 1,
);
$code = join '', map "TEST(ft_str_is_alpha(\"$_\"), $tests{$_});\n", sort keys %tests;
==== check -l=5 ====
====


ex03
int ft_str_is_numeric(char* str)
main -p -m ====
my %tests = (
	123456 => 1,
	asdf1234 => 0,
	0 => 1,
	'' => 1,
	'12345asdf' => 0,
);
$code = join '', map "TEST(ft_str_is_numeric(\"$_\"), $tests{$_});\n", sort keys %tests;
==== check -l=5 ====
====


ex04
int ft_str_is_lowercase(char* str)
main -p -m ====
my %tests = (
	asdf => 1,
	asdF => 0,
	ASDF => 0,
	1234 => 0,
	'' => 1,
);
$code = join '', map "TEST(ft_str_is_lowercase(\"$_\"), $tests{$_});\n", sort keys %tests;
==== check -l=5 ====
====


ex05
int ft_str_is_uppercase(char* str)
main -p -m ====
my %tests = (
	ASDF => 1,
	ASDf => 0,
	asdf => 0,
	1234 => 0,
	'' => 1,
);
$code = join '', map "TEST(ft_str_is_uppercase(\"$_\"), $tests{$_});\n", sort keys %tests;
==== check -l=5 ====
====


ex06
int ft_str_is_printable(char* str)
main -p -m ====
my %tests = (
	asdf => 1,
	1234 => 1,
	ASDF => 1,
	'!@#$^&*()_+-=[]{}:;,./<>?' => 1,
	"\\xf0" => 0,
	"\\x7f" => 0,
	"\\n" => 0,
	'' => 1,
);
$code = join '', map "TEST(ft_str_is_printable(\"$_\"), $tests{$_});\n", sort keys %tests;
==== check -l=8 ====
====


ex07
char* ft_strupcase(char* str)
main -m ====
char str[] = "asdf qWeRtY ZXCV";
printf("%s", ft_strupcase(str));
==== check -e ====
$expected = 'ASDF QWERTY ZXCV';
====


ex08
char* ft_strlowcase(char* str)
main -m ====
char str[] = "asdf qWeRtY ZXCV";
printf("%s", ft_strlowcase(str));
==== check -e ====
$expected = 'asdf qwerty zxcv';
====

ex09
char* ft_strcapitalize(char* str)
main -m ====
char str[] = "asdf qWeRtY ZXCV 100TIS\n";
printf("%s", ft_strcapitalize(str));
char str2[] = "asdf-qWeRtY ZXCV 100TIS";
printf("%s", ft_strcapitalize(str2));
==== check -e ====
$expected = "Asdf Qwerty Zxcv 100tis\nAsdf-Qwerty Zxcv 100tis";
====

ex10
unsigned int ft_strlcpy(char* dest, char* src, unsigned int size)
main -m ====
char test[256] = "\0zxcvzxcvzxcvxzcvzxcv";
printf("%d-", ft_strlcpy(test, "asdf", 16));
printf("%s\n", test);
printf("%d-", ft_strlcpy(test, "uiop", 0));
printf("%s\n", test);
printf("%d-", ft_strlcpy(test, "qwerty", 4));
printf("%s\n", test);
printf("%d-", ft_strlcpy(test, "", 4));
printf("%s\n", test);

==== check -e ====
$expected = "4-asdf\n4-asdf\n6-qwe\n0-\n";
====

ex11
ft_putstr_non_printable(char* str)
main -m ====
ft_putstr_non_printable("asdf\x7f\x1fhi\x01\xfflol");
==== check -e ====
$expected = 'asdf\\7f\\1fhi\\01\\fflol';
====


ex12
void* ft_print_memory(void* addr, unsigned int size)
main -m ====
ft_print_memory("asdfasdfqwertytyzxcvzxcv\0\0\xff\x7f\x01", 29);
==== check -e ====
$expected = 
'00000000: 6173 6466 6173 6466 7177 6572 7479 7479 asdfasdfqwertyty
00000010: 7a78 6376 7a78 6376 0000 ff7f 01        zxcvzxcv.....
';
====





