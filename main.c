#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

char 	*ft_bzero(void *s, size_t n);
char 	*ft_strcat(char *s1, char *s2);
int 	ft_isalpha(int c);
int 	ft_isdigit(int c);
int 	ft_isalnum(int c);
int 	ft_isascii(int c);
int 	ft_isprint(int c);
int 	ft_toupper(int c);
int 	ft_tolower(int c);
int 	ft_puts(char *str);
int 	ft_strlen(char *str);
void	*ft_memset(void *b, int c, size_t len);
void	*ft_memcpy(void *dst, const void *src, size_t n);
char 	*ft_strdup(const char *s1);
int 	ft_cat(int fd);
int 	ft_islower(int c);
int 	ft_isupper(int c);
int 	ft_putchar(int c);
int 	ft_putstr(char *str);
int 	ft_putchar_fd(int c, int fd);
int 	ft_putstr_fd(char *str, int fd);

int main(void)
{
	char *s1 = malloc(10);
	char *s2 = malloc(10);
	char *s3 = malloc(10);
	char *s4 = malloc(10);
	char *s5 = malloc(10);
	int fd_char;
	int fd_str;

	s2[0] = 'h';
	s2[1] = 'e';
	s2[2] = 'l';
	s2[3] = 'l';
	s2[4] = 'o';
	s1[5] = 0;
	s1[0] = 'w';
	s1[1] = 'h';
	s1[2] = 'a';
	s1[3] = 't';
	s1[4] = 0;
	s3[0] = 'b';
	s3[1] = 'e';
	s3[2] = 0;
	s3[3] = 0;
	s3[4] = 0;
	s4[0] = 'a';
	s4[1] = 'u';
	s4[2] = 0;
	s5[0] = 'y';
	s5[1] = 'o';
	s5[2] = 'l';
	s5[3] = 'o';
	s5[4] = 0;

	printf("ft_isascii(128): %i\n", ft_isascii(128));
 	printf("ft_isascii(0): %i\n", ft_isascii(0));
 	printf("ft_isascii(127): %i\n", ft_isascii(127));
	printf("ft_isascii(-1): %i\n\n", ft_isascii(-1)); 
	printf("ft_isdigit('0'): %i\n", ft_isdigit('0'));
	printf("ft_isdigit('9'): %i\n", ft_isdigit('9'));
	printf("ft_isdigit(47): %i\n", ft_isdigit(47));
	printf("ft_isdigit(58): %i\n\n", ft_isdigit(58));
	printf("ft_isalpha('a'): %i\n", ft_isalpha('a'));
	printf("ft_isalpha('z'): %i\n", ft_isalpha('z'));
	printf("ft_isalpha('@'): %i\n", ft_isalpha('@'));
	printf("ft_isalpha('['): %i\n", ft_isalpha('['));
	printf("ft_isalpha('`'): %i\n", ft_isalpha('`'));
	printf("ft_isalpha('{'): %i\n", ft_isalpha('{'));
	printf("ft_isalpha('A'): %i\n", ft_isalpha('A'));
	printf("ft_isalpha('Z'): %i\n\n", ft_isalpha('Z'));
	printf("ft_isalnum('a'): %i\n", ft_isalnum('9'));
	printf("ft_isalnum('z'): %i\n", ft_isalnum('a'));
	printf("ft_isalnum('0'): %i\n", ft_isalnum('0'));
	printf("ft_isalnum('9'): %i\n", ft_isalnum('9'));
	printf("ft_isalnum('/'): %i\n", ft_isalnum('/'));
	printf("ft_isalnum(':'): %i\n", ft_isalnum(':'));
	printf("ft_isalnum('@'): %i\n", ft_isalnum('@'));
	printf("ft_isalnum('['): %i\n", ft_isalnum('['));
	printf("ft_isalnum('['): %i\n", ft_isalnum('['));
	printf("ft_isalnum('`'): %i\n", ft_isalnum('`'));
	printf("ft_isalnum('{'): %i\n", ft_isalnum('{'));
	printf("ft_isalnum('A'): %i\n", ft_isalnum('A'));
	printf("ft_isalnum('Z'): %i\n\n", ft_isalnum('Z'));
	printf("ft_isprint('!'): %i\n", ft_isprint('!'));
	printf("ft_isprint('~'): %i\n", ft_isprint('~'));
	printf("ft_isprint('['): %i\n", ft_isprint('['));
	printf("ft_isprint(' '): %i\n", ft_isprint(' '));
	printf("ft_isprint(del): %i\n\n", ft_isprint(127));
	printf("ft_toupper('a'): %c\n", ft_toupper('a'));
	printf("ft_toupper('z'): %c\n", ft_toupper('z'));
	printf("ft_toupper('`'): %c\n", ft_toupper('`'));
	printf("ft_toupper('{'): %c\n\n", ft_toupper('{'));
	printf("ft_tolower('A'): %c\n", ft_tolower('A'));
	printf("ft_tolower('Z'): %c\n", ft_tolower('Z'));
	printf("ft_tolower('@'): %c\n", ft_tolower('@'));
	printf("ft_tolower('['): %c\n\n", ft_tolower('[')); 
	printf("ft_strcat(\"be\", \"au\")): %s\n", ft_strcat(s3, s4));
	printf("\nft_putstr(\"yolo\"): %i\n", ft_putstr("yolo"));
	printf("\nft_putchar('c'): %i\n", ft_putchar('c'));
	printf("ft_puts(\"yolo\"): %i\n",	ft_puts("yolo"));
	printf("ft_strlen(\"yolo\"): %i\n", ft_strlen("yolo"));
	printf("ft_memset(\"hello\", 'a', 4): %s\n", ft_memset(s2, 'a', 4));
	ft_puts(NULL);
	printf("ft_puts(NULL): ");
	printf("\nft_memcpy(\"aaaao\", \"what\", 2): %s\n", ft_memcpy(s2, s1, 2));
	printf("ft_strdup(\"yolo\"): %s\n", ft_strdup(s5));
	printf("ft_bzero(\"yolo\"): %s\n", ft_bzero(s2, sizeof(s2)));
	if (!(fd_char = open("test_putchar.c", O_RDWR | O_CREAT, 0666)))
		return (1);
	if (!(fd_str = open("test_str.c", O_RDWR | O_CREAT, 0666)))
		return (1);
	ft_putchar_fd('a', fd_char);
	ft_putstr_fd("42", fd_str);
	ft_cat(0);
	return (0);
}
