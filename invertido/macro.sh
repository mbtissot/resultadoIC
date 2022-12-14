#! /usr/bin/bash


echo "Tempos desta run: " > Tempo.txt

dt=$(date '+%d/%m/%Y %H:%M:%S');

echo "$dt - Copiando Ini para Ini_backup"
cp Ini.wt Ini_backup.wt

#---------------------------------------------

dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "$dt - Começando compilação"
echo "$dt - Começando compilação" >> Tempo.txt
gfortran wt_lst_aniso.f90

#---------------------------------------------

dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "$dt - Começando 1 execução"
echo "$dt - Começando 1 execução" >> Tempo.txt
./a.out

cp Fe.wt Fe0100.wt
cp IL.wt IL0100.wt
cp IS.wt IS0100.wt
cp IT.wt IT0100.wt
mv Out.wt Ini.wt

if grep -q "NaN" Fe0100.wt;
then echo 'Achei um NaN na função distribuição e terminei a execução.' && shutdown
fi

#---------------------------------------------

dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "$dt - Começando 2 execução"
echo "$dt - Começando 2 execução" >> Tempo.txt
./a.out

cp Fe.wt Fe0200.wt
cp IL.wt IL0200.wt
cp IS.wt IS0200.wt
cp IT.wt IT0200.wt
mv Out.wt Ini.wt

if grep -q "NaN" Fe0200.wt;
then echo 'Achei um NaN na função distribuição e terminei a execução.' && shutdown
fi

#---------------------------------------------

dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "$dt - Começando 3 execução"
echo "$dt - Começando 3 execução" >> Tempo.txt
./a.out

cp Fe.wt Fe0300.wt
cp IL.wt IL0300.wt
cp IS.wt IS0300.wt
cp IT.wt IT0300.wt
mv Out.wt Ini.wt

if grep -q "NaN" Fe0300.wt;
then echo 'Achei um NaN na função distribuição e terminei a execução.' && shutdown
fi

#---------------------------------------------

dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "$dt - Começando 4 execução"
echo "$dt - Começando 4 execução" >> Tempo.txt
./a.out

cp Fe.wt Fe0400.wt
cp IL.wt IL0400.wt
cp IS.wt IS0400.wt
cp IT.wt IT0400.wt
mv Out.wt Ini.wt

if grep -q "NaN" Fe0400.wt;
then echo 'Achei um NaN na função distribuição e terminei a execução.' && shutdown
fi

#---------------------------------------------

dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "$dt - Começando 5 execução"
echo "$dt - Começando 5 execução" >> Tempo.txt
./a.out

cp Fe.wt Fe0500.wt
cp IL.wt IL0500.wt
cp IS.wt IS0500.wt
cp IT.wt IT0500.wt
mv Out.wt Ini.wt

if grep -q "NaN" Fe0500.wt;
then echo 'Achei um NaN na função distribuição e terminei a execução.' && shutdown
fi

#---------------------------------------------

dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "$dt - Começando 6 execução"
echo "$dt - Começando 6 execução" >> Tempo.txt
./a.out

cp Fe.wt Fe0600.wt
cp IL.wt IL0600.wt
cp IS.wt IS0600.wt
cp IT.wt IT0600.wt
mv Out.wt Ini.wt

if grep -q "NaN" Fe0600.wt;
then echo 'Achei um NaN na função distribuição e terminei a execução.' && shutdown
fi

#---------------------------------------------

dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "$dt - Começando 7 execução"
echo "$dt - Começando 7 execução" >> Tempo.txt
./a.out

cp Fe.wt Fe0700.wt
cp IL.wt IL0700.wt
cp IS.wt IS0700.wt
cp IT.wt IT0700.wt
mv Out.wt Ini.wt

if grep -q "NaN" Fe0700.wt;
then echo 'Achei um NaN na função distribuição e terminei a execução.' && shutdown
fi

#---------------------------------------------

dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "$dt - Começando 8 execução"
echo "$dt - Começando 8 execução" >> Tempo.txt
./a.out

cp Fe.wt Fe0800.wt
cp IL.wt IL0800.wt
cp IS.wt IS0800.wt
cp IT.wt IT0800.wt
mv Out.wt Ini.wt

if grep -q "NaN" Fe0800.wt;
then echo 'Achei um NaN na função distribuição e terminei a execução.' && shutdown
fi

#---------------------------------------------

dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "$dt - Começando 9 execução"
echo "$dt - Começando 9 execução" >> Tempo.txt
./a.out

cp Fe.wt Fe0900.wt
cp IL.wt IL0900.wt
cp IS.wt IS0900.wt
cp IT.wt IT0900.wt
mv Out.wt Ini.wt

if grep -q "NaN" Fe0900.wt;
then echo 'Achei um NaN na função distribuição e terminei a execução.' && shutdown
fi

#---------------------------------------------

dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "$dt - Começando 10 execução"
echo "$dt - Começando 10 execução" >> Tempo.txt
./a.out

cp Fe.wt Fe1000.wt
cp IL.wt IL1000.wt
cp IS.wt IS1000.wt
cp IT.wt IT1000.wt
mv Out.wt Ini.wt

if grep -q "NaN" Fe1000.wt;
then echo 'Achei um NaN na função distribuição e terminei a execução.' && shutdown
fi

#---------------------------------------------

paplay /usr/share/sounds/LinuxMint/stereo/desktop-login.ogg
#shutdown now