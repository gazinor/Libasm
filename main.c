#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>

int	ft_write(int fd, char *str, int nbr);
int	ft_read(int fd, char *str, int nbr);
int	ft_strlen(char *str);
int ft_strcmp(char *s1, char *s2);
char	*ft_strdup(char *str);
char	*ft_strcpy(char *dest, char *src);

int main()
{
	char	src[6] = "salua";
	char	dest[6] = "salux";
	char	*copy = malloc(6);
	char	buf[4097];
	int		ret;
	int		fd;

	printf("%d\n", strlen(dest));
	printf("%d\n", ft_strlen(dest));
	printf("%d\n", strcmp(dest, src));
	printf("%d\n", ft_strcmp(dest, src));
	printf("%s\n", strdup("va bioen niquer ta grande race"));
	printf("%s\n", ft_strdup("va bioen niquer ta grande race"));
	printf("%s\n", strcpy(copy, dest));
	printf("%s\n", ft_strcpy(copy, dest));
	fd = open("srcs/ft_write.s", O_RDONLY);
	while ((ret = ft_read(fd, buf, 4096)) > 0)
	{
		buf[ret] = '\0';
		printf("%d\n", ft_write(1, buf, ret));
	}
	close(fd);
	fd = open("srcs/ft_write.s", O_RDONLY);
	while ((ret = read(fd, buf, 4096)) > 0)
	{
		buf[ret] = '\0';
		printf("%zd\n", write(1, buf, ret));
	}
	close(fd);
	return (0);
}
