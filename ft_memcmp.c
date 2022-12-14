/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_memcmp.c                                        :+:    :+:            */
/*                                                     +:+                    */
/*   By: jbouma <jbouma@student.codam.nl>             +#+                     */
/*                                                   +#+                      */
/*   Created: 2022/10/10 20:49:56 by jbouma        #+#    #+#                 */
/*   Updated: 2022/11/21 14:33:49 by jbouma        ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include <stddef.h>

/**
 * @brief The memcmp() function compares byte string s1 against byte string s2.
 * Both strings are assumed to be n bytes long.
 * 
 * @param s1 
 * @param s2 
 * @param n 
 * @return int The memcmp() function returns zero if the two strings are 
 * identical, otherwise returns the difference between the first two differing
 * bytes (treated as unsigned char values, so that `\200' is greater than `\0',
 * for example).  Zero-length strings are always identical.
 */
int	ft_memcmp(const void *s1, const void *s2, size_t n)
{
	size_t	i;

	i = 0;
	while (i < n)
	{
		if (((unsigned char *)s1)[i] != ((unsigned char *)s2)[i])
			return (((unsigned char *)s1)[i] - ((unsigned char *)s2)[i]);
		i++;
	}
	return (0);
}
