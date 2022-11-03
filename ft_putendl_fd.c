/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_putendl_fd.c                                    :+:    :+:            */
/*                                                     +:+                    */
/*   By: jbouma <jbouma@student.codam.nl>             +#+                     */
/*                                                   +#+                      */
/*   Created: 2022/10/20 23:25:41 by jbouma        #+#    #+#                 */
/*   Updated: 2022/10/20 23:46:34 by jbouma        ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <unistd.h>

/**
 * @brief Outputs the string ’s’ to the given file descriptor
 * followed by a newline.
 * 
 * @param s The string to output.
 * @param fd The file descriptor on which to write.
 */
void	ft_putendl_fd(char *s, int fd)
{
	const int	*cr = (const int *) '\n';

	write(fd, (char *)s, ft_strlen(s));
	write(fd, &cr, 1);
}