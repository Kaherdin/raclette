ex00
int ft_strlen(char *str)
main_basic ====
int main()
{
	printf("%d,%d,%d", ft_strlen("asdf"), ft_strlen("qwerty"), ft_strlen("zxc0zxc"));
	return 0;
}
====
check_basic -e ====
$expected = '4,6,7';
====
main_empty ====
int main()
{
	printf("%d", ft_strlen(""));
	return 0;
}
====
check_empty -e ====
$expected = '0';
====

ex01
ft_putstr(char *str)
main_basic ====
int main()
{
	ft_putstr("hello world!");
	return 0;
}
====
check_basic -e ====
$expected = 'hello world!';
====
main_multiple ====
int main()
{
	ft_putstr("test1\n");
	ft_putstr("test2\n");
	ft_putstr("test3\n");
	return 0;
}
====
check_multiple -e ====
$expected = "test1\ntest2\ntest3\n";
====
main_empty ====
int main ()
{
	ft_putstr("");
	ft_putstr("");
	ft_putstr("");
	return 0;
}
====
check_empty -e ====
$expected = '';
====

ex02
ft_putnbr(int nb)
main_basic ====
int main ()
{
	ft_putnbr(15);
}
====
check_basic -e ====
$expected = '15';
====
main_negative ====
int main ()
{
	ft_putnbr(-25);
}
====
check_negative -e ====
$expected = '-25';
====
main_zero ====
int main ()
{
	ft_putnbr(0);
}
====
check_zero -e ====
$expected = '0';
====
main_intmax ====
int main ()
{
	ft_putnbr(2147483647);
}
====
check_intmax -e ====
$expected = '2147483647';
====
main_nintmax ====
int main ()
{
	ft_putnbr(-2147483648);
}
====
check_nintmax -e ====
$expected = -2147483648;
====

ex03
int ft_atoi(char *str)
main_basic ====
int main()
{
	printf("%d,%d,%d", ft_atoi("15"), ft_atoi("0"), ft_atoi("-25"));
	return 0;
}
====
check_basic -e ====
$expected = '15,0,-25';
====
main_big ====
int main()
{
	printf("%d,%d", ft_atoi("2147483647"), ft_atoi("-2147483648"));
}
====
check_big -e ====
$expected = '2147483647,-2147483648';
====
main_special ====
int main()
{
	printf("%d", ft_atoi(" ---+--+1234ab567"));
}
====
check_special -e ====
$expected = '-1234';
====

ex04
ft_putnbr_base(int nbr, char* base)
main_basic -m ====
ft_putnbr_base(40, "0123456789abcdef");
==== check_basic -e ====
$expected = "28";
==== main_basic2 -m ====
ft_putnbr_base(31, "0123456789abcdef");
==== check_basic2 -e ====
$expected = "1f";
==== main_binary -m ====
ft_putnbr_base(15, "01");
==== check_binary -e ====
$expected = '1111';
==== main_negative -m ====
ft_putnbr_base(-15, "0123456789");
ft_putnbr_base(-16, "01");
==== check_negative -e ====
$expected = '-15-10000';
==== main_intmax -m ====
ft_putnbr_base(2147483647, "0123456789abcdef");
ft_putnbr_base(-2147483648, "0123456789abcdef");
==== check_intmax -e ====
$expected = '7fffffff-80000000';
====

ex05
int ft_atoi_base(char* str, char* base)
main -p -m ====
my %tests = (
	_15_0123456789 => 15,
	_3f_0123456789abcdef => 63,
	_a_0a => 1,
	'_-15_0123456789' => -15,
	'_-111_01' => -7,

	_a_0 => 0,
	_1_012341234 => 0,
	'_1_01234+' => 0,
	_5_01234 => 0,
	__01234 => 0,
);
foreach (sort keys %tests) {
	my (undef, $str, $base) = split '_';
	$code .= "TEST(ft_atoi_base(\"$str\", \"$base\"), $tests{$_});\n";
}
==== check -l=10 ====
====