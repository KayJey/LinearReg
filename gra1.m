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
## It takes four inputs
 ## X is the x data points;no of data points is n; X=(1xn);
  ## Y is the y data points;no of data points is n; X=(1xn);
  ## alpha is the learning rate( 0.01 , 0.001 , etc );
  ## c is the color of the line to be ploted ;
## 
##
## @seealso{}
## @end deftypefn

## Author: khyati <khyati@GHOSTRAY>
## Created: 2021-07-09

function J = gra1 (X,Y,alpha,c)
  ## It takes four inputs
  ## X is the x data points;no of data points is n; X=(1xn)
  ## Y is the y data points;no of data points is n; X=(1xn)
  ## alpha is the learning rate( 0.01 , 0.001 , etc )
  ## c is the color of the line to be ploted 
  
  
  m=0             %slope of a line
  b=0             %intercept of a line
  n=length(X)     %no of data sets
  J=1             %cost function,scalar
  i=0             %no of iterations
  while(J>0.001)  % run unti cost is less than 0.001
    y=m*X+b       % y(n x 1)
    J=(1/n)*sum((Y-y).^2)       % (Y-y)=(n x 1); 
    dm= (-2/n)*sum(X*(Y-y)')    % scalar; (1xn)*(nx1)=1x1
    db = (-2/n)*sum(Y-y)        % scalar; sum(1xn)=1x1 
    m=m-(alpha*dm)              % scalar; scalar-(scalar*scalar) = scalar
    b=b-(alpha*db)              % scalar; scalar-(scalar*scalar) = scalar
    hold on;                    % To prevent clearing of previous lines
    plot(m,b,c)                 % plot  m and b in the coolor parameter c
    i=i+1                       % inc the iterator
  endwhile

endfunction
