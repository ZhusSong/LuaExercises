---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ZhusSong.
--- DateTime: 2019/3/19 15:56
---
print("hello lua")
---八皇后问题
---
N=8---棋盘共8行
arr={}
all=0;
function addChess(a,n)  ---添加皇后棋子
    if n>N
    then printSolution(a)
    else
        for colume=1,N do
            if isAttack(a,n,colume)
            then a[n]=colume
                addChess(a,n+1)
            end
        end
    end
end

function isAttack(a,n,c) ---判断新添加的皇后棋子是否会被攻击到
    for i=1,n-1 do
        if (a[i]==c) or (a[i]-i==c-n)or (a[i]+i==c+n)
            then
            return false

        end
    end
    return true
end

function printSolution(a)  ---打印棋盘
        for i=1,N do
            for j=1,N do
                io.write(a[i]==j and "X" or "-","  ")

            end
            io.write("\n")
        end
        io.write("\n")
        all=all+1
end
addChess(arr,1) ---n:第n个皇后