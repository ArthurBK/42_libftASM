NAME = libfts.a
NASM = nasm
NFLAGS = -f macho64 
SRCS 	=	ft_islower.s\
			ft_isupper.s\
			ft_isascii.s\
			ft_isalpha.s\
			ft_isalnum.s\
			ft_isprint.s\
			ft_toupper.s\
			ft_tolower.s\
			ft_strcat.s\
			ft_putchar.s\
			ft_putstr.s\
			ft_puts.s\
			ft_strlen.s\
			ft_memset.s\
			ft_memcpy.s\
			ft_strdup.s\
			ft_cat.s\
			ft_bzero.s\
			ft_isdigit.s\
			ft_putchar_fd.s\
			ft_putstr_fd.s

OBJ		=	$(SRCS:.s=.o)
SDIR	=	$(addprefix srcs/, $(SRCS))
ODIR	=	$(addprefix objs/, $(OBJ))
RED = \033[31;1m
GRN = \033[32;1m
YEL = \033[33;1m
EOC = \033[0m
BEER = \xF0\x9F\x8D\xBA

all: $(NAME)

$(NAME): $(ODIR)
	@ar rc $(NAME) $(ODIR)
	@ranlib $(NAME)
	@echo "$(GRN)$(BEER)  $(NAME) created successfully!$(EOC)"

objs/%.o: srcs/%.s
	@mkdir -p objs
	@$(NASM) $(NFLAGS) $< -o $@
	@echo "$(GRN)$< =>$(EOC) $(YEL)$@$(EOC) $(GRN)✓$(EOC)"

clean:
	@/bin/rm -rf objs

fclean: clean
	@/bin/rm -f $(NAME)
	@echo "$(RED)$(NAME) removed!$(EOC)"

re: fclean all

asan: all

.PHONY: re all clean fclean
