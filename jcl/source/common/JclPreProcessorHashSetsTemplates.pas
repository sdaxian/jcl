{**************************************************************************************************}
{                                                                                                  }
{ Project JEDI Code Library (JCL)                                                                  }
{                                                                                                  }
{ The contents of this file are subject to the Mozilla Public License Version 1.1 (the "License"); }
{ you may not use this file except in compliance with the License. You may obtain a copy of the    }
{ License at http://www.mozilla.org/MPL/                                                           }
{                                                                                                  }
{ Software distributed under the License is distributed on an "AS IS" basis, WITHOUT WARRANTY OF   }
{ ANY KIND, either express or implied. See the License for the specific language governing rights  }
{ and limitations under the License.                                                               }
{                                                                                                  }
{ The Original Code is JclArraySetsTemplates.pas.                                                  }
{                                                                                                  }
{ The Initial Developer of the Original Code is Florent Ouchet                                     }
{         <outchy att users dott sourceforge dott net>                                             }
{ Portions created by Florent Ouchet are Copyright (C) of Florent Ouchet. All rights reserved.     }
{                                                                                                  }
{ Contributors:                                                                                    }
{                                                                                                  }
{**************************************************************************************************}
{                                                                                                  }
{ Last modified: $Date::                                                                         $ }
{ Revision:      $Rev::                                                                          $ }
{ Author:        $Author::                                                                       $ }
{                                                                                                  }
{**************************************************************************************************}

unit JclPreProcessorHashSetsTemplates;

interface

{$I jcl.inc}

uses
  {$IFDEF UNITVERSIONING}
  JclUnitVersioning,
  {$ENDIF UNITVERSIONING}
  JclPreProcessorContainerTypes,
  JclPreProcessorContainerTemplates,
  JclPreProcessorContainer1DTemplates;

type
  (* JCLHASHSETTYPESINT(BUCKETTYPENAME, TYPENAME) *)
  TJclHashSetTypeIntParams = class(TJclContainerInterfaceParams)
  public
    function AliasAttributeIDs: TAllTypeAttributeIDs; override;
  published
    property BucketTypeName: string index taHashSetBucketTypeName read GetTypeAttribute write SetTypeAttribute stored IsTypeAttributeStored;
    property DynArrayTypeName: string index taDynArrayTypeName read GetTypeAttribute write SetTypeAttribute stored False;
  end;

  (* JCLHASHSETINT(SELFCLASSNAME, ANCESTORCLASSNAME, BUCKETTYPENAME,
                   COLLECTIONINTERFACENAME, SETINTERFACENAME, ITRINTERFACENAME,
                   EQUALITYCOMPARERINTERFACENAME, HASHCONVERTERINTERFACENAME, INTERFACEADDITIONAL,
                   SECTIONADDITIONAL, COLLECTIONFLAGS, CONSTKEYWORD, PARAMETERNAME, TYPENAME) *)
  TJclHashSetIntParams = class(TJclCollectionInterfaceParams)
  protected
    // function CodeUnit: string; override;
  public
    function AliasAttributeIDs: TAllTypeAttributeIDs; override;
  published
    property SelfClassName: string index taHashSetClassName read GetTypeAttribute write SetTypeAttribute stored IsTypeAttributeStored;
    property AncestorClassName;
    property BucketTypeName: string index taHashSetBucketTypeName read GetTypeAttribute write SetTypeAttribute stored False;
    property CollectionInterfaceName: string index taCollectionInterfaceName read GetTypeAttribute write SetTypeAttribute stored False;
    property EqualityComparerInterfaceName: string index taEqualityComparerInterfaceName read GetTypeAttribute write SetTypeAttribute stored False;
    property HashConverterInterfaceName: string index taHashConverterInterfaceName read GetTypeAttribute write SetTypeAttribute stored False;
    property ListInterfaceName: string index taListInterfaceName read GetTypeAttribute write SetTypeAttribute stored False;
    property ArrayInterfaceName: string index taArrayInterfaceName read GetTypeAttribute write SetTypeAttribute stored False;
    property SetInterfaceName: string index taSetInterfaceName read GetTypeAttribute write SetTypeAttribute stored False;
    property ItrInterfaceName: string index taIteratorInterfaceName read GetTypeAttribute write SetTypeAttribute stored False;
    property InterfaceAdditional;
    property SectionAdditional;
    property CollectionFlags;
    property ConstKeyword: string index taConstKeyword read GetTypeAttribute write SetTypeAttribute stored False;
    property ParameterName: string index taParameterName read GetTypeAttribute write SetTypeAttribute stored False;
    property TypeName: string index taTypeName read GetTypeAttribute write SetTypeAttribute stored False;
    property OwnershipDeclaration;
  end;

  (* JCLHASHSETITRINT(SELFCLASSNAME, ITRINTERFACENAME, HASHSETCLASSNAME,
                      CONSTKEYWORD, PARAMETERNAME, TYPENAME, GETTERNAME, SETTERNAME) *)
  TJclHashSetItrIntParams = class(TJclClassInterfaceParams)
  protected
    // function CodeUnit: string; override;
  public
    function AliasAttributeIDs: TAllTypeAttributeIDs; override;
  published
    property SelfClassName: string index taHashSetIteratorClassName read GetTypeAttribute write SetTypeAttribute stored IsTypeAttributeStored;
    property ItrInterfaceName: string index taIteratorInterfaceName read GetTypeAttribute write SetTypeAttribute stored False;
    property HashSetClassName: string index taHashSetClassName read GetTypeAttribute write SetTypeAttribute stored False;
    property ConstKeyword: string index taConstKeyword read GetTypeAttribute write SetTypeAttribute stored False;
    property ParameterName: string index taParameterName read GetTypeAttribute write SetTypeAttribute stored False;
    property TypeName: string index taTypeName read GetTypeAttribute write SetTypeAttribute stored False;
    property GetterName: string index taGetterName read GetTypeAttribute write SetTypeAttribute stored False;
    property SetterName: string index taSetterName read GetTypeAttribute write SetTypeAttribute stored False;
  end;

  (* JCLHASHSETIMP(SELFCLASSNAME, BUCKETTYPENAME, OWNERSHIPDECLARATION, OWNERSHIPPARAMETER,
                   COLLECTIONINTERFACENAME, ITRCLASSNAME, ITRINTERFACENAME,
                   CONSTKEYWORD, PARAMETERNAME, TYPENAME, DEFAULTVALUE, RELEASERNAME) *)
  TJclHashSetImpParams = class(TJclCollectionImplementationParams)
  protected
    // function CodeUnit: string; override;
  public
    function GetConstructorParameters: string; override;
    function GetSelfClassName: string; override;
  published
    property SelfClassName: string index taHashSetClassName read GetTypeAttribute write SetTypeAttribute stored False;
    property BucketTypeName: string index taHashSetBucketTypeName read GetTypeAttribute write SetTypeAttribute stored False;
    property OwnershipDeclaration;
    property OwnershipParameter: string index taOwnershipParameter read GetTypeAttribute write SetTypeAttribute stored False;
    property CollectionInterfaceName: string index taCollectionInterfaceName read GetTypeAttribute write SetTypeAttribute stored False;
    property ItrClassName: string index taHashSetIteratorClassName read GetTypeAttribute write SetTypeAttribute stored False;
    property ItrInterfaceName: string index taIteratorInterfaceName read GetTypeAttribute write SetTypeAttribute stored False;
    property ConstKeyword: string index taConstKeyword read GetTypeAttribute write SetTypeAttribute stored False;
    property ParameterName: string index taParameterName read GetTypeAttribute write SetTypeAttribute stored False;
    property TypeName: string index taTypeName read GetTypeAttribute write SetTypeAttribute stored False;
    property DefaultValue: string index taDefaultValue read GetTypeAttribute write SetTypeAttribute stored False;
    property ReleaserName: string index taReleaserName read GetTypeAttribute write SetTypeAttribute stored False;
    property MacroFooter;
  end;

  (* JCLHASHSETITRIMP(SELFCLASSNAME, HASHSETCLASSNAME, BUCKETTYPENAME, ITRINTERFACENAME,
                      CONSTKEYWORD, PARAMETERNAME, TYPENAME, GETTERNAME, SETTERNAME) *)
  TJclHashSetItrImpParams = class(TJclContainerImplementationParams)
  protected
    // function CodeUnit: string; override;
  published
    property SelfClassName: string index taHashSetIteratorClassName read GetTypeAttribute write SetTypeAttribute stored False;
    property HashSetClassName: string index taHashSetClassName read GetTypeAttribute write SetTypeAttribute stored False;
    property BucketTypeName: string index taHashSetBucketTypeName read GetTypeAttribute write SetTypeAttribute stored False;
    property ItrInterfaceName: string index taIteratorInterfaceName read GetTypeAttribute write SetTypeAttribute stored False;
    property ConstKeyword: string index taConstKeyword read GetTypeAttribute write SetTypeAttribute stored False;
    property ParameterName: string index taParameterName read GetTypeAttribute write SetTypeAttribute stored False;
    property TypeName: string index taTypeName read GetTypeAttribute write SetTypeAttribute stored False;
    property DefaultValue: string index taDefaultValue read GetTypeAttribute write SetTypeAttribute stored False;
    property GetterName: string index taGetterName read GetTypeAttribute write SetTypeAttribute stored False;
    property SetterName: string index taSetterName read GetTypeAttribute write SetTypeAttribute stored False;
  end;

{$IFDEF UNITVERSIONING}
const
  UnitVersioning: TUnitVersionInfo = (
    RCSfile: '$URL$';
    Revision: '$Revision$';
    Date: '$Date$';
    LogPath: 'JCL\source\common';
    Extra: '';
    Data: nil
    );
{$ENDIF UNITVERSIONING}

implementation

uses
  {$IFDEF HAS_UNITSCOPE}
  System.SysUtils,
  {$ELSE ~HAS_UNITSCOPE}
  SysUtils,
  {$ENDIF ~HAS_UNITSCOPE}
  JclStrings;

procedure RegisterJclContainers;
begin
  RegisterContainerParams('JCLHASHSETTYPEINT', TJclHashSetTypeIntParams);
  RegisterContainerParams('JCLHASHSETINT', TJclHashSetIntParams);
  RegisterContainerParams('JCLHASHSETITRINT', TJclHashSetItrIntParams);
  RegisterContainerParams('JCLHASHSETIMP', TJclHashSetImpParams, TJclHashSetIntParams);
  RegisterContainerParams('JCLHASHSETITRIMP', TJclHashSetItrImpParams, TJclHashSetItrIntParams);
end;

//=== { TJclHashSetTypeIntParams } ===========================================

function TJclHashSetTypeIntParams.AliasAttributeIDs: TAllTypeAttributeIDs;
begin
  Result := [taHashSetBucketTypeName];
end;

//=== { TJclHashSetIntParams } ===============================================

function TJclHashSetIntParams.AliasAttributeIDs: TAllTypeAttributeIDs;
begin
  Result := [taHashSetClassName];
end;

//=== { TJclHashSetItrIntParams } ============================================

function TJclHashSetItrIntParams.AliasAttributeIDs: TAllTypeAttributeIDs;
begin
  Result := [taHashSetIteratorClassName];
end;

//=== { TJclHashSetImpParams } ===============================================

function TJclHashSetImpParams.GetConstructorParameters: string;
begin
  Result := 'Size';
end;

function TJclHashSetImpParams.GetSelfClassName: string;
begin
  Result := SelfClassName;
end;

initialization
  RegisterJclContainers;
  {$IFDEF UNITVERSIONING}
  RegisterUnitVersion(HInstance, UnitVersioning);
  {$ENDIF UNITVERSIONING}

finalization
  {$IFDEF UNITVERSIONING}
  UnregisterUnitVersion(HInstance);
  {$ENDIF UNITVERSIONING}

end.

