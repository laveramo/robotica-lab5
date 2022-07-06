MODULE ModuleJL
	PERS tooldata m100:=[TRUE,[[0.000154545,0.000178814,167.84957128],[0.768977196,-0.601982663,-0.169415618,0.132624635]],[0.18,[0,0,1],[1,0,0,0],0,0,0]];
	PERS wobjdata Workobject_1:=[FALSE,TRUE,"",[[0,0,167.85],[0.768981428,-0.601976775,-0.169417004,0.132625052]],[[0,0,0],[1,0,0,0]]];
	PERS wobjdata prueba1:=[FALSE,TRUE,"",[[400,210,30],[0,0,1,0]],[[0,0,0],[1,0,0,0]]];
	CONST robtarget Home:=[[651.654188479,0.000047043,595.575105844],[0.531207918,-0.186132625,0.581248825,0.587641555],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget J_1:=[[0,0,0],[0.716525656,-0.676287732,-0.170036708,0.01770324],[-1,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget J_2:=[[0,200,0],[0.716525656,-0.676287732,-0.170036708,0.01770324],[-1,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget J_3:=[[0,100,0],[0.716525656,-0.676287732,-0.170036708,0.01770324],[-1,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget J_4:=[[-150,100,0],[0.716525656,-0.676287732,-0.170036708,0.01770324],[-1,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget J_5:=[[-200,50,0],[0.716525656,-0.676287732,-0.170036708,0.01770324],[-1,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget J_6:=[[-150,0,0],[0.716525656,-0.676287732,-0.170036708,0.01770324],[-1,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget J_7:=[[-150,0,-100],[0.716525656,-0.676287732,-0.170036708,0.01770324],[-1,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget L_0:=[[0,220,-100],[0.716525656,-0.676287732,-0.170036708,0.01770324],[-1,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget L_1:=[[0,220,0],[0.716525656,-0.676287732,-0.170036708,0.01770324],[-1,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget L_2:=[[-200,220,0],[0.716525656,-0.676287732,-0.170036708,0.01770324],[-1,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget L_3:=[[-200,320,0],[0.716525656,-0.676287732,-0.170036708,0.01770324],[-1,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget L_4:=[[-200,320,-50],[0.716525227,-0.676288404,-0.170035991,0.017701867],[-1,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS wobjdata herramienta:=[FALSE,TRUE,"",[[0,0,167.85],[0.768981428,-0.601976775,-0.169417004,0.132625052]],[[0,0,0],[1,0,0,0]]];
	PERS wobjdata inclinado:=[FALSE,TRUE,"",[[339.1,-787.7,227.6],[0.183012702,0.683012702,-0.683012702,0.183012702]],[[0,0,0],[1,0,0,0]]];
	PROC main()
      TPWrite("Inicio");
      WaitTime(1);
      IF DI_01=1 THEN  
	    J_inc;
	    L_inc;
      ENDIF
      IF DI_02=1 THEN  
	    J;
	    L;
      ENDIF
          
	ENDPROC
	PROC J()
	    MoveJ Home,v300,z0,m100\WObj:=wobj0;
	    MoveJ J_1,v600,z0,m100\WObj:=prueba1;
	    MoveL J_2,v300,z0,m100\WObj:=prueba1;
	    MoveL J_3,v300,z0,m100\WObj:=prueba1;
	    MoveL J_4,v300,z0,m100\WObj:=prueba1;
	    MoveC J_5,J_6,v300,z0,m100\WObj:=prueba1;
	    MoveL J_7,v300,z0,m100\WObj:=prueba1;
	ENDPROC
	PROC L()
	    MoveL L_0,v300,z0,m100\WObj:=prueba1;
	    MoveL L_1,v300,z0,m100\WObj:=prueba1;
	    MoveL L_2,v300,z0,m100\WObj:=prueba1;
	    MoveL L_3,v300,z0,m100\WObj:=prueba1;
	    MoveL L_4,v300,z0,m100\WObj:=prueba1;
	    MoveJ Home,v300,z0,m100\WObj:=wobj0;
	ENDPROC
	PROC J_inc()
	    MoveJ Home,v300,z0,m100\WObj:=wobj0;
	    MoveJ J_1,v600,z0,m100\WObj:=inclinado;
	    MoveL J_2,v300,z0,m100\WObj:=inclinado;
	    MoveL J_3,v300,z0,m100\WObj:=inclinado;
	    MoveL J_4,v300,z0,m100\WObj:=inclinado;
	    MoveC J_5,J_6,v300,z0,m100\WObj:=inclinado;
	    MoveL J_7,v300,z0,m100\WObj:=inclinado;
	ENDPROC
	PROC L_inc()
	    MoveL L_0,v300,z0,m100\WObj:=inclinado;
	    MoveL L_1,v300,z0,m100\WObj:=inclinado;
	    MoveL L_2,v300,z0,m100\WObj:=inclinado;
	    MoveL L_3,v300,z0,m100\WObj:=inclinado;
	    MoveL L_4,v300,z0,m100\WObj:=inclinado;
	    MoveJ Home,v300,z0,m100\WObj:=wobj0;
	ENDPROC

ENDMODULE