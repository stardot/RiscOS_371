# System Makefile

CD      = dir
MKDIR   = cdir
SYSDIR  = <build$dir>.BuildSys
SRCDIR  = <src$dir>
INSTDIR = <install$dir>
RESDIR  = <resource$dir>.Resources
MAKE    = @amu ${MFLAGS} RESDIR=${RESDIR}

BUILD = \
 Help \
 Percussion \
 StringLib \
 WaveSynth \
 FilterManager \
 WindowUtils \
 TaskWindow \
 SystemDevices \
 SuperSample \
 Squash \
 SpriteUtils \
 SpriteExtend \
 SoundScheduler \
 SoundChannels \
 SoundDMA \
 ShellCLI \
 SerialMouse \
 SerialDeviceSupport \
 SerialDeviceDriver \
 ScreenBlanker \
 RTCAdjust \
 ROMFonts \
 ResourceFiler \
 RAMFSFiler \
 PipeFS \
 Pinboard \
 InternationalKeyboard \
 ParallelDeviceDriver \
 Obey \
 NetUtils \
 NetStatus \
 NetPrint \
 NetFiler \
 NetFS \
 DisplayManager \
 Joystick \
 IRQUtils2 \
 International \
 IIC \
 Hourglass \
 GameModes \
 Free \
 FPEmulator \
 FontManager \
 FSLock \
 FilerSWIs \
 Filer \
 RAMFS \
 ADFS \
 FileCore \
 Econet \
 BBCEconet \
 DrawMod \
 DragAnObj \
 DragASprite \
 DMAManager \
 DeviceFS \
 Debugger \
 ColourTrans \
 BufferManager \
 BASIC \
 ARM \
 ADFSFiler \
 TaskManager \
 Desktop \
 WindowManager \
 UK \
 TerritoryManager \
 MessageTrans \
 Messages \
 ResourceFS \
 FileSwitch \
 Podule \
 Kernel

EXPORT =

RESOURCE =

#
# Build rules:
#
clean: ${BUILD}
        @echo clean: Complete

export: ${BUILD} ${EXPORT} dirs
        @echo export: Complete

resources: ${BUILD} ${RESOURCE} dirs
        @echo resources: Complete

# rom build
rom: ${BUILD} dirs
        @echo rom: Complete

install_rom: ROMImage
        @echo install_rom: Complete

# disc build
all: ${BUILD}
        @echo all: Complete

install: ${BUILD}
        @echo install: Complete

dirs:
        ${MKDIR} <install$dir>
        ${MKDIR} <build$dir>.Export
        ${MKDIR} <build$dir>.Export.Hdr
        ${MKDIR} <build$dir>.Export.Hdr.Global
        ${MKDIR} <build$dir>.Export.Hdr.Interface
        ${MKDIR} <build$dir>.Export.Lib
        ${MKDIR} <resource$dir>
        ${MKDIR} <resource$dir>.Resources
        ${MKDIR} <resource$dir>.Resources2
        ${MKDIR} <resource$dir>.Apps

#
# Component rules:
#

Kernel:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.Arc
        @${CD} ${SRCDIR}.OS_Core.Kernel
        ${MAKE} INSTDIR=${INSTDIR}.ROM.Arc

ROMImage: ${BUILD}
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.Images
        @${CD} ${SYSDIR}.Arc2.ROMImage
        ${MAKE} INSTDIR=${INSTDIR}.Images

Podule:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.HWSupport.Podule
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

FileSwitch:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.FileSys.FileSwitch
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

ResourceFS:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.FileSys.ResourceFS.ResourceFS
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

Messages:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.Arc2
        @${CD} ${SRCDIR}.OS_Core.Internat.Messages
        ${MAKE} INSTDIR=${INSTDIR}.ROM.Arc2

MessageTrans:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Internat.MsgTrans
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

TerritoryManager:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Internat.Territory.Manager
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

UK:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Internat.Territory.UK
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

WindowManager:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Desktop.Wimp
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

Desktop:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Desktop.Desktop
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

TaskManager:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Desktop.Switcher
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

ADFSFiler:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.FileSys.ADFS.ADFSFiler
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

ARM:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.Arc
        @${CD} ${SRCDIR}.OS_Core.HWSupport.ARM
        ${MAKE} INSTDIR=${INSTDIR}.ROM.Arc

BASIC:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.Programmer
        @${CD} ${SRCDIR}.Programmer.BASIC
        ${MAKE} INSTDIR=${INSTDIR}.ROM.Programmer

BufferManager:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.HWSupport.Buffers
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

ColourTrans:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Video.Render.Colours
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

Debugger:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.Arc
        @${CD} ${SRCDIR}.Programmer.Debugger
        ${MAKE} INSTDIR=${INSTDIR}.ROM.Arc

DeviceFS:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.HWSupport.DeviceFS
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

DMAManager:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.Arc
        @${CD} ${SRCDIR}.OS_Core.HWSupport.DMA
        ${MAKE} INSTDIR=${INSTDIR}.ROM.Arc

DragASprite:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Desktop.DragASprit
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

DragAnObj:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Desktop.DragAnObj
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

DrawMod:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Video.Render.Draw
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

BBCEconet:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.Networking
        @${CD} ${SRCDIR}.Networking.BBCEconet
        ${MAKE} INSTDIR=${INSTDIR}.ROM.Networking

Econet:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.Networking
        @${CD} ${SRCDIR}.Networking.Econet
        ${MAKE} INSTDIR=${INSTDIR}.ROM.Networking

FileCore:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.FileSys.FileCore
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

ADFS:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.Arc
        @${CD} ${SRCDIR}.OS_Core.FileSys.ADFS.ADFS
        ${MAKE} INSTDIR=${INSTDIR}.ROM.Arc

RAMFS:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.FileSys.RAMFS.RAMFS
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

Filer:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Desktop.Filer
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

FilerSWIs:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Desktop.FilerSWIs
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

FSLock:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.FSLock
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

FontManager:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Video.Render.Fonts.Manager
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

FPEmulator:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.Arc
        @${CD} ${SRCDIR}.OS_Core.HWSupport.FPASC.riscos
        ${MAKE} INSTDIR=${INSTDIR}.ROM.Arc

Free:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Desktop.Free
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

GameModes:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.GameModes2
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

Hourglass:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Video.Render.Hourglass
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

IIC:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.HWSupport.IIC
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

International:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Internat.Inter
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

IRQUtils2:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.IRQUtils2
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

Joystick:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.HWSupport.Joystick
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

DisplayManager:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Video.UserI.Display
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

NetFS:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.FileSys.NetFS.NetFS
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

NetFiler:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.FileSys.NetFS.NetFiler
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

NetPrint:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.FileSys.NetPrint
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

NetStatus:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.Networking
        @${CD} ${SRCDIR}.Networking.NetStatus
        ${MAKE} INSTDIR=${INSTDIR}.ROM.Networking

NetUtils:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.Networking
        @${CD} ${SRCDIR}.Networking.NetUtils2
        ${MAKE} INSTDIR=${INSTDIR}.ROM.Networking

Obey:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.Programmer
        @${CD} ${SRCDIR}.Programmer.Obey
        ${MAKE} INSTDIR=${INSTDIR}.ROM.Programmer

ParallelDeviceDriver:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.HWSupport.Parallel
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

InternationalKeyboard:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Internat.IntKey
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

Pinboard:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Desktop.Pinboard
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

PipeFS:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.FileSys.PipeFS
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

RAMFSFiler:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.FileSys.RAMFS.RAMFSFiler
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

ResourceFiler:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.FileSys.ResourceFS.ResFiler
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

ROMFonts:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Video.Render.Fonts.ROMFonts
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

RTCAdjust:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.Arc
        @${CD} ${SRCDIR}.OS_Core.HWSupport.RTCAdjust
        ${MAKE} INSTDIR=${INSTDIR}.ROM.Arc

ScreenBlanker:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Video.Render.ScrBlank
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

SerialDeviceDriver:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.HWSupport.Serial
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

SerialDeviceSupport:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.HWSupport.SerialSpt
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

SerialMouse:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.HWSupport.SerMouse
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

ShellCLI:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Desktop.ShellCLI
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

SoundDMA:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.Arc
        @${CD} ${SRCDIR}.OS_Core.HWSupport.Sound.Sound0
        ${MAKE} INSTDIR=${INSTDIR}.ROM.Arc

SoundChannels:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.HWSupport.Sound.Sound1
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

SoundScheduler:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.HWSupport.Sound.Sound2
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

SpriteExtend:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Video.Render.SprExtend
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

SpriteUtils:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Video.Render.SpriteUtil
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

Squash:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Squash
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

SuperSample:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Video.Render.Super
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

SystemDevices:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.HWSupport.SystemDevs
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

TaskWindow:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Desktop.TaskWindow
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

WindowUtils:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Desktop.WimpUtils
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

FilterManager:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.Desktop.Filter
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

WaveSynth:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.HWSupport.Sound.Voices.WaveSynth
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

StringLib:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.HWSupport.Sound.Voices.StringLib
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

Percussion:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.OS_Core
        @${CD} ${SRCDIR}.OS_Core.HWSupport.Sound.Voices.Percussion
        ${MAKE} INSTDIR=${INSTDIR}.ROM.OS_Core

Help:
        @echo $@ ...
        @${MKDIR} ${INSTDIR}.ROM
        @${MKDIR} ${INSTDIR}.ROM.Apps
        @${CD} ${SRCDIR}.Apps.Help
        ${MAKE} INSTDIR=${INSTDIR}.ROM.Apps

