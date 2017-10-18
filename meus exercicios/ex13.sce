function freqdist(x, xclass)
    [m n] = size(x);
    [m nB] = size(xclass);
    k = nB - 1;
    cmark = zeros(1,k);
    for ii= 1: k
        cmark(ii) = 0.5*(xclass(ii)+xclass(ii+1));
    end
    fcount = zeros(2,k);
    fbelow = 0; fabove = 0;
    for ii = 1:n
        if x(ii) < xclass(1)
            fbelow = fbelow + 1;
        elseif x(ii) > xclass(nB)
            fabove = fabove + 1;
        else
            for jj=1:k
                if x(ii)>= xclass(jj) & x(ii) < xclass(jj+1)
                    fcount(jj) = fcount(jj) + 1;
                end
            end
        end
    end
    frel = fcount/n;
    fcumul = zeros(1,k);
    fcumul(1) = fcount(1);
    for ii=2:k
        fcumul(ii) = fcumul(ii-1) + fcount(ii);
    end;
    fcumulrel = fcumul/n;
    disp(' ');
    disp('Frequency distribution');
    disp('====================================================================================')
    disp('Class    LowBound    UppBound Class Mark    Freq.    RelFreq.   CumFreq.   RelCumFreq')
    disp('====================================================================================')
    for ii = 1:k
        printf('%0.5f %10.6g %10.6g %10.6g %10.6g %10.6g %10.6g %10.6g \n', ...
        ii, xclass(ii), xclass(ii+1), cmark(ii), fcount(ii), frel(ii), fcumul(ii), fcumulrel(ii));
    end
    disp('====================================================================================')
    disp(' ')
    if fbelow ~=0
    printf('Outliers below minimum class boundary = %10.6 \n', fbelow)
    end
    if fabove ~=0
    printf('Outliers above maximum class boundary = %10.6', fabove)
    end
    disp(' ')
    xset('window',1);xbasc(1);
    histplot(k,x);
    xtitle('histogram','x','rel.f');
    xset('window',2);xbasc(2);
    xset('mark',-9,2);
    plot2d(cmark,fcumulrel,-9);
    plot2d(cmark,fcumulrel,1);
    xtitle('ogive','x','cum.rel.f');
endfunction

	

function xbasc(win_num)
	
	warnobsolete('clf', '5.3');
	
	// This function is obsolete.
	//xbasc([win_num])
	// Clear the graphic window win_num and erase the recorded graphics of
	// window win_num
	// if win_num is omited, it's the current graphic window
	// win_num can also be a vector of window Id to clear a set of windows
	//!
	
  [lhs,rhs]=argn(0);
	  if (rhs == 0) then
	    // clear the current figure
	    clf();
	  elseif (rhs == 1) then 
	     // clear a set of figures
	    if (type(win_num) <> 1) then
	  error(999, msprintf(gettext("%s: Wrong type for input argument #%d: A vector expected.\n"), "xbasc", 1));
	  return;
	end
	
	if (winsid() == []) then
	  // no current figure
	  curFig = [];
	else
	  curFig = gcf();
	end

	    for figNum = win_num,
clf(scf(figNum));
end
// restore current figure
if (curFig <> []) then
scf(curFig);
end
else
error(999, msprintf(gettext("%s: Wrong number of input arguments: %d or %d expected.\n"), "xbasc", 0, 1));
return;
end
endfunction 


x = int(100*rand(1,100));
min(x),max(x)
xclass= [0:10:100];
freqdist(x,xclass);
