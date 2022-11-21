/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: joachbar <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/21 19:58:43 by joachbar          #+#    #+#             */
/*   Updated: 2022/11/21 20:20:11 by joachbar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_strlcpy(char *dst, char *src, unsigned int size)
{
	unsigned int	i;
	i = 0;
	
	if (size > 0)
	{
		while(src[i] && (size - 1) >= 0)
		{
			dst[i] = src[i];
			i++;
			size--;
		}
		dst[i + 1] = '\0';
	}
	i = 0;
	while(src[i])
		i++;
	return(i);
}
