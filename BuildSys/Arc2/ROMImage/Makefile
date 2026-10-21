# Makefile for ROMImage

CD      = dir
LD      = link
MKDIR   = cdir
MKIMAGE = BigSplit1

SRCDIR  = <src$dir>
INSTDIR = <install$dir>
CLIBDIR = <install$dir>.
ABSSYM  = RISC_OSLib:o.AbsSym

MODULES = \
 Help \
 Percussion \
 StringLib \
 WaveSynth \
 FilterMgr \
 WimpUtils2 \
 TaskWindow \
 SystemDevs \
 Super \
 Squash \
 SpriteUtil \
 SprExtend \
 Sound2 \
 Sound1 \
 Sound0 \
 ShellCLI \
 SerMouse \
 SerialSpt \
 Serial \
 ScrBlank \
 RTCAdjust \
 ROMFonts \
 ResFiler \
 RAMFSFiler \
 PipeFS \
 Pinboard \
 IntKey \
 Parallel \
 Obey \
 NetUtils2 \
 NetStatus \
 NetPrint \
 NetFiler \
 NetFS \
 Display \
 Joystick \
 IRQUtils2 \
 Inter \
 IIC \
 Hourglass \
 GameModes2 \
 Free \
 FPEmulator \
 Fonts \
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
 DragASprit \
 DMA \
 DeviceFS \
 Debugger \
 Colours \
 Buffers \
 BASICTrans \
 BASIC105 \
 ARM \
 ADFSFiler \
 Switcher \
 Desktop \
 Wimp \
 UK \
 TerrMgr \
 MsgTrans \
 Messages \
 ResourceFS \
 FileSwitch \
 Podule \
 Kernel

#
# Build rules:
#
install_rom: ${MODULES} dirs
        ${MKIMAGE} { < ForBigSplt }

dirs:
        ${MKDIR} ${CLIBDIR}.linked
        ${MKDIR} ${CLIBDIR}.map

Kernel:
        @seteval PositionInRom &03800000
        @setolength File$Length ${INSTDIR}.ROM.Arc.Kernel
        @echo Kernel                     <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) 

Podule:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.Podule
        @echo Podule                     <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

FileSwitch:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.FileSwitch
        @echo FileSwitch                 <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

ResourceFS:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.ResourceFS
        @echo ResourceFS                 <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Messages:
        @setolength File$Length ${INSTDIR}.ROM.Arc2.Messages
        @echo Messages                   <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

MsgTrans:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.MsgTrans
        @echo MsgTrans                   <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

TerrMgr:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.TerrMgr
        @echo TerrMgr                    <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

UK:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.UK
        @echo UK                         <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Wimp:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.Wimp
        @echo Wimp                       <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Desktop:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.Desktop
        @echo Desktop                    <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Switcher:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.Switcher
        @echo Switcher                   <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

ADFSFiler:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.ADFSFiler
        @echo ADFSFiler                  <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

ARM:
        @setolength File$Length ${INSTDIR}.ROM.Arc.ARM
        @echo ARM                        <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

BASIC105:
        @setolength File$Length ${INSTDIR}.ROM.Programmer.BASIC105
        @echo BASIC105                   <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

BASICTrans:
        @setolength File$Length ${INSTDIR}.ROM.Programmer.BASICTrans
        @echo BASICTrans                 <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Buffers:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.Buffers
        @echo Buffers                    <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Colours:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.Colours
        @echo Colours                    <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Debugger:
        @setolength File$Length ${INSTDIR}.ROM.Arc.Debugger
        @echo Debugger                   <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

DeviceFS:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.DeviceFS
        @echo DeviceFS                   <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

DMA:
        @setolength File$Length ${INSTDIR}.ROM.Arc.DMA
        @echo DMA                        <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

DragASprit:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.DragASprit
        @echo DragASprit                 <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

DragAnObj:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.DragAnObj
        @echo DragAnObj                  <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

DrawMod:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.DrawMod
        @echo DrawMod                    <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

BBCEconet:
        @setolength File$Length ${INSTDIR}.ROM.Networking.BBCEconet
        @echo BBCEconet                  <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Econet:
        @setolength File$Length ${INSTDIR}.ROM.Networking.Econet
        @echo Econet                     <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

FileCore:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.FileCore
        @echo FileCore                   <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

ADFS:
        @setolength File$Length ${INSTDIR}.ROM.Arc.ADFS
        @echo ADFS                       <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

RAMFS:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.RAMFS
        @echo RAMFS                      <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Filer:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.Filer
        @echo Filer                      <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

FilerSWIs:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.FilerSWIs
        @echo FilerSWIs                  <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

FSLock:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.FSLock
        @echo FSLock                     <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Fonts:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.Fonts
        @echo Fonts                      <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

FPEmulator:
        @setolength File$Length ${INSTDIR}.ROM.Arc.FPEmulator
        @echo FPEmulator                 <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Free:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.Free
        @echo Free                       <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

GameModes2:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.GameModes2
        @echo GameModes2                 <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Hourglass:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.Hourglass
        @echo Hourglass                  <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

IIC:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.IIC
        @echo IIC                        <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Inter:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.Inter
        @echo Inter                      <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

IRQUtils2:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.IRQUtils2
        @echo IRQUtils2                  <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Joystick:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.Joystick
        @echo Joystick                   <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Display:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.Display
        @echo Display                    <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

NetFS:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.NetFS
        @echo NetFS                      <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

NetFiler:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.NetFiler
        @echo NetFiler                   <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

NetPrint:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.NetPrint
        @echo NetPrint                   <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

NetStatus:
        @setolength File$Length ${INSTDIR}.ROM.Networking.NetStatus
        @echo NetStatus                  <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

NetUtils2:
        @setolength File$Length ${INSTDIR}.ROM.Networking.NetUtils2
        @echo NetUtils2                  <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Obey:
        @setolength File$Length ${INSTDIR}.ROM.Programmer.Obey
        @echo Obey                       <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Parallel:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.Parallel
        @echo Parallel                   <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

IntKey:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.IntKey
        @echo IntKey                     <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Pinboard:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.Pinboard
        @echo Pinboard                   <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

PipeFS:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.PipeFS
        @echo PipeFS                     <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

RAMFSFiler:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.RAMFSFiler
        @echo RAMFSFiler                 <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

ResFiler:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.ResFiler
        @echo ResFiler                   <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

ROMFonts:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.ROMFonts
        @echo ROMFonts                   <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

RTCAdjust:
        @setolength File$Length ${INSTDIR}.ROM.Arc.RTCAdjust
        @echo RTCAdjust                  <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

ScrBlank:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.ScrBlank
        @echo ScrBlank                   <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Serial:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.Serial
        @echo Serial                     <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

SerialSpt:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.SerialSpt
        @echo SerialSpt                  <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

SerMouse:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.SerMouse
        @echo SerMouse                   <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

ShellCLI:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.ShellCLI
        @echo ShellCLI                   <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Sound0:
        @setolength File$Length ${INSTDIR}.ROM.Arc.Sound0
        @echo Sound0                     <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Sound1:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.Sound1
        @echo Sound1                     <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Sound2:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.Sound2
        @echo Sound2                     <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

SprExtend:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.SprExtend
        @echo SprExtend                  <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

SpriteUtil:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.SpriteUtil
        @echo SpriteUtil                 <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Squash:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.Squash
        @echo Squash                     <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Super:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.Super
        @echo Super                      <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

SystemDevs:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.SystemDevs
        @echo SystemDevs                 <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

TaskWindow:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.TaskWindow
        @echo TaskWindow                 <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

WimpUtils2:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.WimpUtils2
        @echo WimpUtils2                 <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

FilterMgr:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.FilterMgr
        @echo FilterMgr                  <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

WaveSynth:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.WaveSynth
        @echo WaveSynth                  <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

StringLib:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.StringLib
        @echo StringLib                  <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Percussion:
        @setolength File$Length ${INSTDIR}.ROM.OS_Core.Percussion
        @echo Percussion                 <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

Help:
        @setolength File$Length ${INSTDIR}.ROM.Apps.Help
        @echo Help                       <PositionInRom>  <File$Length>
        @seteval PositionInRom PositionInRom + ((File$Length + 3) AND NOT 3) + 4

