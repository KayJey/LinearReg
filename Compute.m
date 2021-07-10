## Copyright (C) 2021 KayJey
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
# Compute the cost function using X , Y  (mx1) each ; data lists and teta is (nx1) of n tetas..
  
  m=length(y)
  J=0;
  J=(1/m)*sum((X*teta-y).^2);
  

endfunction
