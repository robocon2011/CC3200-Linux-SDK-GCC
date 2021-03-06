#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = gnu.targets.arm.M4{1,0,4.8,3
#
ifeq (,$(MK_NOGENDEPS))
-include package/cfg/ti_rtos_config_pm4g.om4g.dep
package/cfg/ti_rtos_config_pm4g.om4g.dep: ;
endif

package/cfg/ti_rtos_config_pm4g.om4g: | .interfaces
package/cfg/ti_rtos_config_pm4g.om4g: package/cfg/ti_rtos_config_pm4g.c package/cfg/ti_rtos_config_pm4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c  -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections -mcpu=cortex-m4 -mthumb -msoft-float -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__   -Dxdc_cfg__xheader__='"configPkg/package/cfg/ti_rtos_config_pm4g.h"'  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_4_8_3  -O2  -IC:/ti/tirtos_simplelink_2_00_02_30_eng/products/bios_6_40_02_26_eng/packages/gnu/targets/arm//libs/install-native/arm-none-eabi/include   $(XDCINCS)  -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/cfg/ti_rtos_config_pm4g.om4g: export LD_LIBRARY_PATH=

package/cfg/ti_rtos_config_pm4g.sm4g: | .interfaces
package/cfg/ti_rtos_config_pm4g.sm4g: package/cfg/ti_rtos_config_pm4g.c package/cfg/ti_rtos_config_pm4g.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clm4g -S $< ...
	$(gnu.targets.arm.M4.rootDir)/bin/arm-none-eabi-gcc -c -MD -MF $@.dep -x c -S -Wunused -Wunknown-pragmas -ffunction-sections -fdata-sections -mcpu=cortex-m4 -mthumb -msoft-float -mabi=aapcs -g -Dfar= -D__DYNAMIC_REENT__   -Dxdc_cfg__xheader__='"configPkg/package/cfg/ti_rtos_config_pm4g.h"'  -Dxdc_target_name__=M4 -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_4_8_3  -O2   $(XDCINCS)  -o $@ $<
	-@$(FIXDEP) $@.dep $@.dep
	
package/cfg/ti_rtos_config_pm4g.sm4g: export LD_LIBRARY_PATH=

clean,m4g ::
	-$(RM) package/cfg/ti_rtos_config_pm4g.om4g
	-$(RM) package/cfg/ti_rtos_config_pm4g.sm4g

ti_rtos_config.pm4g: package/cfg/ti_rtos_config_pm4g.om4g package/cfg/ti_rtos_config_pm4g.mak

clean::
	-$(RM) package/cfg/ti_rtos_config_pm4g.mak
