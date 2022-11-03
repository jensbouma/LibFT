# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: jbouma <jbouma@student.codam.nl>             +#+                      #
#                                                    +#+                       #
#    Created: 2022/10/10 14:09:40 by jbouma        #+#    #+#                  #
#    Updated: 2022/10/21 22:54:50 by jbouma        ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

# Info:
# https://makefiletutorial.com/#make-clean

#	Output
NAME 		= 	libft.a

# Compiler Settings
CC 			= gcc
CPPFLAGS	=
CFLAGS 		= -Werror -Wall -Wextra -g3 -fsanitize=address

# Files to include
INC			=	./libft.h

OBJDIR		=	./obj/
SRC			=	ft_isalpha.c	\
				ft_isdigit.c	\
				ft_isalnum.c	\
				ft_isascii.c	\
				ft_isprint.c	\
				ft_strlen.c		\
				ft_memset.c		\
				ft_bzero.c		\
				ft_memcpy.c		\
				ft_memmove.c	\
				ft_strlcpy.c	\
				ft_strlcat.c	\
				ft_toupper.c	\
				ft_tolower.c	\
				ft_strchr.c		\
				ft_strrchr.c	\
				ft_strncmp.c	\
				ft_memchr.c		\
				ft_memcmp.c		\
				ft_strnstr.c	\
				ft_atoi.c		\
				ft_calloc.c		\
				ft_strdup.c		\
				ft_substr.c		\
				ft_strjoin.c	\
				ft_strtrim.c	\
				ft_split.c		\
				ft_itoa.c		\
				ft_strmapi.c	\
				ft_striteri.c	\
				ft_putchar_fd.c \
				ft_putstr_fd.c	\
				ft_putendl_fd.c	\
				ft_putnbr_fd.c	\

BONUSSRC	=	ft_lstnew.c			\
				ft_lstadd_front.c	\
				ft_lstsize.c		\
				ft_lstlast.c		\
				ft_lstadd_back.c	\
				ft_lstdelone.c		\
				ft_lstclear.c		\
				ft_lstiter.c		\
				ft_lstmap.c			\

OBJ			=	$(SRC:%.c=$(OBJDIR)%.o)

BONUSOBJ 	=	$(BONUSSRC:%.c=$(OBJDIR)%.o)

$(NAME): $(OBJ)
	@echo "Updated $@"
	@ar -rcs $@ $^

all: $(OBJ) $(BONUSOBJ)
	@echo "Updated $(NAME)"
	@ar -rcs $(NAME) $^

bonus: $(BONUSOBJ)
	@echo "Add Bonus to $(NAME)"
	@ar -rcs $(NAME) $^

norm: $(SRC)$(BONUSSRC)
	@norminette $^

clean:
	rm -r $(OBJDIR)
	rm $(NAME)

fclean:
	rm -rf $(OBJDIR)
	rm -rf $(NAME)

re: fclean
	@$(MAKE) all

$(OBJDIR)%.o:%.c
	@mkdir -p $(dir $@)
	@echo "Compile $<"
	@$(CC) $(FLAGS) -I $(INC) -c $< -o $@