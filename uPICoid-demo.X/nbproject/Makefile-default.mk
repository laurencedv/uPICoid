#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/uPICoid-demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/uPICoid-demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/535305952/pic32_interrupt.o ${OBJECTDIR}/_ext/535305952/pic32_output_compare.o ${OBJECTDIR}/_ext/535305952/pic32_clock.o ${OBJECTDIR}/_ext/535305952/pic32_pps.o ${OBJECTDIR}/_ext/535305952/pic32_timer.o ${OBJECTDIR}/_ext/357115186/pic32_realtime.o ${OBJECTDIR}/hardware.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/535305952/pic32_interrupt.o.d ${OBJECTDIR}/_ext/535305952/pic32_output_compare.o.d ${OBJECTDIR}/_ext/535305952/pic32_clock.o.d ${OBJECTDIR}/_ext/535305952/pic32_pps.o.d ${OBJECTDIR}/_ext/535305952/pic32_timer.o.d ${OBJECTDIR}/_ext/357115186/pic32_realtime.o.d ${OBJECTDIR}/hardware.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/535305952/pic32_interrupt.o ${OBJECTDIR}/_ext/535305952/pic32_output_compare.o ${OBJECTDIR}/_ext/535305952/pic32_clock.o ${OBJECTDIR}/_ext/535305952/pic32_pps.o ${OBJECTDIR}/_ext/535305952/pic32_timer.o ${OBJECTDIR}/_ext/357115186/pic32_realtime.o ${OBJECTDIR}/hardware.o ${OBJECTDIR}/main.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE} ${MAKE_OPTIONS} -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/uPICoid-demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX250F128B
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/535305952/pic32_interrupt.o: ../../../../Dev/PIClib/lib/peripheral/pic32_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/535305952 
	@${RM} ${OBJECTDIR}/_ext/535305952/pic32_interrupt.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/535305952/pic32_interrupt.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"." -MMD -MF "${OBJECTDIR}/_ext/535305952/pic32_interrupt.o.d" -o ${OBJECTDIR}/_ext/535305952/pic32_interrupt.o ../../../../Dev/PIClib/lib/peripheral/pic32_interrupt.c  
	
${OBJECTDIR}/_ext/535305952/pic32_output_compare.o: ../../../../Dev/PIClib/lib/peripheral/pic32_output_compare.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/535305952 
	@${RM} ${OBJECTDIR}/_ext/535305952/pic32_output_compare.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/535305952/pic32_output_compare.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"." -MMD -MF "${OBJECTDIR}/_ext/535305952/pic32_output_compare.o.d" -o ${OBJECTDIR}/_ext/535305952/pic32_output_compare.o ../../../../Dev/PIClib/lib/peripheral/pic32_output_compare.c  
	
${OBJECTDIR}/_ext/535305952/pic32_clock.o: ../../../../Dev/PIClib/lib/peripheral/pic32_clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/535305952 
	@${RM} ${OBJECTDIR}/_ext/535305952/pic32_clock.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/535305952/pic32_clock.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"." -MMD -MF "${OBJECTDIR}/_ext/535305952/pic32_clock.o.d" -o ${OBJECTDIR}/_ext/535305952/pic32_clock.o ../../../../Dev/PIClib/lib/peripheral/pic32_clock.c  
	
${OBJECTDIR}/_ext/535305952/pic32_pps.o: ../../../../Dev/PIClib/lib/peripheral/pic32_pps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/535305952 
	@${RM} ${OBJECTDIR}/_ext/535305952/pic32_pps.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/535305952/pic32_pps.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"." -MMD -MF "${OBJECTDIR}/_ext/535305952/pic32_pps.o.d" -o ${OBJECTDIR}/_ext/535305952/pic32_pps.o ../../../../Dev/PIClib/lib/peripheral/pic32_pps.c  
	
${OBJECTDIR}/_ext/535305952/pic32_timer.o: ../../../../Dev/PIClib/lib/peripheral/pic32_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/535305952 
	@${RM} ${OBJECTDIR}/_ext/535305952/pic32_timer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/535305952/pic32_timer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"." -MMD -MF "${OBJECTDIR}/_ext/535305952/pic32_timer.o.d" -o ${OBJECTDIR}/_ext/535305952/pic32_timer.o ../../../../Dev/PIClib/lib/peripheral/pic32_timer.c  
	
${OBJECTDIR}/_ext/357115186/pic32_realtime.o: ../../../../Dev/PIClib/lib/soft/pic32_realtime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/357115186 
	@${RM} ${OBJECTDIR}/_ext/357115186/pic32_realtime.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/357115186/pic32_realtime.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"." -MMD -MF "${OBJECTDIR}/_ext/357115186/pic32_realtime.o.d" -o ${OBJECTDIR}/_ext/357115186/pic32_realtime.o ../../../../Dev/PIClib/lib/soft/pic32_realtime.c  
	
${OBJECTDIR}/hardware.o: hardware.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/hardware.o.d 
	@${FIXDEPS} "${OBJECTDIR}/hardware.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"." -MMD -MF "${OBJECTDIR}/hardware.o.d" -o ${OBJECTDIR}/hardware.o hardware.c  
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"." -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c  
	
else
${OBJECTDIR}/_ext/535305952/pic32_interrupt.o: ../../../../Dev/PIClib/lib/peripheral/pic32_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/535305952 
	@${RM} ${OBJECTDIR}/_ext/535305952/pic32_interrupt.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/535305952/pic32_interrupt.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"." -MMD -MF "${OBJECTDIR}/_ext/535305952/pic32_interrupt.o.d" -o ${OBJECTDIR}/_ext/535305952/pic32_interrupt.o ../../../../Dev/PIClib/lib/peripheral/pic32_interrupt.c  
	
${OBJECTDIR}/_ext/535305952/pic32_output_compare.o: ../../../../Dev/PIClib/lib/peripheral/pic32_output_compare.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/535305952 
	@${RM} ${OBJECTDIR}/_ext/535305952/pic32_output_compare.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/535305952/pic32_output_compare.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"." -MMD -MF "${OBJECTDIR}/_ext/535305952/pic32_output_compare.o.d" -o ${OBJECTDIR}/_ext/535305952/pic32_output_compare.o ../../../../Dev/PIClib/lib/peripheral/pic32_output_compare.c  
	
${OBJECTDIR}/_ext/535305952/pic32_clock.o: ../../../../Dev/PIClib/lib/peripheral/pic32_clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/535305952 
	@${RM} ${OBJECTDIR}/_ext/535305952/pic32_clock.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/535305952/pic32_clock.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"." -MMD -MF "${OBJECTDIR}/_ext/535305952/pic32_clock.o.d" -o ${OBJECTDIR}/_ext/535305952/pic32_clock.o ../../../../Dev/PIClib/lib/peripheral/pic32_clock.c  
	
${OBJECTDIR}/_ext/535305952/pic32_pps.o: ../../../../Dev/PIClib/lib/peripheral/pic32_pps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/535305952 
	@${RM} ${OBJECTDIR}/_ext/535305952/pic32_pps.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/535305952/pic32_pps.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"." -MMD -MF "${OBJECTDIR}/_ext/535305952/pic32_pps.o.d" -o ${OBJECTDIR}/_ext/535305952/pic32_pps.o ../../../../Dev/PIClib/lib/peripheral/pic32_pps.c  
	
${OBJECTDIR}/_ext/535305952/pic32_timer.o: ../../../../Dev/PIClib/lib/peripheral/pic32_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/535305952 
	@${RM} ${OBJECTDIR}/_ext/535305952/pic32_timer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/535305952/pic32_timer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"." -MMD -MF "${OBJECTDIR}/_ext/535305952/pic32_timer.o.d" -o ${OBJECTDIR}/_ext/535305952/pic32_timer.o ../../../../Dev/PIClib/lib/peripheral/pic32_timer.c  
	
${OBJECTDIR}/_ext/357115186/pic32_realtime.o: ../../../../Dev/PIClib/lib/soft/pic32_realtime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/357115186 
	@${RM} ${OBJECTDIR}/_ext/357115186/pic32_realtime.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/357115186/pic32_realtime.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"." -MMD -MF "${OBJECTDIR}/_ext/357115186/pic32_realtime.o.d" -o ${OBJECTDIR}/_ext/357115186/pic32_realtime.o ../../../../Dev/PIClib/lib/soft/pic32_realtime.c  
	
${OBJECTDIR}/hardware.o: hardware.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/hardware.o.d 
	@${FIXDEPS} "${OBJECTDIR}/hardware.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"." -MMD -MF "${OBJECTDIR}/hardware.o.d" -o ${OBJECTDIR}/hardware.o hardware.c  
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"." -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/uPICoid-demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -o dist/${CND_CONF}/${IMAGE_TYPE}/uPICoid-demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}       -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 
else
dist/${CND_CONF}/${IMAGE_TYPE}/uPICoid-demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -o dist/${CND_CONF}/${IMAGE_TYPE}/uPICoid-demo.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}       -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/uPICoid-demo.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
