M=zeros(3,3);
disp(M);
w=0;
n=1;
while w==0 && n<=9
    if mod(n,2)==1
        disp('Player A:');
    else
        disp('Player B:');
    end
    i=input('Please input the desired row number: ');
    j=input('Please input the desired column number: ');
    v=checkValid(M,i,j);
    while v~=1
        i=input('Please input the desired row number: ');
        j=input('Please input the desired column number: ');
        v=checkValid(M,i,j);
    end
    if mod(n,2)==1
        M(i,j)=1;
        disp(M);
    else
        M(i,j)=-1;
        disp(M);
    end
    w=checkWin(M);
    if w==1
        disp('Player A wins!');
    elseif w==-1
        disp('Player B wins!');
    else
        n=n+1;
    end
end
if n>=9 && w==0
    disp('The game has reached a draw');
end