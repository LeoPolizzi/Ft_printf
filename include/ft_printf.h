/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lpolizzi <lpolizzi@student.42nice.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/16 23:22:28 by lpolizzi          #+#    #+#             */
/*   Updated: 2024/10/17 13:25:52 by lpolizzi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>
# include <stdint.h>

// Parameters functions for %[cspdiuxX%]
int	ft_print_unsigned(unsigned int n);
int	ft_print_nbr(int n);
int	ft_print_percent(void);
int	ft_print_str(char *str);
int	ft_print_ptr(void *ptr);
int	ft_print_hex(unsigned int n, const char format);

// Main ft_printf function
int	ft_printf(const char *str, ...);

#endif
