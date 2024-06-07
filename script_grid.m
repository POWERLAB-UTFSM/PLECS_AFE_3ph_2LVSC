Lfr=100e-6;
Lfg=100e-6;
Rr=0.1;
Rg=0.1;
Cf=1e-6;
Rc=0.1;

syms s


Zfr=s*Lfr+Rr;
Zfg=s*Lfg+Rg;
Zfc=1/(s*Cf)+Rc;

Zthr=simplify((Zfr*Zfc/(Zfr+Zfc)+Zfg));
Ythr=1/Zthr;
Kthr=Zfc/(Zfr+Zfc);
Gthr=Kthr*Ythr;

[nYthr,dYthr]=numden(Ythr);
[nZthr,dZthr]=numden(Zthr);
[nKthr,dKthr]=numden(Kthr);
[nGthr,dGthr]=numden(Gthr);

ncYthr=sym2poly(nYthr);
dcYthr=sym2poly(dYthr);
ncZthr=sym2poly(nZthr);
dcZthr=sym2poly(dZthr);
ncKthr=sym2poly(nKthr);
dcKthr=sym2poly(dKthr);
ncGthr=sym2poly(nGthr);
dcGthr=sym2poly(dGthr);

tfYthr = tf(ncYthr,dcYthr);
tfZthr = tf(ncZthr,dcZthr);
tfKthr = tf(ncKthr,dcKthr);
tfGthr = tf(ncGthr,dcGthr);

%%
p = bodeoptions('cstprefs');
p.FreqUnits = 'Hz';
p.PhaseVisible = 'off';

bodeplot(tfGthr,p);

