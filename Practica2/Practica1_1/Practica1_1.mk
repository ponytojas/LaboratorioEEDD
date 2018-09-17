##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Practica1_1
ConfigurationName      :=Debug
WorkspacePath          :="C:/Users/marks/Documents/Universidad/Programacion/Estructuras de datos/Practica2"
ProjectPath            :="C:/Users/marks/Documents/Universidad/Programacion/Estructuras de datos/Practica2/Practica1_1"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=marks
Date                   :=09/12/2017
CodeLitePath           :="C:/Program Files/CodeLite"
LinkerName             :=C:/TDM-GCC/bin/g++.exe
SharedObjectLinkerName :=C:/TDM-GCC/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="Practica1_1.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/TDM-GCC/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/TDM-GCC/bin/ar.exe rcu
CXX      := C:/TDM-GCC/bin/g++.exe
CC       := C:/TDM-GCC/bin/gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/TDM-GCC/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/MiLista.cpp$(ObjectSuffix) $(IntermediateDirectory)/MiCola.cpp$(ObjectSuffix) $(IntermediateDirectory)/Cliente.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/MiNodoCola.cpp$(ObjectSuffix) $(IntermediateDirectory)/Gestor.cpp$(ObjectSuffix) $(IntermediateDirectory)/Arbol.cpp$(ObjectSuffix) $(IntermediateDirectory)/MiNodoLista.cpp$(ObjectSuffix) $(IntermediateDirectory)/NodoArbol.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/MiLista.cpp$(ObjectSuffix): MiLista.cpp $(IntermediateDirectory)/MiLista.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/marks/Documents/Universidad/Programacion/Estructuras de datos/Practica2/Practica1_1/MiLista.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/MiLista.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/MiLista.cpp$(DependSuffix): MiLista.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/MiLista.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/MiLista.cpp$(DependSuffix) -MM MiLista.cpp

$(IntermediateDirectory)/MiLista.cpp$(PreprocessSuffix): MiLista.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/MiLista.cpp$(PreprocessSuffix) MiLista.cpp

$(IntermediateDirectory)/MiCola.cpp$(ObjectSuffix): MiCola.cpp $(IntermediateDirectory)/MiCola.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/marks/Documents/Universidad/Programacion/Estructuras de datos/Practica2/Practica1_1/MiCola.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/MiCola.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/MiCola.cpp$(DependSuffix): MiCola.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/MiCola.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/MiCola.cpp$(DependSuffix) -MM MiCola.cpp

$(IntermediateDirectory)/MiCola.cpp$(PreprocessSuffix): MiCola.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/MiCola.cpp$(PreprocessSuffix) MiCola.cpp

$(IntermediateDirectory)/Cliente.cpp$(ObjectSuffix): Cliente.cpp $(IntermediateDirectory)/Cliente.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/marks/Documents/Universidad/Programacion/Estructuras de datos/Practica2/Practica1_1/Cliente.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Cliente.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Cliente.cpp$(DependSuffix): Cliente.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Cliente.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Cliente.cpp$(DependSuffix) -MM Cliente.cpp

$(IntermediateDirectory)/Cliente.cpp$(PreprocessSuffix): Cliente.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Cliente.cpp$(PreprocessSuffix) Cliente.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/marks/Documents/Universidad/Programacion/Estructuras de datos/Practica2/Practica1_1/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/MiNodoCola.cpp$(ObjectSuffix): MiNodoCola.cpp $(IntermediateDirectory)/MiNodoCola.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/marks/Documents/Universidad/Programacion/Estructuras de datos/Practica2/Practica1_1/MiNodoCola.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/MiNodoCola.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/MiNodoCola.cpp$(DependSuffix): MiNodoCola.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/MiNodoCola.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/MiNodoCola.cpp$(DependSuffix) -MM MiNodoCola.cpp

$(IntermediateDirectory)/MiNodoCola.cpp$(PreprocessSuffix): MiNodoCola.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/MiNodoCola.cpp$(PreprocessSuffix) MiNodoCola.cpp

$(IntermediateDirectory)/Gestor.cpp$(ObjectSuffix): Gestor.cpp $(IntermediateDirectory)/Gestor.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/marks/Documents/Universidad/Programacion/Estructuras de datos/Practica2/Practica1_1/Gestor.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Gestor.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Gestor.cpp$(DependSuffix): Gestor.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Gestor.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Gestor.cpp$(DependSuffix) -MM Gestor.cpp

$(IntermediateDirectory)/Gestor.cpp$(PreprocessSuffix): Gestor.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Gestor.cpp$(PreprocessSuffix) Gestor.cpp

$(IntermediateDirectory)/Arbol.cpp$(ObjectSuffix): Arbol.cpp $(IntermediateDirectory)/Arbol.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/marks/Documents/Universidad/Programacion/Estructuras de datos/Practica2/Practica1_1/Arbol.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Arbol.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Arbol.cpp$(DependSuffix): Arbol.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Arbol.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Arbol.cpp$(DependSuffix) -MM Arbol.cpp

$(IntermediateDirectory)/Arbol.cpp$(PreprocessSuffix): Arbol.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Arbol.cpp$(PreprocessSuffix) Arbol.cpp

$(IntermediateDirectory)/MiNodoLista.cpp$(ObjectSuffix): MiNodoLista.cpp $(IntermediateDirectory)/MiNodoLista.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/marks/Documents/Universidad/Programacion/Estructuras de datos/Practica2/Practica1_1/MiNodoLista.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/MiNodoLista.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/MiNodoLista.cpp$(DependSuffix): MiNodoLista.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/MiNodoLista.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/MiNodoLista.cpp$(DependSuffix) -MM MiNodoLista.cpp

$(IntermediateDirectory)/MiNodoLista.cpp$(PreprocessSuffix): MiNodoLista.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/MiNodoLista.cpp$(PreprocessSuffix) MiNodoLista.cpp

$(IntermediateDirectory)/NodoArbol.cpp$(ObjectSuffix): NodoArbol.cpp $(IntermediateDirectory)/NodoArbol.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/marks/Documents/Universidad/Programacion/Estructuras de datos/Practica2/Practica1_1/NodoArbol.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/NodoArbol.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/NodoArbol.cpp$(DependSuffix): NodoArbol.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/NodoArbol.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/NodoArbol.cpp$(DependSuffix) -MM NodoArbol.cpp

$(IntermediateDirectory)/NodoArbol.cpp$(PreprocessSuffix): NodoArbol.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/NodoArbol.cpp$(PreprocessSuffix) NodoArbol.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


