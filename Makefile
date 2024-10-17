# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lpolizzi <lpolizzi@student.42nice.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/17 12:25:38 by lpolizzi          #+#    #+#              #
#    Updated: 2024/10/17 12:58:01 by lpolizzi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME        =	libftprintf.a
INCLUDE     =	include
LIBFT       =	libft
SRCDIR      =	srcs/
OBJDIR      =	objs/
CC          =	cc
CFLAGS      =	-Wall -Werror -Wextra -I${INCLUDE}

SRCFILES    =   ft_printf.c             ft_printf_utils.c    ft_print_ptr.c \
                ft_print_unsigned.c     ft_print_hex.c

SRCS        =   ${addprefix ${SRCDIR}, ${SRCFILES}}
OBJS        =   ${patsubst ${SRCDIR}%.c, ${OBJDIR}%.o, ${SRCS}}

all:			${NAME}

${NAME}:        ${OBJS}
				@make -C ${LIBFT}
				@cp ${LIBFT}/libft.a .
				@mv libft.a ${NAME}
				ar rcs ${NAME} ${OBJS}

${OBJDIR}%.o:   ${SRCDIR}%.c
				@mkdir -p ${OBJDIR}
				@${CC} ${CFLAGS} -c $< -o $@

clean:
				rm -rf ${OBJDIR}
				@make clean -C ${LIBFT}

fclean:			clean
				rm -rf ${NAME}
				rm -rf ${LIBFT}/libft.a

re:				fclean all

.PHONY: all clean fclean re
