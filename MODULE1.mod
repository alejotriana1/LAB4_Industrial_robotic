MODULE MODULE1
    TASK PERS tooldata toolJSD:=[TRUE,[[3.02024,-6.68559,146.275],[0.79574,0.0471874,-0.602739,0.0357425]],[0.2,[0,0,0],[1,0,0,0],0,0,0]];
    TASK PERS wobjdata Malla:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,200,-123],[1,0,0,0]]];
    CONST robtarget Home_2:=[[506.291651246,0,679.5],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P0:=[[445,180,350],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1_2:=[[445,180,300],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P2_2:=[[445,140,300],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P3_2:=[[330,140,300],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P4_2:=[[310,165,300],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P5_3:=[[330,190,300],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P5_2_2:=[[330,190,350],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P6_1_2:=[[420,55,350],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P6_2:=[[420,55,300],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P7_2:=[[440,80,300],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P8_2:=[[427,103,300],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P9_2:=[[415,105,300],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P11_2:=[[340,55,300],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P12_2:=[[315,80,300],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P15_3:=[[335,105,300],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P15_2_2:=[[335,105,350],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P16_1_2:=[[305,25,350],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P16_2:=[[305,25,300],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P17_2:=[[440,25,300],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P18_2:=[[440,0,300],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P19_2:=[[373,-40,300],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P20_2:=[[305,0,300],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget UCS_2:=[[300,200,300],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PROC J()
        MoveJ Home_2,v500,z100,tool0\WObj:=Malla;
        MoveJ P0,v500,z100,tool0\WObj:=Malla;
        MoveL P1_2,v80,z100,tool0\WObj:=Malla;
        MoveL P2_2,v100,z0,tool0\WObj:=Malla;
        MoveL P3_2,v100,z0,tool0\WObj:=Malla;
        MoveC P4_2,P5_3,v100,z0,tool0\WObj:=Malla;
        MoveL P5_2_2,v100,z0,tool0\WObj:=Malla;
    ENDPROC
    PROC main3()
        J;
        S;
        D;
    ENDPROC
    PROC S()
        MoveJ P6_1_2,v500,z0,tool0\WObj:=Malla;
        MoveL P6_2,v100,z0,tool0\WObj:=Malla;
        MoveC P7_2,P8_2,v100,z0,tool0\WObj:=Malla;
        MoveL P9_2,v100,z0,tool0\WObj:=Malla;
        MoveL P11_2,v100,z0,tool0\WObj:=Malla;
        MoveC P12_2,P15_3,v100,z0,tool0\WObj:=Malla;
        MoveL P15_2_2,v100,z0,tool0\WObj:=Malla;
    ENDPROC
    PROC D()
        MoveJ P16_1_2,v500,z0,tool0\WObj:=Malla;
        MoveL P16_2,v100,z0,tool0\WObj:=Malla;
        MoveL P17_2,v100,z0,tool0\WObj:=Malla;
        MoveL P18_2,v100,z0,tool0\WObj:=Malla;
        MoveC P19_2,P20_2,v100,z0,tool0\WObj:=Malla;
        MoveL UCS_2,v100,z0,tool0\WObj:=Malla;
    ENDPROC
   
ENDMODULE