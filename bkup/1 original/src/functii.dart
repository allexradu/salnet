class Functii {
  int calculateDeducere(int persoaneInIntretinere, int salariuBrut) {
    int deducere;

    switch (persoaneInIntretinere) {
      case 0:
        {
          if (salariuBrut >= 1 && salariuBrut <= 1950) {
            deducere = 510;
          } else if (salariuBrut >= 1951 && salariuBrut <= 2000) {
            deducere = 495;
          } else if (salariuBrut >= 2001 && salariuBrut <= 2050) {
            deducere = 480;
          } else if (salariuBrut >= 2051 && salariuBrut <= 2100) {
            deducere = 465;
          } else if (salariuBrut >= 2101 && salariuBrut <= 2150) {
            deducere = 450;
          } else if (salariuBrut >= 2151 && salariuBrut <= 2200) {
            deducere = 435;
          } else if (salariuBrut >= 2201 && salariuBrut <= 2250) {
            deducere = 420;
          } else if (salariuBrut >= 2251 && salariuBrut <= 2300) {
            deducere = 405;
          } else if (salariuBrut >= 2301 && salariuBrut <= 2350) {
            deducere = 390;
          } else if (salariuBrut >= 2351 && salariuBrut <= 2400) {
            deducere = 375;
          } else if (salariuBrut >= 2401 && salariuBrut <= 2450) {
            deducere = 360;
          } else if (salariuBrut >= 2451 && salariuBrut <= 2500) {
            deducere = 345;
          } else if (salariuBrut >= 2501 && salariuBrut <= 2550) {
            deducere = 330;
          } else if (salariuBrut >= 2551 && salariuBrut <= 2600) {
            deducere = 315;
          } else if (salariuBrut >= 2601 && salariuBrut <= 2650) {
            deducere = 300;
          } else if (salariuBrut >= 2651 && salariuBrut <= 2700) {
            deducere = 285;
          } else if (salariuBrut >= 2701 && salariuBrut <= 2750) {
            deducere = 270;
          } else if (salariuBrut >= 2751 && salariuBrut <= 2800) {
            deducere = 255;
          } else if (salariuBrut >= 2801 && salariuBrut <= 2850) {
            deducere = 240;
          } else if (salariuBrut >= 2851 && salariuBrut <= 2900) {
            deducere = 225;
          } else if (salariuBrut >= 2901 && salariuBrut <= 2950) {
            deducere = 210;
          } else if (salariuBrut >= 2951 && salariuBrut <= 3000) {
            deducere = 195;
          } else if (salariuBrut >= 3001 && salariuBrut <= 3050) {
            deducere = 180;
          } else if (salariuBrut >= 3051 && salariuBrut <= 3100) {
            deducere = 165;
          } else if (salariuBrut >= 3101 && salariuBrut <= 3150) {
            deducere = 150;
          } else if (salariuBrut >= 3151 && salariuBrut <= 3200) {
            deducere = 135;
          } else if (salariuBrut >= 3201 && salariuBrut <= 3250) {
            deducere = 120;
          } else if (salariuBrut >= 3251 && salariuBrut <= 3301) {
            deducere = 105;
          } else if (salariuBrut >= 3301 && salariuBrut <= 3350) {
            deducere = 90;
          } else if (salariuBrut >= 3351 && salariuBrut <= 3400) {
            deducere = 75;
          } else if (salariuBrut >= 3401 && salariuBrut <= 3450) {
            deducere = 60;
          } else if (salariuBrut >= 3451 && salariuBrut <= 3500) {
            deducere = 45;
          } else if (salariuBrut >= 3501 && salariuBrut <= 3550) {
            deducere = 30;
          } else if (salariuBrut >= 3551 && salariuBrut <= 3600) {
            deducere = 15;
          } else {
            deducere = 0;
          }
        }
        break;

      case 1:
        {
          if (salariuBrut >= 1 && salariuBrut <= 1950) {
            deducere = 670;
          } else if (salariuBrut >= 1951 && salariuBrut <= 2000) {
            deducere = 655;
          } else if (salariuBrut >= 2001 && salariuBrut <= 2050) {
            deducere = 640;
          } else if (salariuBrut >= 2051 && salariuBrut <= 2100) {
            deducere = 625;
          } else if (salariuBrut >= 2101 && salariuBrut <= 2150) {
            deducere = 610;
          } else if (salariuBrut >= 2151 && salariuBrut <= 2200) {
            deducere = 595;
          } else if (salariuBrut >= 2201 && salariuBrut <= 2250) {
            deducere = 580;
          } else if (salariuBrut >= 2251 && salariuBrut <= 2300) {
            deducere = 565;
          } else if (salariuBrut >= 2301 && salariuBrut <= 2350) {
            deducere = 550;
          } else if (salariuBrut >= 2351 && salariuBrut <= 2400) {
            deducere = 535;
          } else if (salariuBrut >= 2401 && salariuBrut <= 2450) {
            deducere = 520;
          } else if (salariuBrut >= 2451 && salariuBrut <= 2500) {
            deducere = 505;
          } else if (salariuBrut >= 2501 && salariuBrut <= 2550) {
            deducere = 330;
          } else if (salariuBrut >= 2551 && salariuBrut <= 2600) {
            deducere = 475;
          } else if (salariuBrut >= 2601 && salariuBrut <= 2650) {
            deducere = 460;
          } else if (salariuBrut >= 2651 && salariuBrut <= 2700) {
            deducere = 445;
          } else if (salariuBrut >= 2701 && salariuBrut <= 2750) {
            deducere = 430;
          } else if (salariuBrut >= 2751 && salariuBrut <= 2800) {
            deducere = 415;
          } else if (salariuBrut >= 2801 && salariuBrut <= 2850) {
            deducere = 400;
          } else if (salariuBrut >= 2851 && salariuBrut <= 2900) {
            deducere = 385;
          } else if (salariuBrut >= 2901 && salariuBrut <= 2950) {
            deducere = 370;
          } else if (salariuBrut >= 2951 && salariuBrut <= 3000) {
            deducere = 355;
          } else if (salariuBrut >= 3001 && salariuBrut <= 3050) {
            deducere = 340;
          } else if (salariuBrut >= 3051 && salariuBrut <= 3100) {
            deducere = 325;
          } else if (salariuBrut >= 3101 && salariuBrut <= 3150) {
            deducere = 310;
          } else if (salariuBrut >= 3151 && salariuBrut <= 3200) {
            deducere = 295;
          } else if (salariuBrut >= 3201 && salariuBrut <= 3250) {
            deducere = 280;
          } else if (salariuBrut >= 3251 && salariuBrut <= 3350) {
            deducere = 265;
          } else if (salariuBrut >= 3301 && salariuBrut <= 3350) {
            deducere = 250;
          } else if (salariuBrut >= 3351 && salariuBrut <= 3400) {
            deducere = 235;
          } else if (salariuBrut >= 3401 && salariuBrut <= 3450) {
            deducere = 220;
          } else if (salariuBrut >= 3451 && salariuBrut <= 3500) {
            deducere = 205;
          } else if (salariuBrut >= 3501 && salariuBrut <= 3550) {
            deducere = 190;
          } else if (salariuBrut >= 3551 && salariuBrut <= 3600) {
            deducere = 175;
          } else {
            deducere = 0;
          }
        }
        break;

      case 2:
        {
          if (salariuBrut >= 1 && salariuBrut <= 1950) {
            deducere = 830;
          } else if (salariuBrut >= 1951 && salariuBrut <= 2000) {
            deducere = 815;
          } else if (salariuBrut >= 2001 && salariuBrut <= 2050) {
            deducere = 800;
          } else if (salariuBrut >= 2051 && salariuBrut <= 2100) {
            deducere = 785;
          } else if (salariuBrut >= 2101 && salariuBrut <= 2150) {
            deducere = 770;
          } else if (salariuBrut >= 2151 && salariuBrut <= 2200) {
            deducere = 755;
          } else if (salariuBrut >= 2201 && salariuBrut <= 2250) {
            deducere = 740;
          } else if (salariuBrut >= 2251 && salariuBrut <= 2300) {
            deducere = 725;
          } else if (salariuBrut >= 2301 && salariuBrut <= 2350) {
            deducere = 710;
          } else if (salariuBrut >= 2351 && salariuBrut <= 2400) {
            deducere = 695;
          } else if (salariuBrut >= 2401 && salariuBrut <= 2450) {
            deducere = 680;
          } else if (salariuBrut >= 2451 && salariuBrut <= 2500) {
            deducere = 665;
          } else if (salariuBrut >= 2501 && salariuBrut <= 2550) {
            deducere = 650;
          } else if (salariuBrut >= 2551 && salariuBrut <= 2600) {
            deducere = 635;
          } else if (salariuBrut >= 2601 && salariuBrut <= 2650) {
            deducere = 620;
          } else if (salariuBrut >= 2651 && salariuBrut <= 2700) {
            deducere = 605;
          } else if (salariuBrut >= 2701 && salariuBrut <= 2750) {
            deducere = 590;
          } else if (salariuBrut >= 2751 && salariuBrut <= 2800) {
            deducere = 575;
          } else if (salariuBrut >= 2801 && salariuBrut <= 2850) {
            deducere = 560;
          } else if (salariuBrut >= 2851 && salariuBrut <= 2900) {
            deducere = 545;
          } else if (salariuBrut >= 2901 && salariuBrut <= 2950) {
            deducere = 530;
          } else if (salariuBrut >= 2951 && salariuBrut <= 3000) {
            deducere = 515;
          } else if (salariuBrut >= 3001 && salariuBrut <= 3050) {
            deducere = 500;
          } else if (salariuBrut >= 3051 && salariuBrut <= 3100) {
            deducere = 485;
          } else if (salariuBrut >= 3101 && salariuBrut <= 3150) {
            deducere = 470;
          } else if (salariuBrut >= 3151 && salariuBrut <= 3200) {
            deducere = 455;
          } else if (salariuBrut >= 3201 && salariuBrut <= 3250) {
            deducere = 440;
          } else if (salariuBrut >= 3251 && salariuBrut <= 3301) {
            deducere = 425;
          } else if (salariuBrut >= 3301 && salariuBrut <= 3350) {
            deducere = 410;
          } else if (salariuBrut >= 3351 && salariuBrut <= 3400) {
            deducere = 395;
          } else if (salariuBrut >= 3401 && salariuBrut <= 3450) {
            deducere = 380;
          } else if (salariuBrut >= 3451 && salariuBrut <= 3500) {
            deducere = 365;
          } else if (salariuBrut >= 3501 && salariuBrut <= 3550) {
            deducere = 350;
          } else if (salariuBrut >= 3551 && salariuBrut <= 3600) {
            deducere = 335;
          } else {
            deducere = 0;
          }
        }
        break;

      case 3:
        {
          if (salariuBrut >= 1 && salariuBrut <= 1950) {
            deducere = 990;
          } else if (salariuBrut >= 1951 && salariuBrut <= 2000) {
            deducere = 975;
          } else if (salariuBrut >= 2001 && salariuBrut <= 2050) {
            deducere = 960;
          } else if (salariuBrut >= 2051 && salariuBrut <= 2100) {
            deducere = 945;
          } else if (salariuBrut >= 2101 && salariuBrut <= 2150) {
            deducere = 930;
          } else if (salariuBrut >= 2151 && salariuBrut <= 2200) {
            deducere = 915;
          } else if (salariuBrut >= 2201 && salariuBrut <= 2250) {
            deducere = 900;
          } else if (salariuBrut >= 2251 && salariuBrut <= 2300) {
            deducere = 855;
          } else if (salariuBrut >= 2301 && salariuBrut <= 2350) {
            deducere = 870;
          } else if (salariuBrut >= 2351 && salariuBrut <= 2400) {
            deducere = 855;
          } else if (salariuBrut >= 2401 && salariuBrut <= 2450) {
            deducere = 840;
          } else if (salariuBrut >= 2451 && salariuBrut <= 2500) {
            deducere = 825;
          } else if (salariuBrut >= 2501 && salariuBrut <= 2550) {
            deducere = 810;
          } else if (salariuBrut >= 2551 && salariuBrut <= 2600) {
            deducere = 795;
          } else if (salariuBrut >= 2601 && salariuBrut <= 2650) {
            deducere = 780;
          } else if (salariuBrut >= 2651 && salariuBrut <= 2700) {
            deducere = 765;
          } else if (salariuBrut >= 2701 && salariuBrut <= 2750) {
            deducere = 750;
          } else if (salariuBrut >= 2751 && salariuBrut <= 2800) {
            deducere = 735;
          } else if (salariuBrut >= 2801 && salariuBrut <= 2850) {
            deducere = 720;
          } else if (salariuBrut >= 2851 && salariuBrut <= 2900) {
            deducere = 705;
          } else if (salariuBrut >= 2901 && salariuBrut <= 2950) {
            deducere = 690;
          } else if (salariuBrut >= 2951 && salariuBrut <= 3000) {
            deducere = 675;
          } else if (salariuBrut >= 3001 && salariuBrut <= 3050) {
            deducere = 660;
          } else if (salariuBrut >= 3051 && salariuBrut <= 3100) {
            deducere = 645;
          } else if (salariuBrut >= 3101 && salariuBrut <= 3150) {
            deducere = 630;
          } else if (salariuBrut >= 3151 && salariuBrut <= 3200) {
            deducere = 615;
          } else if (salariuBrut >= 3201 && salariuBrut <= 3250) {
            deducere = 600;
          } else if (salariuBrut >= 3251 && salariuBrut <= 3301) {
            deducere = 585;
          } else if (salariuBrut >= 3301 && salariuBrut <= 3350) {
            deducere = 570;
          } else if (salariuBrut >= 3351 && salariuBrut <= 3400) {
            deducere = 555;
          } else if (salariuBrut >= 3401 && salariuBrut <= 3450) {
            deducere = 540;
          } else if (salariuBrut >= 3451 && salariuBrut <= 3500) {
            deducere = 525;
          } else if (salariuBrut >= 3501 && salariuBrut <= 3550) {
            deducere = 510;
          } else if (salariuBrut >= 3551 && salariuBrut <= 3600) {
            deducere = 495;
          } else {
            deducere = 0;
          }
        }
        break;

      case 4:
        {
          if (salariuBrut >= 1 && salariuBrut <= 1950) {
            deducere = 1310;
          } else if (salariuBrut >= 1951 && salariuBrut <= 2000) {
            deducere = 1295;
          } else if (salariuBrut >= 2001 && salariuBrut <= 2050) {
            deducere = 1280;
          } else if (salariuBrut >= 2051 && salariuBrut <= 2100) {
            deducere = 1265;
          } else if (salariuBrut >= 2101 && salariuBrut <= 2150) {
            deducere = 1250;
          } else if (salariuBrut >= 2151 && salariuBrut <= 2200) {
            deducere = 1235;
          } else if (salariuBrut >= 2201 && salariuBrut <= 2250) {
            deducere = 1220;
          } else if (salariuBrut >= 2251 && salariuBrut <= 2300) {
            deducere = 1205;
          } else if (salariuBrut >= 2301 && salariuBrut <= 2350) {
            deducere = 1190;
          } else if (salariuBrut >= 2351 && salariuBrut <= 2400) {
            deducere = 1175;
          } else if (salariuBrut >= 2401 && salariuBrut <= 2450) {
            deducere = 1160;
          } else if (salariuBrut >= 2451 && salariuBrut <= 2500) {
            deducere = 1145;
          } else if (salariuBrut >= 2501 && salariuBrut <= 2550) {
            deducere = 1130;
          } else if (salariuBrut >= 2551 && salariuBrut <= 2600) {
            deducere = 1115;
          } else if (salariuBrut >= 2601 && salariuBrut <= 2650) {
            deducere = 1100;
          } else if (salariuBrut >= 2651 && salariuBrut <= 2700) {
            deducere = 1085;
          } else if (salariuBrut >= 2701 && salariuBrut <= 2750) {
            deducere = 1070;
          } else if (salariuBrut >= 2751 && salariuBrut <= 2800) {
            deducere = 1055;
          } else if (salariuBrut >= 2801 && salariuBrut <= 2850) {
            deducere = 1040;
          } else if (salariuBrut >= 2851 && salariuBrut <= 2900) {
            deducere = 1025;
          } else if (salariuBrut >= 2901 && salariuBrut <= 2950) {
            deducere = 1010;
          } else if (salariuBrut >= 2951 && salariuBrut <= 3000) {
            deducere = 995;
          } else if (salariuBrut >= 3001 && salariuBrut <= 3050) {
            deducere = 980;
          } else if (salariuBrut >= 3051 && salariuBrut <= 3100) {
            deducere = 965;
          } else if (salariuBrut >= 3101 && salariuBrut <= 3150) {
            deducere = 950;
          } else if (salariuBrut >= 3151 && salariuBrut <= 3200) {
            deducere = 935;
          } else if (salariuBrut >= 3201 && salariuBrut <= 3250) {
            deducere = 920;
          } else if (salariuBrut >= 3251 && salariuBrut <= 3301) {
            deducere = 905;
          } else if (salariuBrut >= 3301 && salariuBrut <= 3350) {
            deducere = 890;
          } else if (salariuBrut >= 3351 && salariuBrut <= 3400) {
            deducere = 875;
          } else if (salariuBrut >= 3401 && salariuBrut <= 3450) {
            deducere = 860;
          } else if (salariuBrut >= 3451 && salariuBrut <= 3500) {
            deducere = 845;
          } else if (salariuBrut >= 3501 && salariuBrut <= 3550) {
            deducere = 830;
          } else if (salariuBrut >= 3551 && salariuBrut <= 3600) {
            deducere = 815;
          } else {
            deducere = 0;
          }
        }
        break;
    }
    return deducere;
  }
}
