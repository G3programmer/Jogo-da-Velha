  program JogoDaVelha;
uses Crt;
var
    tab:array[1..3,1..3] of integer;
    i,j,venc,vez,posi,num:integer;
    jog:boolean;
   
begin
    for i:=1 to 3 do
    begin
        for j:=1 to 3 do
        begin
            tab[i,j]:=0;
        end;
    end;
   
    venc:=0;
    vez:=1;
    num:=0;
   
    while (venc=0) do
    begin
    num:=num+1;
        ClrScr;
       
        writeln();
        writeln('  ',tab[1,1],' | ',tab[1,2],' | ',tab[1,3]);
        writeln(' ___|___|___');
        writeln('  ',tab[2,1],' | ',tab[2,2],' | ',tab[2,3]);
        writeln(' ___|___|___');
        writeln('  ',tab[3,1],' | ',tab[3,2],' | ',tab[3,3]);
        writeln();
       
        repeat
            jog:= false;
         
            write('Informe uma posição do jogador',vez,':');
            read(posi);
         
            if(posi=1) then
            begin
                if tab[3,1]=0 then
                begin
                    tab[3,1]:= vez;
                    jog:= true;
                end;
            end;
         
            if(posi=2) then
            begin
                if tab[3,2]=0 then
                begin
                    tab[3,2]:= vez;
                    jog:= true;
                end;
            end;
           
            if(posi=3) then
            begin
                if tab[3,3]=0 then
                begin
                    tab[3,3]:= vez;
                    jog:= true;
                end;
            end;
           
            if(posi=4) then
            begin
                if tab[2,1]=0 then
                begin
                    tab[2,1]:= vez;
                    jog:= true;
                end;
            end;
           
            if(posi=5) then
            begin
                if tab[2,2]=0 then
                begin
                    tab[2,2]:= vez;
                    jog:= true;
                end;
            end;
           
            if(posi=6) then
            begin
                if tab[2,3]=0 then
                begin
                    tab[2,3]:= vez;
                    jog:= true;
                end;
            end;
           
            if(posi=7) then
            begin
                if tab[1,1]=0 then
                begin
                    tab[1,1]:= vez;
                    jog:= true;
                end;
            end;
           
            if(posi=8) then
            begin
                if tab[1,2]=0 then
                begin
                    tab[1,2]:= vez;
                    jog:= true;
                end;
            end;
           
            if(posi=9) then
            begin
                if tab[1,3]=0 then
                begin
                    tab[1,3]:= vez;
                    jog:= true;
                end;
            end;
           
            if (posi<>1 or 2) then
                writeln('Posição inválida, tente novamente!!! ');
        until (jog=true);
       
        //verificar se algum jogador ganhou
       
        if (tab[3,1] = tab[3,2]) and (tab[3,1] = tab[3,3]) and (tab[3,1] <> 0) then
        begin
            write('Jogador ganhou');
            venc:=1
        end;
       
        if (tab[2,1] = tab[2,2]) and (tab[2,1] = tab[2,3]) and (tab[2,1] <> 0) then
        begin
            write('Jogador ganhou');
            venc:=1
        end;
       
        if (tab[1,1] = tab[1,2]) and (tab[1,1] = tab[1,3]) and (tab[1,1] <> 0) then
        begin
            write('Jogador ganhou');
            venc:=1
        end;
       
        if (tab[1,1] = tab[2,1]) and (tab[1,1] = tab[3,1]) and (tab[1,1] <> 0) then
        begin
            write('Jogador ganhou');
            venc:=1
        end;
       
        if (tab[1,2] = tab[2,2]) and (tab[1,2] = tab[3,2]) and (tab[1,2] <> 0) then
        begin
            write('Jogador ganhou');
            venc:=1
        end;
       
        if (tab[1,3] = tab[2,3]) and (tab[1,3] = tab[3,3]) and (tab[1,3] <> 0) then
        begin
            write('Jogador ganhou');
            venc:=1
        end;
       
        if (tab[1,1] = tab[2,2]) and (tab[1,1] = tab[3,3]) and (tab[1,1] <> 0) then
        begin
            write('Jogador ganhou');
            venc:=1
        end;
       
        if (tab[1,3] = tab[2,2]) and (tab[1,3] = tab[3,1]) and (tab[1,3] <> 0) then
        begin
            write('Jogador ganhou');
            venc:=1
        end;
       
        if num>8 then
        begin
            if venc<>1 then
            begin
                write('Empate!');
                venc:=1
            end;
        end;
       
       
       
        if (vez = 1) then
            vez := 2
        else
            vez := 1;
        end;        
    end.
