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
## @deftypefn {} {@var{retval} =} gra2 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: khyati <khyati@GHOSTRAY>
## Created: 2021-07-09

function J = gra2 (X,Y,ite,alpha)
## X is 1xn list of x data points; n is no of data points;
## Y is 1xn list of y data points; n is no of data points;

  n=length(Y)   %scalar
  X= [ones(1,n); X]  % convert X into a Design matix [ ones datapoints]
  teta=[zeros(1,2)]  % create teta matrix of initally zero
  
  
  for i = 1:ite 
     y=teta*X
 
    J=(1/n)*sum((Y-y).^2)
    delta=(-2/n)*(X*(Y-y)')
    teta=teta-((alpha)*delta)'
    
    hold on;
    disp(y)
    plot(X,y,'r')
    
    
    
  endfor

endfunction
