ex00
int ft_strcmp(char* s1, char* s2)
main -p -m ====
my %tests = (
	asdf_asdf => 0,
	asde_asdf => -1,
	asdg_asdf => 1,
	_ => 0,
	A_ => 0x41,
	_A => -0x41,
);

$code = 'int exp, res;';
foreach (sort keys %tests) {
	my ($left, $right) = split '_', $_;
	$code .= "res = ft_strcmp(\"$left\", \"$right\"), exp = $tests{$_};\n";
	$code .= "printf(\"ft_strcmp('$left', '$right') (%d vs %d) -> %d\\n\", exp, res, res == exp);\n";
}
==== check -l=6 ====
====

ex01
int ft_strncmp(char* s1, char* s2, unsigned int n)
main -p -m ====
my %tests = (
	asdf_asdf_4 => 0,
	asde_asdf_4 => -1,
	asdg_asdf_4 => 1,
	asdf_asdf_3 => 0,
	asde_asdf_3 => 0,
	__0 => 0,
);
$code = 'int res, exp;';
foreach (sort keys %tests) {
	my ($left, $right, $len) = split _ => $_;
	$code .= "res = ft_strncmp(\"$left\", \"$right\", $len), exp = $tests{$_};\n";
	$code .= "printf(\"ft_strncmp('$left', '$right', $len) (%d vs %d) -> %d\\n\", exp, res, res == exp);\n";
}
==== check -l=6 ====
====

ex02
char* ft_strcat(char* dest, char* src)
main -m ====
char test[256] = "";
printf("%s\n", ft_strcat(test, "asdf"));
printf("%s\n", ft_strcat(test, ""));
printf("%s\n", ft_strcat(test, "zxcv"));
==== check -e ====
$expected = "asdf\nasdf\nasdfzxcv\n";
====

ex03
char* ft_strncat(char* dest, char* src, int nb)
main -m ====
char test[256] = "\0zxcvzxcvzxcvxzcvzxcvzxcv";
printf("%s\n", ft_strncat(test, "asdf", 16));
printf("%s\n", ft_strncat(test, "", 16));
printf("%s\n", ft_strncat(test, "qwerty", 0));
printf("%s\n", ft_strncat(test, "asdf", 3));
==== check -e ====
$expected = "asdf\nasdf\nasdf\nasdfasd\n";
====

ex04
char* ft_strstr(char* str, char* to_find)
main -m ====
printf("%s\n", ft_strstr("asdf qwerty", "wer"));
printf("%s\n", ft_strstr("asdf qwerty qwerty", "wer"));
printf("%s\n", ft_strstr("asdf qwerty", "qwerty1"));
printf("%s\n", ft_strstr("", "wer"));
printf("%s\n", ft_strstr("asdf qwerty", "zxcv"));
printf("%s\n", ft_strstr("asdf qwerty", ""));
==== check -e ====
$expected = "werty\nwerty qwerty\n(null)\n(null)\n(null)\nasdf qwerty\n";
====

ex05
unsigned int ft_strlcat(char* dest, char* src, unsigned int size)
main -m ====
char test[256] = "\0zxcvzxcvzxcvxzcvzxcv";
printf("%d-", ft_strlcat(test, "asdf", 16));
printf("%s\n", test);
printf("%d-", ft_strlcat(test, "asdf", 6));
printf("%s\n", test);
printf("%d-", ft_strlcat(test, "asdf", 4));
printf("%s\n", test);
printf("%d-", ft_strlcat(test, "", 16));
printf("%s\n", test);
printf("%d-", ft_strlcat(test, "asdf", 0));
printf("%s\n", test);
==== check -e ====
$expected = "4-asdf\n8-asdfa\n8-asdfa\n5-asdfa\n4-asdfa\n";
====