NAME		= libasm.a

CC			= nasm

CFLAGS		= -f macho64

SRCS_PATH	= ./srcs
SRCS_NAME	= ft_strcmp.s \
			  ft_strlen.s \
			  ft_strcpy.s \
			  ft_write.s \
			  ft_read.s \
			  ft_strdup.s
SRCS		= $(addprefix $(SRCS_PATH)/,$(SRCS_NAME))

OBJS_PATH	= ./.objs
OBJS_NAME	= $(SRCS_NAME:.s=.o)
OBJS		= $(addprefix $(OBJS_PATH)/,$(OBJS_NAME))

all : $(NAME)

$(NAME) : $(OBJS)
	@ar rcs $(NAME) $(OBJS)

$(OBJS_PATH)/%.o : $(SRCS_PATH)/%.s
	@mkdir -p $(OBJS_PATH)
	@$(CC) $(CFLAGS) -o $@ -s $<
	@printf "\e[1;30m$(CC): \e[1;37m./%-51s\e[1;0m" "$<"
	@printf "\e[32mcheck\e[1;0m\n"

clean :
	@rm -rf $(OBJS_PATH)

fclean : clean
	@rm -rf $(NAME)

re : fclean all
