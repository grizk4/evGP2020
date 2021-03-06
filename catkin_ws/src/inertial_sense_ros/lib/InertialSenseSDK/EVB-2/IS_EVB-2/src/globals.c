/*
MIT LICENSE

Copyright 2014-2019 Inertial Sense, Inc. - http://inertialsense.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files(the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions :

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT, IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

#include <flash_efc.h>
#include "ASF/common/components/wifi/winc3400/wifi_drv/socket/include/socket.h"
#include "../../../hw-libs/drivers/d_flash.h"
#include "globals.h"


wheel_encoder_t				g_wheelEncoder = {0};
evb_status_t                g_status = {0};
evb_flash_cfg_t*            g_flashCfg;
nvr_manage_t                g_nvr_manage_config;
nvm_config_t                g_userPage = {0};
evb_msg_t                   g_msg = {0};
debug_array_t               g_debug = {0};
evb_rtos_info_t             g_rtos = {0};
date_time_t                 g_gps_date_time = {0};
//uint32_t					g_CANbaud_kbps = 500;
//uint32					g_can_receive_address = 0;
bool                        g_gpsTimeSync=false;
int                         g_comm_time_ms=0;
bool                        g_loggerEnabled=false;


void globals_init(void)
{
}


void com_bridge_select_preset(evb_flash_cfg_t* cfg)
{
    if(cfg->cbPreset==EVB2_CB_PRESET_NA)
    {   // Do nothing
        return;
    }
    
    // Comm Bridge
    memset(cfg->cbf, 0, sizeof(cfg->cbf));      // Clear com bridge settings
    switch(cfg->cbPreset)
    {
    case EVB2_CB_PRESET_RS232:
		// UINS-SER0
		cfg->cbf[EVB2_PORT_UINS0]  |= (1<<EVB2_PORT_USB);
		cfg->cbf[EVB2_PORT_USB]    |= (1<<EVB2_PORT_UINS0);

		cfg->cbf[EVB2_PORT_UINS0]  |= (1<<EVB2_PORT_SP330);
		cfg->cbf[EVB2_PORT_SP330]  |= (1<<EVB2_PORT_UINS0);

		// UINS-SER1
		cfg->cbf[EVB2_PORT_UINS1]  |= (1<<EVB2_PORT_XRADIO);
		cfg->cbf[EVB2_PORT_XRADIO] |= (1<<EVB2_PORT_UINS1);
		break;
        
    case EVB2_CB_PRESET_RS232_XBEE:
		// UINS-SER0
		cfg->cbf[EVB2_PORT_UINS0]  |= (1<<EVB2_PORT_USB);
		cfg->cbf[EVB2_PORT_USB]    |= (1<<EVB2_PORT_UINS0);

		cfg->cbf[EVB2_PORT_UINS0]  |= (1<<EVB2_PORT_SP330);
		cfg->cbf[EVB2_PORT_SP330]  |= (1<<EVB2_PORT_UINS0);

		// UINS-SER1
		cfg->cbf[EVB2_PORT_UINS1]  |= (1<<EVB2_PORT_XRADIO);
		cfg->cbf[EVB2_PORT_XRADIO] |= (1<<EVB2_PORT_UINS1);

		cfg->cbf[EVB2_PORT_UINS1]  |= (1<<EVB2_PORT_XBEE);
		cfg->cbf[EVB2_PORT_XBEE]   |= (1<<EVB2_PORT_UINS1);
        break;
        
    case EVB2_CB_PRESET_RS422_WIFI:
		// UINS-SER0
        cfg->cbf[EVB2_PORT_UINS0]   |= (1<<EVB2_PORT_USB);
        cfg->cbf[EVB2_PORT_USB]     |= (1<<EVB2_PORT_UINS0);

        cfg->cbf[EVB2_PORT_UINS0]   |= (1<<EVB2_PORT_SP330);
        cfg->cbf[EVB2_PORT_SP330]   |= (1<<EVB2_PORT_UINS0);

		// UINS-SER1
        cfg->cbf[EVB2_PORT_UINS1]   |= (1<<EVB2_PORT_XRADIO);
        cfg->cbf[EVB2_PORT_WIFI]    |= (1<<EVB2_PORT_UINS1);

        cfg->cbf[EVB2_PORT_UINS1]   |= (1<<EVB2_PORT_XRADIO);
        cfg->cbf[EVB2_PORT_XRADIO]  |= (1<<EVB2_PORT_UINS1);
        break;

    case EVB2_CB_PRESET_SPI_RS232:
		// UINS-SER1 (SPI mode)
        cfg->cbf[EVB2_PORT_UINS1]   |= (1<<EVB2_PORT_USB);
        cfg->cbf[EVB2_PORT_USB]     |= (1<<EVB2_PORT_UINS1);

        cfg->cbf[EVB2_PORT_UINS1]   |= (1<<EVB2_PORT_SP330);
        cfg->cbf[EVB2_PORT_SP330]   |= (1<<EVB2_PORT_UINS1);
        break;
        
    case EVB2_CB_PRESET_USB_HUB_RS232:
		 cfg->cbf[EVB2_PORT_USB]    |= (1<<EVB2_PORT_XBEE);
		 cfg->cbf[EVB2_PORT_XBEE]   |= (1<<EVB2_PORT_USB);
		 
    case EVB2_CB_PRESET_USB_HUB_RS422:		
        cfg->cbf[EVB2_PORT_USB]     |= (1<<EVB2_PORT_XRADIO);
        cfg->cbf[EVB2_PORT_XRADIO]  |= (1<<EVB2_PORT_USB);

        cfg->cbf[EVB2_PORT_USB]     |= (1<<EVB2_PORT_SP330);
        cfg->cbf[EVB2_PORT_SP330]   |= (1<<EVB2_PORT_USB);

//         cfg->cbf[EVB2_PORT_USB]     |= (1<<EVB2_PORT_BLE);
//         cfg->cbf[EVB2_PORT_BLE]     |= (1<<EVB2_PORT_USB);

//         cfg->cbf[EVB2_PORT_USB]     |= (1<<EVB2_PORT_GPIO_H8);
//         cfg->cbf[EVB2_PORT_GPIO_H8] |= (1<<EVB2_PORT_USB);
		break;
         
#ifdef CONF_BOARD_CAN1
	case  EVB2_CB_PRESET_CAN:
		cfg->cbf[EVB2_PORT_UINS0]  |= (1<<EVB2_PORT_USB);
		cfg->cbf[EVB2_PORT_UINS0]  |= (1<<EVB2_PORT_SP330);

		cfg->cbf[EVB2_PORT_USB]    |= (1<<EVB2_PORT_UINS0);
        cfg->cbf[EVB2_PORT_SP330]  |= (1<<EVB2_PORT_UINS0);

		cfg->cbf[EVB2_PORT_UINS1]  |= (1<<EVB2_PORT_CAN);
		cfg->cbf[EVB2_PORT_CAN]	   |= (1<<EVB2_PORT_USB);
		break;
#endif
    }        

    // Clear existing
    cfg->cbOptions = 0;

	// USB Hub
	switch(cfg->cbPreset)
	{
	case EVB2_CB_PRESET_ALL_OFF:
	case EVB2_CB_PRESET_USB_HUB_RS232:
	     cfg->cbOptions |= EVB2_CB_OPTIONS_XBEE_ENABLE;
	     break;
		 
	case EVB2_CB_PRESET_USB_HUB_RS422:
		cfg->cbOptions |= EVB2_CB_OPTIONS_TRISTATE_UINS_IO;
		break;
	default:
		cfg->cbOptions &= ~EVB2_CB_OPTIONS_TRISTATE_UINS_IO;
		break;
	}
        
    // SP330 Options
    switch(cfg->cbPreset)
    {
    case EVB2_CB_PRESET_RS422_WIFI:
    case EVB2_CB_PRESET_USB_HUB_RS422:
        cfg->cbOptions |= EVB2_CB_OPTIONS_SP330_RS422;
        break;
    }

    // XBee and WiFi Power Options
    switch(cfg->cbPreset)
    {
    case EVB2_CB_PRESET_RS232_XBEE:
//     case EVB2_CB_PRESET_USB_HUB_RS232:
//     case EVB2_CB_PRESET_USB_HUB_RS422:
        cfg->cbOptions |= EVB2_CB_OPTIONS_XBEE_ENABLE;
        break;

    case EVB2_CB_PRESET_RS422_WIFI:
        cfg->cbOptions |= EVB2_CB_OPTIONS_WIFI_ENABLE;
        break;        
    }

    // Enable SPI example
#ifdef CONF_BOARD_SPI_UINS
    switch(cfg->cbPreset)
    {
    case EVB2_CB_PRESET_SPI_RS232:
        cfg->cbOptions |= EVB2_CB_OPTIONS_SPI_ENABLE;
        break;
    }
#endif

	// Enable CAN
#ifdef CONF_BOARD_CAN1
	switch(cfg->cbPreset)
	{
		case EVB2_CB_PRESET_CAN:
		cfg->cbOptions |= EVB2_CB_OPTIONS_CAN_ENABLE;
		break;
	}
#endif
}


void reset_config_defaults( evb_flash_cfg_t *cfg )
{
	if (cfg == NULL)
		return;

	memset(cfg, 0, sizeof(evb_flash_cfg_t));
	cfg->size						= sizeof(evb_flash_cfg_t);
	cfg->key						= 2;						// increment key to force config to revert to defaults (overwrites customer's settings)

    cfg->cbPreset = EVB2_CB_PRESET_DEFAULT;

    cfg->radioPID = 2;          // 0x0 to 0x9
    cfg->radioNID = 72;         // 0x0 to 0x7FFF 
    cfg->radioPowerLevel = 2;
    
    cfg->server[0].ipAddr = nmi_inet_addr((void*)"69.167.49.43");
    cfg->server[0].port = 7778;
    cfg->server[1].ipAddr = nmi_inet_addr((void*)"192.168.1.144");
    cfg->server[1].port = 2000;
    cfg->encoderTickToWheelRad = .0179999f;	// Husqvarna lawnmower

    com_bridge_select_preset(cfg);
    
	cfg->checksum = flashChecksum32(cfg, sizeof(evb_flash_cfg_t));
}


static void nvr_validate_config_integrity(void)
{
    evb_flash_cfg_t defaults;
    memset(&defaults, 0, sizeof(evb_flash_cfg_t));
    
    reset_config_defaults(&defaults);
    
    if (g_flashCfg->checksum != flashChecksum32(g_flashCfg, sizeof(evb_flash_cfg_t)) || g_flashCfg->key != defaults.key)
    {   // Reset to defaults
        *g_flashCfg = defaults;
        g_nvr_manage_config.flash_write_needed = true;
		g_nvr_manage_config.flash_write_enable = true;
    }   
    
    // Disable cbPresets is necessary
#ifndef CONF_BOARD_SPI_ATWINC_WIFI
    if (g_flashCfg->cbPreset == EVB2_CB_PRESET_RS422_WIFI){ g_flashCfg->cbPreset = EVB2_CB_PRESET_DEFAULT; }
#endif
#ifndef CONF_BOARD_SPI_UINS
    if (g_flashCfg->cbPreset == EVB2_CB_PRESET_SPI_RS232){ g_flashCfg->cbPreset = EVB2_CB_PRESET_DEFAULT; }
#endif

}


void nvr_init(void)
{
    // Initialize flash: 6 wait states for flash writing
    uint32_t rc = flash_init(FLASH_ACCESS_MODE_128, 6);
    configASSERT(rc == FLASH_RC_OK);
    
    g_flashCfg = &(g_userPage.g0.m);
    
    // Update RAM from FLASH
    memcpy(&g_userPage, (void*)BOOTLOADER_FLASH_CONFIG_BASE_ADDRESS, sizeof(g_userPage));

    // Reset to defaults if checksum or keys don't match
    nvr_validate_config_integrity();
    
    error_check_config(g_flashCfg);

    // Disable flash writes.  We require the user to initiate each write with this option.
    g_nvr_manage_config.flash_write_enable = 0;
}


void nvr_slow_maintenance(void)
{
    if(g_nvr_manage_config.flash_write_enable==0)
    {
        return;
    }
    
    if (g_nvr_manage_config.flash_write_needed)
    {
        // Ensure flash config isn't larger than block
        STATIC_ASSERT(sizeof(nvm_config_t) <= BOOTLOADER_FLASH_BLOCK_SIZE);

#if 0

        // copy contents, set migration marker and re-calculate checksums inside critical section
        BEGIN_CRITICAL_SECTION
        
        nvm_config_t* copyOfRam = (nvm_config_t*)MALLOC(BOOTLOADER_FLASH_BLOCK_SIZE);
        
        // Copy config data, zero pad, update checksum
        memcpy(copyOfRam, &g_userPage, sizeof(g_userPage));
        memset((uint8_t*)copyOfRam + sizeof(g_userPage), 0, BOOTLOADER_FLASH_BLOCK_SIZE - sizeof(g_userPage));
        copyOfRam->g0.m.checksum = flashChecksum32(copyOfRam, sizeof(evb_flash_cfg_t));

        // Update userPage config
		memcpy(&g_userPage, copyOfRam, sizeof(g_userPage));
        
        END_CRITICAL_SECTION

        uint32_t address = BOOTLOADER_FLASH_CONFIG_BASE_ADDRESS;
        uint32_t memsize = BOOTLOADER_FLASH_BLOCK_SIZE;
//         uint32_t memsize = IFLASH_PAGE_SIZE;

#if 0

	    if (flash_unlock(address, address + memsize - 1, 0, 0) == FLASH_RC_OK) 
        {
	        if (flash_erase_page(address, IFLASH_ERASE_PAGES_16) == FLASH_RC_OK)
	        {
	            if (flash_write(address, &copyOfRam, memsize, 0) == FLASH_RC_OK)
	            {
                    if(	flash_lock(address, address + memsize - 1, 0, 0) == FLASH_RC_OK)
                    {   // indicate attempted flash write
	                    g_nvr_manage_config.flash_write_count++;
                    }                        
	            }
	        }
	    }
        
#else
        // write to primary location
        if( flash_update_block(address, copyOfRam, BOOTLOADER_FLASH_BLOCK_SIZE, 0) != FLASH_RC_OK)
        {
            // error
            int j=0;
            j++;
        }                    
              
#endif      

		FREE(copyOfRam);
		
#else

        BEGIN_CRITICAL_SECTION

		// calculate checksum
		g_userPage.g0.m.size = sizeof(evb_flash_cfg_t);
		g_userPage.g0.m.checksum = flashChecksum32(&g_userPage.g0.m, sizeof(evb_flash_cfg_t));

// 		flash_update_block(BOOTLOADER_FLASH_CONFIG_BASE_ADDRESS, &g_userPage, sizeof(nvm_config_t), 0);
		flash_update_block(BOOTLOADER_FLASH_CONFIG_BASE_ADDRESS, &g_userPage, BOOTLOADER_FLASH_BLOCK_SIZE, 0);
		
        END_CRITICAL_SECTION

#endif

        g_nvr_manage_config.flash_write_needed = 0;
        // Disable following each flash write.  We require users to re-enable for each write.
        g_nvr_manage_config.flash_write_enable = 0;
    }    
}


// Returns 0 on success
int error_check_config(evb_flash_cfg_t *cfg)
{
    if(cfg == NULLPTR)
    {
        return -1;
    }
    
    int failure = 0;

    if (cfg->radioPID > 9 ||
        cfg->radioNID > 0x7FFF ||
        cfg->radioPowerLevel > 2 )
    {
        failure = 1;
    }
    if(EVB_CFG_BITS_IDX_WIFI(cfg->bits) >= NUM_WIFI_PRESETS)
    {
        EVB_CFG_BITS_SET_IDX_WIFI(cfg->bits,0);
        failure = 1;
    }        
    if(EVB_CFG_BITS_IDX_SERVER(cfg->bits) >= NUM_WIFI_PRESETS)
    {
        EVB_CFG_BITS_SET_IDX_SERVER(cfg->bits,0);
        failure = 1;
    }
    
    return failure;
}

