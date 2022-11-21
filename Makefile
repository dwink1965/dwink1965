# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: joachbar <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/21 16:35:40 by joachbar          #+#    #+#              #
#    Updated: 2022/11/21 19:34:13 by joachbar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

AR = ar crs

MY_SOURCES = functions/ft_isalnum.c \
	     functions/ft_isalpha.c \
	     functions/ft_isascii.c \
	     functions/ft_isdigit.c \
	     functions/ft_isprint.c \
	     functions/ft_strlen.c

MY_OBJECTS = $(MY_SOURCES:.c=.o)

CFLAGS += -Wall
CFLAGS += -Wextra
CFLAGS += -Werror

$(NAME): $(MY_OBJECTS)
	$(AR) $(NAME) $(MY_OBJECTS)
