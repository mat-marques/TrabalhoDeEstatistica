vet = [3 4 6 6 4 8 5 8 9 5 5 3 6 5 10 9 9 11 4 4 7 12 8 4 5 4 4 11 7 5 9 6 3 5 5 9 4 7 5 13 3 5 4 4 9 8 6 1 11 7 9 10 5 8 4 8 11 6 5 6];
scf(0);
histplot(5, vet);
h = tabul(vet);
newvet = [1 27 11 15 6];
auxvet = [2.6 5.2 7.8 10.4 13];
scf(1);
bar(auxvet, newvet, 1, 'blue');
