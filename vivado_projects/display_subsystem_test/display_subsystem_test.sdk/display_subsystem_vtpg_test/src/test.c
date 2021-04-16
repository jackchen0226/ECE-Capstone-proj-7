#include <stdio.h>
#include "xil_printf.h"
#include "xv_tpg.h"

XV_tpg tpg_inst;
XV_tpg_Config *tpg_config;

int main()
{
	int Status;

/* Insert the code for the TPG here */
    Status = XV_tpg_Initialize(&tpg_inst, XPAR_V_TPG_0_DEVICE_ID);
    if(Status!= XST_SUCCESS)
    {
    	xil_printf("TPG configuration failed\r\n");
    	return(XST_FAILURE);
    }
    else{
    	xil_printf("TPG configuration succeeded\r\n");
    }

// Set Resolution to 800x600
    XV_tpg_Set_height(&tpg_inst, 600);
    XV_tpg_Set_width(&tpg_inst, 800);


    //Start the TPG
    XV_tpg_EnableAutoRestart(&tpg_inst);
    XV_tpg_Start(&tpg_inst);
    xil_printf("TPG started!\r\n");

/* End of TPG code*/

    while(1);

    return 0;
}
