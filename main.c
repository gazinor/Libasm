#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>

int	ft_write(int fd, char *str, int nbr);
int	ft_read(int fd, char *str, int nbr);
int	ft_strlen(char *str);
char	*ft_strcpy(char *dest, char *src);

int main()
{
	char	src[5] = "salut";
	char	*dest;
	int		fd;

	dest = NULL;
	printf("%s\n", src);
	printf("%s\n", dest);
//	fd = open("ft_write.s", O_RDONLY);
	printf("%s\n", strcpy(dest, src));
//	printf("%d\n", ft_strlen(-1));
	printf("%s\n", dest);
	return (0);
}
