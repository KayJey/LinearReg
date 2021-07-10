## Copyright (C) 2021 khyati
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} Compute (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: khyati <khyati@GHOSTRAY>
## Created: 2021-07-08

function J = Compute (X,y,teta)
  
  m=length(y)
  J=0;
  J=(1/m)*sum((X*teta-y).^2);
  

endfunction
