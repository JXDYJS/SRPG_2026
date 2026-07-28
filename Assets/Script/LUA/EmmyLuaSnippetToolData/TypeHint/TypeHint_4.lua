---@meta


---@class UnityEngine.TextCore.LowLevel.OpenTypeFeature : System.ValueType
UnityEngine.TextCore.LowLevel.OpenTypeFeature = {}
---@alias CS.UnityEngine.TextCore.LowLevel.OpenTypeFeature UnityEngine.TextCore.LowLevel.OpenTypeFeature
CS.UnityEngine.TextCore.LowLevel.OpenTypeFeature = UnityEngine.TextCore.LowLevel.OpenTypeFeature


---@class UnityEngine.TextCore.LowLevel.OpenTypeLayoutLookup : System.Object
---@field lookupType number
---@field lookupFlag number
---@field markFilteringSet number
UnityEngine.TextCore.LowLevel.OpenTypeLayoutLookup = {}
---@alias CS.UnityEngine.TextCore.LowLevel.OpenTypeLayoutLookup UnityEngine.TextCore.LowLevel.OpenTypeLayoutLookup
CS.UnityEngine.TextCore.LowLevel.OpenTypeLayoutLookup = UnityEngine.TextCore.LowLevel.OpenTypeLayoutLookup

function UnityEngine.TextCore.LowLevel.OpenTypeLayoutLookup:InitializeLookupDictionary() end
---@overload fun(self: UnityEngine.TextCore.LowLevel.OpenTypeLayoutLookup, lookupIndex: number, glyphIndex: number)
---@overload fun(self: UnityEngine.TextCore.LowLevel.OpenTypeLayoutLookup, lookupIndex: number, glyphIndex: number, emScale: number)
---@overload fun(self: UnityEngine.TextCore.LowLevel.OpenTypeLayoutLookup, lookupIndex: number, glyphIndexes: System.Collections.Generic.List)
---@param lookupIndex number
---@param glyphIndexes System.Collections.Generic.List
---@param emScale number
function UnityEngine.TextCore.LowLevel.OpenTypeLayoutLookup:UpdateRecords(lookupIndex, glyphIndexes, emScale) end
function UnityEngine.TextCore.LowLevel.OpenTypeLayoutLookup:ClearRecords() end

---@class UnityEngine.TextCore.LowLevel.GlyphValueRecord : System.ValueType
---@field xPlacement number
---@field yPlacement number
---@field xAdvance number
---@field yAdvance number
UnityEngine.TextCore.LowLevel.GlyphValueRecord = {}
---@alias CS.UnityEngine.TextCore.LowLevel.GlyphValueRecord UnityEngine.TextCore.LowLevel.GlyphValueRecord
CS.UnityEngine.TextCore.LowLevel.GlyphValueRecord = UnityEngine.TextCore.LowLevel.GlyphValueRecord

---@param xPlacement number
---@param yPlacement number
---@param xAdvance number
---@param yAdvance number
---@return UnityEngine.TextCore.LowLevel.GlyphValueRecord
function UnityEngine.TextCore.LowLevel.GlyphValueRecord.New(xPlacement, yPlacement, xAdvance, yAdvance) end
---@return number
function UnityEngine.TextCore.LowLevel.GlyphValueRecord:GetHashCode() end
---@overload fun(self: UnityEngine.TextCore.LowLevel.GlyphValueRecord, obj: System.Object) : boolean
---@param other UnityEngine.TextCore.LowLevel.GlyphValueRecord
---@return boolean
function UnityEngine.TextCore.LowLevel.GlyphValueRecord:Equals(other) end

---@class UnityEngine.TextCore.LowLevel.GlyphAdjustmentRecord : System.ValueType
---@field glyphIndex number
---@field glyphValueRecord UnityEngine.TextCore.LowLevel.GlyphValueRecord
UnityEngine.TextCore.LowLevel.GlyphAdjustmentRecord = {}
---@alias CS.UnityEngine.TextCore.LowLevel.GlyphAdjustmentRecord UnityEngine.TextCore.LowLevel.GlyphAdjustmentRecord
CS.UnityEngine.TextCore.LowLevel.GlyphAdjustmentRecord = UnityEngine.TextCore.LowLevel.GlyphAdjustmentRecord

---@param glyphIndex number
---@param glyphValueRecord UnityEngine.TextCore.LowLevel.GlyphValueRecord
---@return UnityEngine.TextCore.LowLevel.GlyphAdjustmentRecord
function UnityEngine.TextCore.LowLevel.GlyphAdjustmentRecord.New(glyphIndex, glyphValueRecord) end
---@return number
function UnityEngine.TextCore.LowLevel.GlyphAdjustmentRecord:GetHashCode() end
---@overload fun(self: UnityEngine.TextCore.LowLevel.GlyphAdjustmentRecord, obj: System.Object) : boolean
---@param other UnityEngine.TextCore.LowLevel.GlyphAdjustmentRecord
---@return boolean
function UnityEngine.TextCore.LowLevel.GlyphAdjustmentRecord:Equals(other) end

---@class UnityEngine.TextCore.LowLevel.GlyphPairAdjustmentRecord : System.ValueType
---@field firstAdjustmentRecord UnityEngine.TextCore.LowLevel.GlyphAdjustmentRecord
---@field secondAdjustmentRecord UnityEngine.TextCore.LowLevel.GlyphAdjustmentRecord
---@field featureLookupFlags UnityEngine.TextCore.LowLevel.FontFeatureLookupFlags
UnityEngine.TextCore.LowLevel.GlyphPairAdjustmentRecord = {}
---@alias CS.UnityEngine.TextCore.LowLevel.GlyphPairAdjustmentRecord UnityEngine.TextCore.LowLevel.GlyphPairAdjustmentRecord
CS.UnityEngine.TextCore.LowLevel.GlyphPairAdjustmentRecord = UnityEngine.TextCore.LowLevel.GlyphPairAdjustmentRecord

---@param firstAdjustmentRecord UnityEngine.TextCore.LowLevel.GlyphAdjustmentRecord
---@param secondAdjustmentRecord UnityEngine.TextCore.LowLevel.GlyphAdjustmentRecord
---@return UnityEngine.TextCore.LowLevel.GlyphPairAdjustmentRecord
function UnityEngine.TextCore.LowLevel.GlyphPairAdjustmentRecord.New(firstAdjustmentRecord, secondAdjustmentRecord) end
---@return number
function UnityEngine.TextCore.LowLevel.GlyphPairAdjustmentRecord:GetHashCode() end
---@overload fun(self: UnityEngine.TextCore.LowLevel.GlyphPairAdjustmentRecord, obj: System.Object) : boolean
---@param other UnityEngine.TextCore.LowLevel.GlyphPairAdjustmentRecord
---@return boolean
function UnityEngine.TextCore.LowLevel.GlyphPairAdjustmentRecord:Equals(other) end

---@class UnityEngine.TextCore.LowLevel.GlyphAnchorPoint : System.ValueType
---@field xCoordinate number
---@field yCoordinate number
UnityEngine.TextCore.LowLevel.GlyphAnchorPoint = {}
---@alias CS.UnityEngine.TextCore.LowLevel.GlyphAnchorPoint UnityEngine.TextCore.LowLevel.GlyphAnchorPoint
CS.UnityEngine.TextCore.LowLevel.GlyphAnchorPoint = UnityEngine.TextCore.LowLevel.GlyphAnchorPoint


---@class UnityEngine.TextCore.LowLevel.MarkPositionAdjustment : System.ValueType
---@field xPositionAdjustment number
---@field yPositionAdjustment number
UnityEngine.TextCore.LowLevel.MarkPositionAdjustment = {}
---@alias CS.UnityEngine.TextCore.LowLevel.MarkPositionAdjustment UnityEngine.TextCore.LowLevel.MarkPositionAdjustment
CS.UnityEngine.TextCore.LowLevel.MarkPositionAdjustment = UnityEngine.TextCore.LowLevel.MarkPositionAdjustment

---@param x number
---@param y number
---@return UnityEngine.TextCore.LowLevel.MarkPositionAdjustment
function UnityEngine.TextCore.LowLevel.MarkPositionAdjustment.New(x, y) end

---@class UnityEngine.TextCore.LowLevel.MarkToBaseAdjustmentRecord : System.ValueType
---@field baseGlyphID number
---@field baseGlyphAnchorPoint UnityEngine.TextCore.LowLevel.GlyphAnchorPoint
---@field markGlyphID number
---@field markPositionAdjustment UnityEngine.TextCore.LowLevel.MarkPositionAdjustment
UnityEngine.TextCore.LowLevel.MarkToBaseAdjustmentRecord = {}
---@alias CS.UnityEngine.TextCore.LowLevel.MarkToBaseAdjustmentRecord UnityEngine.TextCore.LowLevel.MarkToBaseAdjustmentRecord
CS.UnityEngine.TextCore.LowLevel.MarkToBaseAdjustmentRecord = UnityEngine.TextCore.LowLevel.MarkToBaseAdjustmentRecord


---@class UnityEngine.TextCore.LowLevel.MarkToMarkAdjustmentRecord : System.ValueType
---@field baseMarkGlyphID number
---@field baseMarkGlyphAnchorPoint UnityEngine.TextCore.LowLevel.GlyphAnchorPoint
---@field combiningMarkGlyphID number
---@field combiningMarkPositionAdjustment UnityEngine.TextCore.LowLevel.MarkPositionAdjustment
UnityEngine.TextCore.LowLevel.MarkToMarkAdjustmentRecord = {}
---@alias CS.UnityEngine.TextCore.LowLevel.MarkToMarkAdjustmentRecord UnityEngine.TextCore.LowLevel.MarkToMarkAdjustmentRecord
CS.UnityEngine.TextCore.LowLevel.MarkToMarkAdjustmentRecord = UnityEngine.TextCore.LowLevel.MarkToMarkAdjustmentRecord


---@class UnityEngine.TextCore.LowLevel.SingleSubstitutionRecord : System.ValueType
---@field targetGlyphID number
---@field substituteGlyphID number
UnityEngine.TextCore.LowLevel.SingleSubstitutionRecord = {}
---@alias CS.UnityEngine.TextCore.LowLevel.SingleSubstitutionRecord UnityEngine.TextCore.LowLevel.SingleSubstitutionRecord
CS.UnityEngine.TextCore.LowLevel.SingleSubstitutionRecord = UnityEngine.TextCore.LowLevel.SingleSubstitutionRecord


---@class UnityEngine.TextCore.LowLevel.MultipleSubstitutionRecord : System.ValueType
---@field targetGlyphID number
---@field substituteGlyphIDs System.UInt32[]
UnityEngine.TextCore.LowLevel.MultipleSubstitutionRecord = {}
---@alias CS.UnityEngine.TextCore.LowLevel.MultipleSubstitutionRecord UnityEngine.TextCore.LowLevel.MultipleSubstitutionRecord
CS.UnityEngine.TextCore.LowLevel.MultipleSubstitutionRecord = UnityEngine.TextCore.LowLevel.MultipleSubstitutionRecord


---@class UnityEngine.TextCore.LowLevel.AlternateSubstitutionRecord : System.ValueType
---@field targetGlyphID number
---@field substituteGlyphIDs System.UInt32[]
UnityEngine.TextCore.LowLevel.AlternateSubstitutionRecord = {}
---@alias CS.UnityEngine.TextCore.LowLevel.AlternateSubstitutionRecord UnityEngine.TextCore.LowLevel.AlternateSubstitutionRecord
CS.UnityEngine.TextCore.LowLevel.AlternateSubstitutionRecord = UnityEngine.TextCore.LowLevel.AlternateSubstitutionRecord


---@class UnityEngine.TextCore.LowLevel.LigatureSubstitutionRecord : System.ValueType
---@field componentGlyphIDs System.UInt32[]
---@field ligatureGlyphID number
UnityEngine.TextCore.LowLevel.LigatureSubstitutionRecord = {}
---@alias CS.UnityEngine.TextCore.LowLevel.LigatureSubstitutionRecord UnityEngine.TextCore.LowLevel.LigatureSubstitutionRecord
CS.UnityEngine.TextCore.LowLevel.LigatureSubstitutionRecord = UnityEngine.TextCore.LowLevel.LigatureSubstitutionRecord


---@class UnityEngine.TextCore.LowLevel.GlyphIDSequence : System.ValueType
---@field glyphIDs System.UInt32[]
UnityEngine.TextCore.LowLevel.GlyphIDSequence = {}
---@alias CS.UnityEngine.TextCore.LowLevel.GlyphIDSequence UnityEngine.TextCore.LowLevel.GlyphIDSequence
CS.UnityEngine.TextCore.LowLevel.GlyphIDSequence = UnityEngine.TextCore.LowLevel.GlyphIDSequence


---@class UnityEngine.TextCore.LowLevel.SequenceLookupRecord : System.ValueType
---@field glyphSequenceIndex number
---@field lookupListIndex number
UnityEngine.TextCore.LowLevel.SequenceLookupRecord = {}
---@alias CS.UnityEngine.TextCore.LowLevel.SequenceLookupRecord UnityEngine.TextCore.LowLevel.SequenceLookupRecord
CS.UnityEngine.TextCore.LowLevel.SequenceLookupRecord = UnityEngine.TextCore.LowLevel.SequenceLookupRecord


---@class UnityEngine.TextCore.LowLevel.ContextualSubstitutionRecord : System.ValueType
---@field inputSequences UnityEngine.TextCore.LowLevel.GlyphIDSequence[]
---@field sequenceLookupRecords UnityEngine.TextCore.LowLevel.SequenceLookupRecord[]
UnityEngine.TextCore.LowLevel.ContextualSubstitutionRecord = {}
---@alias CS.UnityEngine.TextCore.LowLevel.ContextualSubstitutionRecord UnityEngine.TextCore.LowLevel.ContextualSubstitutionRecord
CS.UnityEngine.TextCore.LowLevel.ContextualSubstitutionRecord = UnityEngine.TextCore.LowLevel.ContextualSubstitutionRecord


---@class UnityEngine.TextCore.LowLevel.ChainingContextualSubstitutionRecord : System.ValueType
---@field backtrackGlyphSequences UnityEngine.TextCore.LowLevel.GlyphIDSequence[]
---@field inputGlyphSequences UnityEngine.TextCore.LowLevel.GlyphIDSequence[]
---@field lookaheadGlyphSequences UnityEngine.TextCore.LowLevel.GlyphIDSequence[]
---@field sequenceLookupRecords UnityEngine.TextCore.LowLevel.SequenceLookupRecord[]
UnityEngine.TextCore.LowLevel.ChainingContextualSubstitutionRecord = {}
---@alias CS.UnityEngine.TextCore.LowLevel.ChainingContextualSubstitutionRecord UnityEngine.TextCore.LowLevel.ChainingContextualSubstitutionRecord
CS.UnityEngine.TextCore.LowLevel.ChainingContextualSubstitutionRecord = UnityEngine.TextCore.LowLevel.ChainingContextualSubstitutionRecord


---@class UnityEngine.TextCore.Text.Character : UnityEngine.TextCore.Text.TextElement
UnityEngine.TextCore.Text.Character = {}
---@alias CS.UnityEngine.TextCore.Text.Character UnityEngine.TextCore.Text.Character
CS.UnityEngine.TextCore.Text.Character = UnityEngine.TextCore.Text.Character

---@overload fun() : UnityEngine.TextCore.Text.Character
---@overload fun(unicode: number, glyph: UnityEngine.TextCore.Glyph) : UnityEngine.TextCore.Text.Character
---@param unicode number
---@param fontAsset UnityEngine.TextCore.Text.FontAsset
---@param glyph UnityEngine.TextCore.Glyph
---@return UnityEngine.TextCore.Text.Character
function UnityEngine.TextCore.Text.Character.New(unicode, fontAsset, glyph) end

---@class UnityEngine.TextCore.Text.ColorUtilities : System.Object
UnityEngine.TextCore.Text.ColorUtilities = {}
---@alias CS.UnityEngine.TextCore.Text.ColorUtilities UnityEngine.TextCore.Text.ColorUtilities
CS.UnityEngine.TextCore.Text.ColorUtilities = UnityEngine.TextCore.Text.ColorUtilities


---@class UnityEngine.TextCore.Text.FastAction : System.Object
UnityEngine.TextCore.Text.FastAction = {}
---@alias CS.UnityEngine.TextCore.Text.FastAction UnityEngine.TextCore.Text.FastAction
CS.UnityEngine.TextCore.Text.FastAction = UnityEngine.TextCore.Text.FastAction

---@return UnityEngine.TextCore.Text.FastAction
function UnityEngine.TextCore.Text.FastAction.New() end
---@param rhs System.Action
function UnityEngine.TextCore.Text.FastAction:Add(rhs) end
---@param rhs System.Action
function UnityEngine.TextCore.Text.FastAction:Remove(rhs) end
function UnityEngine.TextCore.Text.FastAction:Call() end

---@class UnityEngine.TextCore.Text.FastAction : System.Object
UnityEngine.TextCore.Text.FastAction = {}
---@alias CS.UnityEngine.TextCore.Text.FastAction UnityEngine.TextCore.Text.FastAction
CS.UnityEngine.TextCore.Text.FastAction = UnityEngine.TextCore.Text.FastAction

---@return UnityEngine.TextCore.Text.FastAction
function UnityEngine.TextCore.Text.FastAction.New() end
---@param rhs System.Action[A]
function UnityEngine.TextCore.Text.FastAction:Add(rhs) end
---@param rhs System.Action[A]
function UnityEngine.TextCore.Text.FastAction:Remove(rhs) end
---@param a A
function UnityEngine.TextCore.Text.FastAction:Call(a) end

---@class UnityEngine.TextCore.Text.FastAction : System.Object
UnityEngine.TextCore.Text.FastAction = {}
---@alias CS.UnityEngine.TextCore.Text.FastAction UnityEngine.TextCore.Text.FastAction
CS.UnityEngine.TextCore.Text.FastAction = UnityEngine.TextCore.Text.FastAction

---@return UnityEngine.TextCore.Text.FastAction
function UnityEngine.TextCore.Text.FastAction.New() end
---@param rhs System.Action[A,B]
function UnityEngine.TextCore.Text.FastAction:Add(rhs) end
---@param rhs System.Action[A,B]
function UnityEngine.TextCore.Text.FastAction:Remove(rhs) end
---@param a A
---@param b B
function UnityEngine.TextCore.Text.FastAction:Call(a, b) end

---@class UnityEngine.TextCore.Text.FastAction : System.Object
UnityEngine.TextCore.Text.FastAction = {}
---@alias CS.UnityEngine.TextCore.Text.FastAction UnityEngine.TextCore.Text.FastAction
CS.UnityEngine.TextCore.Text.FastAction = UnityEngine.TextCore.Text.FastAction

---@return UnityEngine.TextCore.Text.FastAction
function UnityEngine.TextCore.Text.FastAction.New() end
---@param rhs System.Action[A,B,C]
function UnityEngine.TextCore.Text.FastAction:Add(rhs) end
---@param rhs System.Action[A,B,C]
function UnityEngine.TextCore.Text.FastAction:Remove(rhs) end
---@param a A
---@param b B
---@param c C
function UnityEngine.TextCore.Text.FastAction:Call(a, b, c) end

---@class UnityEngine.TextCore.Text.TextFontWeight
---@field Thin UnityEngine.TextCore.Text.TextFontWeight
---@field ExtraLight UnityEngine.TextCore.Text.TextFontWeight
---@field Light UnityEngine.TextCore.Text.TextFontWeight
---@field Regular UnityEngine.TextCore.Text.TextFontWeight
---@field Medium UnityEngine.TextCore.Text.TextFontWeight
---@field SemiBold UnityEngine.TextCore.Text.TextFontWeight
---@field Bold UnityEngine.TextCore.Text.TextFontWeight
---@field Heavy UnityEngine.TextCore.Text.TextFontWeight
---@field Black UnityEngine.TextCore.Text.TextFontWeight
UnityEngine.TextCore.Text.TextFontWeight = {}
---@alias CS.UnityEngine.TextCore.Text.TextFontWeight UnityEngine.TextCore.Text.TextFontWeight
CS.UnityEngine.TextCore.Text.TextFontWeight = UnityEngine.TextCore.Text.TextFontWeight


---@class UnityEngine.TextCore.Text.FontWeightPair : System.ValueType
---@field regularTypeface UnityEngine.TextCore.Text.FontAsset
---@field italicTypeface UnityEngine.TextCore.Text.FontAsset
UnityEngine.TextCore.Text.FontWeightPair = {}
---@alias CS.UnityEngine.TextCore.Text.FontWeightPair UnityEngine.TextCore.Text.FontWeightPair
CS.UnityEngine.TextCore.Text.FontWeightPair = UnityEngine.TextCore.Text.FontWeightPair


---@class UnityEngine.TextCore.Text.FontAssetCreationEditorSettings : System.ValueType
---@field sourceFontFileGUID string
---@field faceIndex number
---@field pointSizeSamplingMode number
---@field pointSize number
---@field padding number
---@field paddingMode number
---@field packingMode number
---@field atlasWidth number
---@field atlasHeight number
---@field characterSetSelectionMode number
---@field characterSequence string
---@field referencedFontAssetGUID string
---@field referencedTextAssetGUID string
---@field fontStyle number
---@field fontStyleModifier number
---@field renderMode number
---@field includeFontFeatures boolean
UnityEngine.TextCore.Text.FontAssetCreationEditorSettings = {}
---@alias CS.UnityEngine.TextCore.Text.FontAssetCreationEditorSettings UnityEngine.TextCore.Text.FontAssetCreationEditorSettings
CS.UnityEngine.TextCore.Text.FontAssetCreationEditorSettings = UnityEngine.TextCore.Text.FontAssetCreationEditorSettings


---@class UnityEngine.TextCore.Text.AtlasPopulationMode
---@field Static UnityEngine.TextCore.Text.AtlasPopulationMode
---@field Dynamic UnityEngine.TextCore.Text.AtlasPopulationMode
---@field DynamicOS UnityEngine.TextCore.Text.AtlasPopulationMode
UnityEngine.TextCore.Text.AtlasPopulationMode = {}
---@alias CS.UnityEngine.TextCore.Text.AtlasPopulationMode UnityEngine.TextCore.Text.AtlasPopulationMode
CS.UnityEngine.TextCore.Text.AtlasPopulationMode = UnityEngine.TextCore.Text.AtlasPopulationMode


---@class UnityEngine.TextCore.Text.FontAsset : UnityEngine.TextCore.Text.TextAsset
---@field fontAssetCreationEditorSettings UnityEngine.TextCore.Text.FontAssetCreationEditorSettings
---@field sourceFontFile UnityEngine.Font
---@field atlasPopulationMode UnityEngine.TextCore.Text.AtlasPopulationMode
---@field faceInfo UnityEngine.TextCore.FaceInfo
---@field glyphTable System.Collections.Generic.List
---@field glyphLookupTable System.Collections.Generic.Dictionary
---@field characterTable System.Collections.Generic.List
---@field characterLookupTable System.Collections.Generic.Dictionary
---@field atlasTexture UnityEngine.Texture2D
---@field atlasTextures UnityEngine.Texture2D[]
---@field atlasTextureCount number
---@field isMultiAtlasTexturesEnabled boolean
---@field atlasWidth number
---@field atlasHeight number
---@field atlasPadding number
---@field atlasRenderMode UnityEngine.TextCore.LowLevel.GlyphRenderMode
---@field fontFeatureTable UnityEngine.TextCore.Text.FontFeatureTable
---@field fallbackFontAssetTable System.Collections.Generic.List
---@field fontWeightTable UnityEngine.TextCore.Text.FontWeightPair[]
---@field regularStyleWeight number
---@field regularStyleSpacing number
---@field boldStyleWeight number
---@field boldStyleSpacing number
---@field italicStyleSlant number
---@field tabMultiple number
UnityEngine.TextCore.Text.FontAsset = {}
---@alias CS.UnityEngine.TextCore.Text.FontAsset UnityEngine.TextCore.Text.FontAsset
CS.UnityEngine.TextCore.Text.FontAsset = UnityEngine.TextCore.Text.FontAsset

---@return UnityEngine.TextCore.Text.FontAsset
function UnityEngine.TextCore.Text.FontAsset.New() end
---@overload fun(familyName: string, styleName: string, pointSize: number) : UnityEngine.TextCore.Text.FontAsset
---@overload fun(fontFilePath: string, faceIndex: number, samplingPointSize: number, atlasPadding: number, renderMode: UnityEngine.TextCore.LowLevel.GlyphRenderMode, atlasWidth: number, atlasHeight: number) : UnityEngine.TextCore.Text.FontAsset
---@overload fun(font: UnityEngine.Font) : UnityEngine.TextCore.Text.FontAsset
---@param font UnityEngine.Font
---@param samplingPointSize number
---@param atlasPadding number
---@param renderMode UnityEngine.TextCore.LowLevel.GlyphRenderMode
---@param atlasWidth number
---@param atlasHeight number
---@param atlasPopulationMode UnityEngine.TextCore.Text.AtlasPopulationMode
---@param enableMultiAtlasSupport boolean
---@return UnityEngine.TextCore.Text.FontAsset
function UnityEngine.TextCore.Text.FontAsset.CreateFontAsset(font, samplingPointSize, atlasPadding, renderMode, atlasWidth, atlasHeight, atlasPopulationMode, enableMultiAtlasSupport) end
---@param fontAsset UnityEngine.TextCore.Text.FontAsset
---@return string
function UnityEngine.TextCore.Text.FontAsset.GetCharacters(fontAsset) end
---@param fontAsset UnityEngine.TextCore.Text.FontAsset
---@return System.Int32[]
function UnityEngine.TextCore.Text.FontAsset.GetCharactersArray(fontAsset) end
function UnityEngine.TextCore.Text.FontAsset:ReadFontAssetDefinition() end
---@overload fun(self: UnityEngine.TextCore.Text.FontAsset, character: number) : boolean
---@overload fun(self: UnityEngine.TextCore.Text.FontAsset, character: System.Char, searchFallbacks: boolean, tryAddCharacter: boolean) : boolean
---@param character number
---@param searchFallbacks boolean
---@param tryAddCharacter boolean
---@return boolean
function UnityEngine.TextCore.Text.FontAsset:HasCharacter(character, searchFallbacks, tryAddCharacter) end
---@overload fun(self: UnityEngine.TextCore.Text.FontAsset, text: string, out_missingCharacters: System.Collections.Generic.List) : boolean, System.Collections.Generic.List
---@overload fun(self: UnityEngine.TextCore.Text.FontAsset, text: string, out_missingCharacters: System.UInt32[], searchFallbacks: boolean, tryAddCharacter: boolean) : boolean, System.UInt32[]
---@param text string
---@return boolean
function UnityEngine.TextCore.Text.FontAsset:HasCharacters(text) end
---@overload fun(self: UnityEngine.TextCore.Text.FontAsset, unicodes: System.UInt32[], includeFontFeatures: boolean) : boolean
---@overload fun(self: UnityEngine.TextCore.Text.FontAsset, unicodes: System.UInt32[], out_missingUnicodes: System.UInt32[], includeFontFeatures: boolean) : boolean, System.UInt32[]
---@overload fun(self: UnityEngine.TextCore.Text.FontAsset, characters: string, includeFontFeatures: boolean) : boolean
---@param characters string
---@param out_missingCharacters string
---@param includeFontFeatures boolean
---@return boolean,string
function UnityEngine.TextCore.Text.FontAsset:TryAddCharacters(characters, out_missingCharacters, includeFontFeatures) end
---@param setAtlasSizeToZero boolean
function UnityEngine.TextCore.Text.FontAsset:ClearFontAssetData(setAtlasSizeToZero) end

---@class UnityEngine.TextCore.Text.FontAssetUtilities : System.Object
UnityEngine.TextCore.Text.FontAssetUtilities = {}
---@alias CS.UnityEngine.TextCore.Text.FontAssetUtilities UnityEngine.TextCore.Text.FontAssetUtilities
CS.UnityEngine.TextCore.Text.FontAssetUtilities = UnityEngine.TextCore.Text.FontAssetUtilities

---@param unicode number
---@param sourceFontAsset UnityEngine.TextCore.Text.FontAsset
---@param fontAssets System.Collections.Generic.List
---@param includeFallbacks boolean
---@param fontStyle UnityEngine.TextCore.Text.FontStyles
---@param fontWeight UnityEngine.TextCore.Text.TextFontWeight
---@param out_isAlternativeTypeface boolean
---@return UnityEngine.TextCore.Text.Character,boolean
function UnityEngine.TextCore.Text.FontAssetUtilities.GetCharacterFromFontAssets(unicode, sourceFontAsset, fontAssets, includeFallbacks, fontStyle, fontWeight, out_isAlternativeTypeface) end
---@param unicode number
---@param spriteAsset UnityEngine.TextCore.Text.SpriteAsset
---@param includeFallbacks boolean
---@return UnityEngine.TextCore.Text.SpriteCharacter
function UnityEngine.TextCore.Text.FontAssetUtilities.GetSpriteCharacterFromSpriteAsset(unicode, spriteAsset, includeFallbacks) end

---@class UnityEngine.TextCore.Text.FontFeatureTable : System.Object
UnityEngine.TextCore.Text.FontFeatureTable = {}
---@alias CS.UnityEngine.TextCore.Text.FontFeatureTable UnityEngine.TextCore.Text.FontFeatureTable
CS.UnityEngine.TextCore.Text.FontFeatureTable = UnityEngine.TextCore.Text.FontFeatureTable

function UnityEngine.TextCore.Text.FontFeatureTable:SortGlyphPairAdjustmentRecords() end
function UnityEngine.TextCore.Text.FontFeatureTable:SortMarkToBaseAdjustmentRecords() end
function UnityEngine.TextCore.Text.FontFeatureTable:SortMarkToMarkAdjustmentRecords() end

---@class UnityEngine.TextCore.Text.Extents : System.ValueType
---@field min UnityEngine.Vector2
---@field max UnityEngine.Vector2
UnityEngine.TextCore.Text.Extents = {}
---@alias CS.UnityEngine.TextCore.Text.Extents UnityEngine.TextCore.Text.Extents
CS.UnityEngine.TextCore.Text.Extents = UnityEngine.TextCore.Text.Extents

---@param min UnityEngine.Vector2
---@param max UnityEngine.Vector2
---@return UnityEngine.TextCore.Text.Extents
function UnityEngine.TextCore.Text.Extents.New(min, max) end
---@return string
function UnityEngine.TextCore.Text.Extents:ToString() end

---@class UnityEngine.TextCore.Text.LineInfo : System.ValueType
---@field characterCount number
---@field visibleCharacterCount number
---@field spaceCount number
---@field visibleSpaceCount number
---@field wordCount number
---@field firstCharacterIndex number
---@field firstVisibleCharacterIndex number
---@field lastCharacterIndex number
---@field lastVisibleCharacterIndex number
---@field length number
---@field lineHeight number
---@field ascender number
---@field baseline number
---@field descender number
---@field maxAdvance number
---@field width number
---@field marginLeft number
---@field marginRight number
---@field alignment UnityEngine.TextCore.Text.TextAlignment
---@field lineExtents UnityEngine.TextCore.Text.Extents
UnityEngine.TextCore.Text.LineInfo = {}
---@alias CS.UnityEngine.TextCore.Text.LineInfo UnityEngine.TextCore.Text.LineInfo
CS.UnityEngine.TextCore.Text.LineInfo = UnityEngine.TextCore.Text.LineInfo


---@class UnityEngine.TextCore.Text.LinkInfo : System.ValueType
---@field hashCode number
---@field linkIdFirstCharacterIndex number
---@field linkIdLength number
---@field linkTextfirstCharacterIndex number
---@field linkTextLength number
UnityEngine.TextCore.Text.LinkInfo = {}
---@alias CS.UnityEngine.TextCore.Text.LinkInfo UnityEngine.TextCore.Text.LinkInfo
CS.UnityEngine.TextCore.Text.LinkInfo = UnityEngine.TextCore.Text.LinkInfo

---@param textInfo UnityEngine.TextCore.Text.TextInfo
---@return string
function UnityEngine.TextCore.Text.LinkInfo:GetLinkText(textInfo) end
---@return string
function UnityEngine.TextCore.Text.LinkInfo:GetLinkId() end

---@class UnityEngine.TextCore.Text.MaterialManager : System.Object
UnityEngine.TextCore.Text.MaterialManager = {}
---@alias CS.UnityEngine.TextCore.Text.MaterialManager UnityEngine.TextCore.Text.MaterialManager
CS.UnityEngine.TextCore.Text.MaterialManager = UnityEngine.TextCore.Text.MaterialManager

---@overload fun(sourceMaterial: UnityEngine.Material, targetMaterial: UnityEngine.Material) : UnityEngine.Material
---@param fontAsset UnityEngine.TextCore.Text.FontAsset
---@param sourceMaterial UnityEngine.Material
---@param atlasIndex number
---@return UnityEngine.Material
function UnityEngine.TextCore.Text.MaterialManager.GetFallbackMaterial(fontAsset, sourceMaterial, atlasIndex) end

---@class UnityEngine.TextCore.Text.MaterialReference : System.ValueType
---@field index number
---@field fontAsset UnityEngine.TextCore.Text.FontAsset
---@field spriteAsset UnityEngine.TextCore.Text.SpriteAsset
---@field material UnityEngine.Material
---@field isDefaultMaterial boolean
---@field isFallbackMaterial boolean
---@field fallbackMaterial UnityEngine.Material
---@field padding number
---@field referenceCount number
UnityEngine.TextCore.Text.MaterialReference = {}
---@alias CS.UnityEngine.TextCore.Text.MaterialReference UnityEngine.TextCore.Text.MaterialReference
CS.UnityEngine.TextCore.Text.MaterialReference = UnityEngine.TextCore.Text.MaterialReference

---@param index number
---@param fontAsset UnityEngine.TextCore.Text.FontAsset
---@param spriteAsset UnityEngine.TextCore.Text.SpriteAsset
---@param material UnityEngine.Material
---@param padding number
---@return UnityEngine.TextCore.Text.MaterialReference
function UnityEngine.TextCore.Text.MaterialReference.New(index, fontAsset, spriteAsset, material, padding) end
---@param materialReferences UnityEngine.TextCore.Text.MaterialReference[]
---@param fontAsset UnityEngine.TextCore.Text.FontAsset
---@return boolean
function UnityEngine.TextCore.Text.MaterialReference.Contains(materialReferences, fontAsset) end
---@overload fun(material: UnityEngine.Material, fontAsset: UnityEngine.TextCore.Text.FontAsset, ref_materialReferences: UnityEngine.TextCore.Text.MaterialReference[], materialReferenceIndexLookup: System.Collections.Generic.Dictionary) : number, UnityEngine.TextCore.Text.MaterialReference[]
---@param material UnityEngine.Material
---@param spriteAsset UnityEngine.TextCore.Text.SpriteAsset
---@param ref_materialReferences UnityEngine.TextCore.Text.MaterialReference[]
---@param materialReferenceIndexLookup System.Collections.Generic.Dictionary
---@return number,UnityEngine.TextCore.Text.MaterialReference[]
function UnityEngine.TextCore.Text.MaterialReference.AddMaterialReference(material, spriteAsset, ref_materialReferences, materialReferenceIndexLookup) end

---@class UnityEngine.TextCore.Text.MaterialReferenceManager : System.Object
---@field instance UnityEngine.TextCore.Text.MaterialReferenceManager
UnityEngine.TextCore.Text.MaterialReferenceManager = {}
---@alias CS.UnityEngine.TextCore.Text.MaterialReferenceManager UnityEngine.TextCore.Text.MaterialReferenceManager
CS.UnityEngine.TextCore.Text.MaterialReferenceManager = UnityEngine.TextCore.Text.MaterialReferenceManager

---@return UnityEngine.TextCore.Text.MaterialReferenceManager
function UnityEngine.TextCore.Text.MaterialReferenceManager.New() end
---@param fontAsset UnityEngine.TextCore.Text.FontAsset
function UnityEngine.TextCore.Text.MaterialReferenceManager.AddFontAsset(fontAsset) end
---@overload fun(spriteAsset: UnityEngine.TextCore.Text.SpriteAsset)
---@param hashCode number
---@param spriteAsset UnityEngine.TextCore.Text.SpriteAsset
function UnityEngine.TextCore.Text.MaterialReferenceManager.AddSpriteAsset(hashCode, spriteAsset) end
---@param hashCode number
---@param material UnityEngine.Material
function UnityEngine.TextCore.Text.MaterialReferenceManager.AddFontMaterial(hashCode, material) end
---@param hashCode number
---@param spriteAsset UnityEngine.TextCore.Text.TextColorGradient
function UnityEngine.TextCore.Text.MaterialReferenceManager.AddColorGradientPreset(hashCode, spriteAsset) end
---@param hashCode number
---@param out_fontAsset UnityEngine.TextCore.Text.FontAsset
---@return boolean,UnityEngine.TextCore.Text.FontAsset
function UnityEngine.TextCore.Text.MaterialReferenceManager.TryGetFontAsset(hashCode, out_fontAsset) end
---@param hashCode number
---@param out_spriteAsset UnityEngine.TextCore.Text.SpriteAsset
---@return boolean,UnityEngine.TextCore.Text.SpriteAsset
function UnityEngine.TextCore.Text.MaterialReferenceManager.TryGetSpriteAsset(hashCode, out_spriteAsset) end
---@param hashCode number
---@param out_gradientPreset UnityEngine.TextCore.Text.TextColorGradient
---@return boolean,UnityEngine.TextCore.Text.TextColorGradient
function UnityEngine.TextCore.Text.MaterialReferenceManager.TryGetColorGradientPreset(hashCode, out_gradientPreset) end
---@param hashCode number
---@param out_material UnityEngine.Material
---@return boolean,UnityEngine.Material
function UnityEngine.TextCore.Text.MaterialReferenceManager.TryGetMaterial(hashCode, out_material) end
---@overload fun(self: UnityEngine.TextCore.Text.MaterialReferenceManager, font: UnityEngine.TextCore.Text.FontAsset) : boolean
---@param sprite UnityEngine.TextCore.Text.SpriteAsset
---@return boolean
function UnityEngine.TextCore.Text.MaterialReferenceManager:Contains(sprite) end

---@class UnityEngine.TextCore.Text.VertexSortingOrder
---@field Normal UnityEngine.TextCore.Text.VertexSortingOrder
---@field Reverse UnityEngine.TextCore.Text.VertexSortingOrder
UnityEngine.TextCore.Text.VertexSortingOrder = {}
---@alias CS.UnityEngine.TextCore.Text.VertexSortingOrder UnityEngine.TextCore.Text.VertexSortingOrder
CS.UnityEngine.TextCore.Text.VertexSortingOrder = UnityEngine.TextCore.Text.VertexSortingOrder


---@class UnityEngine.TextCore.Text.MeshInfo : System.ValueType
---@field vertexCount number
---@field vertices UnityEngine.Vector3[]
---@field normals UnityEngine.Vector3[]
---@field tangents UnityEngine.Vector4[]
---@field uvs0 UnityEngine.Vector4[]
---@field uvs2 UnityEngine.Vector2[]
---@field colors32 UnityEngine.Color32[]
---@field triangles System.Int32[]
---@field material UnityEngine.Material
UnityEngine.TextCore.Text.MeshInfo = {}
---@alias CS.UnityEngine.TextCore.Text.MeshInfo UnityEngine.TextCore.Text.MeshInfo
CS.UnityEngine.TextCore.Text.MeshInfo = UnityEngine.TextCore.Text.MeshInfo

---@param size number
---@return UnityEngine.TextCore.Text.MeshInfo
function UnityEngine.TextCore.Text.MeshInfo.New(size) end
---@param startIndex number
---@param updateMesh boolean
function UnityEngine.TextCore.Text.MeshInfo:ClearUnusedVertices(startIndex, updateMesh) end

---@class UnityEngine.TextCore.Text.SpriteAsset : UnityEngine.TextCore.Text.TextAsset
---@field fallbackSpriteAssets System.Collections.Generic.List
---@field faceInfo UnityEngine.TextCore.FaceInfo
---@field spriteSheet UnityEngine.Texture
---@field spriteCharacterTable System.Collections.Generic.List
---@field spriteCharacterLookupTable System.Collections.Generic.Dictionary
---@field spriteGlyphTable System.Collections.Generic.List
UnityEngine.TextCore.Text.SpriteAsset = {}
---@alias CS.UnityEngine.TextCore.Text.SpriteAsset UnityEngine.TextCore.Text.SpriteAsset
CS.UnityEngine.TextCore.Text.SpriteAsset = UnityEngine.TextCore.Text.SpriteAsset

---@return UnityEngine.TextCore.Text.SpriteAsset
function UnityEngine.TextCore.Text.SpriteAsset.New() end
---@param spriteAsset UnityEngine.TextCore.Text.SpriteAsset
---@param unicode number
---@param includeFallbacks boolean
---@param out_spriteIndex number
---@return UnityEngine.TextCore.Text.SpriteAsset,number
function UnityEngine.TextCore.Text.SpriteAsset.SearchForSpriteByUnicode(spriteAsset, unicode, includeFallbacks, out_spriteIndex) end
---@param spriteAsset UnityEngine.TextCore.Text.SpriteAsset
---@param hashCode number
---@param includeFallbacks boolean
---@param out_spriteIndex number
---@param textSettings UnityEngine.TextCore.Text.TextSettings
---@return UnityEngine.TextCore.Text.SpriteAsset,number
function UnityEngine.TextCore.Text.SpriteAsset.SearchForSpriteByHashCode(spriteAsset, hashCode, includeFallbacks, out_spriteIndex, textSettings) end
function UnityEngine.TextCore.Text.SpriteAsset:UpdateLookupTables() end
---@param hashCode number
---@return number
function UnityEngine.TextCore.Text.SpriteAsset:GetSpriteIndexFromHashcode(hashCode) end
---@param unicode number
---@return number
function UnityEngine.TextCore.Text.SpriteAsset:GetSpriteIndexFromUnicode(unicode) end
---@param name string
---@return number
function UnityEngine.TextCore.Text.SpriteAsset:GetSpriteIndexFromName(name) end
function UnityEngine.TextCore.Text.SpriteAsset:SortGlyphTable() end

---@class UnityEngine.TextCore.Text.SpriteCharacter : UnityEngine.TextCore.Text.TextElement
---@field name string
UnityEngine.TextCore.Text.SpriteCharacter = {}
---@alias CS.UnityEngine.TextCore.Text.SpriteCharacter UnityEngine.TextCore.Text.SpriteCharacter
CS.UnityEngine.TextCore.Text.SpriteCharacter = UnityEngine.TextCore.Text.SpriteCharacter

---@overload fun() : UnityEngine.TextCore.Text.SpriteCharacter
---@overload fun(unicode: number, glyph: UnityEngine.TextCore.Text.SpriteGlyph) : UnityEngine.TextCore.Text.SpriteCharacter
---@param unicode number
---@param spriteAsset UnityEngine.TextCore.Text.SpriteAsset
---@param glyph UnityEngine.TextCore.Text.SpriteGlyph
---@return UnityEngine.TextCore.Text.SpriteCharacter
function UnityEngine.TextCore.Text.SpriteCharacter.New(unicode, spriteAsset, glyph) end

---@class UnityEngine.TextCore.Text.SpriteGlyph : UnityEngine.TextCore.Glyph
---@field sprite UnityEngine.Sprite
UnityEngine.TextCore.Text.SpriteGlyph = {}
---@alias CS.UnityEngine.TextCore.Text.SpriteGlyph UnityEngine.TextCore.Text.SpriteGlyph
CS.UnityEngine.TextCore.Text.SpriteGlyph = UnityEngine.TextCore.Text.SpriteGlyph

---@overload fun() : UnityEngine.TextCore.Text.SpriteGlyph
---@overload fun(index: number, metrics: UnityEngine.TextCore.GlyphMetrics, glyphRect: UnityEngine.TextCore.GlyphRect, scale: number, atlasIndex: number) : UnityEngine.TextCore.Text.SpriteGlyph
---@param index number
---@param metrics UnityEngine.TextCore.GlyphMetrics
---@param glyphRect UnityEngine.TextCore.GlyphRect
---@param scale number
---@param atlasIndex number
---@param sprite UnityEngine.Sprite
---@return UnityEngine.TextCore.Text.SpriteGlyph
function UnityEngine.TextCore.Text.SpriteGlyph.New(index, metrics, glyphRect, scale, atlasIndex, sprite) end

---@class UnityEngine.TextCore.Text.TextAsset : UnityEngine.ScriptableObject
---@field version string
---@field instanceID number
---@field hashCode number
---@field material UnityEngine.Material
---@field materialHashCode number
UnityEngine.TextCore.Text.TextAsset = {}
---@alias CS.UnityEngine.TextCore.Text.TextAsset UnityEngine.TextCore.Text.TextAsset
CS.UnityEngine.TextCore.Text.TextAsset = UnityEngine.TextCore.Text.TextAsset


---@class UnityEngine.TextCore.Text.ColorGradientMode
---@field Single UnityEngine.TextCore.Text.ColorGradientMode
---@field HorizontalGradient UnityEngine.TextCore.Text.ColorGradientMode
---@field VerticalGradient UnityEngine.TextCore.Text.ColorGradientMode
---@field FourCornersGradient UnityEngine.TextCore.Text.ColorGradientMode
UnityEngine.TextCore.Text.ColorGradientMode = {}
---@alias CS.UnityEngine.TextCore.Text.ColorGradientMode UnityEngine.TextCore.Text.ColorGradientMode
CS.UnityEngine.TextCore.Text.ColorGradientMode = UnityEngine.TextCore.Text.ColorGradientMode


---@class UnityEngine.TextCore.Text.TextColorGradient : UnityEngine.ScriptableObject
---@field colorMode UnityEngine.TextCore.Text.ColorGradientMode
---@field topLeft UnityEngine.Color
---@field topRight UnityEngine.Color
---@field bottomLeft UnityEngine.Color
---@field bottomRight UnityEngine.Color
UnityEngine.TextCore.Text.TextColorGradient = {}
---@alias CS.UnityEngine.TextCore.Text.TextColorGradient UnityEngine.TextCore.Text.TextColorGradient
CS.UnityEngine.TextCore.Text.TextColorGradient = UnityEngine.TextCore.Text.TextColorGradient

---@overload fun() : UnityEngine.TextCore.Text.TextColorGradient
---@overload fun(color: UnityEngine.Color) : UnityEngine.TextCore.Text.TextColorGradient
---@param color0 UnityEngine.Color
---@param color1 UnityEngine.Color
---@param color2 UnityEngine.Color
---@param color3 UnityEngine.Color
---@return UnityEngine.TextCore.Text.TextColorGradient
function UnityEngine.TextCore.Text.TextColorGradient.New(color0, color1, color2, color3) end

---@class UnityEngine.TextCore.Text.TextElementType
---@field Character UnityEngine.TextCore.Text.TextElementType
---@field Sprite UnityEngine.TextCore.Text.TextElementType
UnityEngine.TextCore.Text.TextElementType = {}
---@alias CS.UnityEngine.TextCore.Text.TextElementType UnityEngine.TextCore.Text.TextElementType
CS.UnityEngine.TextCore.Text.TextElementType = UnityEngine.TextCore.Text.TextElementType


---@class UnityEngine.TextCore.Text.TextElement : System.Object
---@field elementType UnityEngine.TextCore.Text.TextElementType
---@field unicode number
---@field textAsset UnityEngine.TextCore.Text.TextAsset
---@field glyph UnityEngine.TextCore.Glyph
---@field glyphIndex number
---@field scale number
UnityEngine.TextCore.Text.TextElement = {}
---@alias CS.UnityEngine.TextCore.Text.TextElement UnityEngine.TextCore.Text.TextElement
CS.UnityEngine.TextCore.Text.TextElement = UnityEngine.TextCore.Text.TextElement


---@class UnityEngine.TextCore.Text.TextVertex : System.ValueType
---@field position UnityEngine.Vector3
---@field uv UnityEngine.Vector4
---@field uv2 UnityEngine.Vector2
---@field color UnityEngine.Color32
UnityEngine.TextCore.Text.TextVertex = {}
---@alias CS.UnityEngine.TextCore.Text.TextVertex UnityEngine.TextCore.Text.TextVertex
CS.UnityEngine.TextCore.Text.TextVertex = UnityEngine.TextCore.Text.TextVertex


---@class UnityEngine.TextCore.Text.TextElementInfo : System.ValueType
---@field character System.Char
---@field index number
---@field elementType UnityEngine.TextCore.Text.TextElementType
---@field stringLength number
---@field textElement UnityEngine.TextCore.Text.TextElement
---@field alternativeGlyph UnityEngine.TextCore.Glyph
---@field fontAsset UnityEngine.TextCore.Text.FontAsset
---@field spriteAsset UnityEngine.TextCore.Text.SpriteAsset
---@field spriteIndex number
---@field material UnityEngine.Material
---@field materialReferenceIndex number
---@field isUsingAlternateTypeface boolean
---@field pointSize number
---@field lineNumber number
---@field pageNumber number
---@field vertexIndex number
---@field vertexTopLeft UnityEngine.TextCore.Text.TextVertex
---@field vertexBottomLeft UnityEngine.TextCore.Text.TextVertex
---@field vertexTopRight UnityEngine.TextCore.Text.TextVertex
---@field vertexBottomRight UnityEngine.TextCore.Text.TextVertex
---@field topLeft UnityEngine.Vector3
---@field bottomLeft UnityEngine.Vector3
---@field topRight UnityEngine.Vector3
---@field bottomRight UnityEngine.Vector3
---@field origin number
---@field ascender number
---@field baseLine number
---@field descender number
---@field xAdvance number
---@field aspectRatio number
---@field scale number
---@field color UnityEngine.Color32
---@field underlineColor UnityEngine.Color32
---@field underlineVertexIndex number
---@field strikethroughColor UnityEngine.Color32
---@field strikethroughVertexIndex number
---@field highlightColor UnityEngine.Color32
---@field highlightState UnityEngine.TextCore.Text.HighlightState
---@field style UnityEngine.TextCore.Text.FontStyles
---@field isVisible boolean
UnityEngine.TextCore.Text.TextElementInfo = {}
---@alias CS.UnityEngine.TextCore.Text.TextElementInfo UnityEngine.TextCore.Text.TextElementInfo
CS.UnityEngine.TextCore.Text.TextElementInfo = UnityEngine.TextCore.Text.TextElementInfo

---@return string
function UnityEngine.TextCore.Text.TextElementInfo:ToString() end

---@class UnityEngine.TextCore.Text.TextEventManager : System.Object
---@field MATERIAL_PROPERTY_EVENT UnityEngine.TextCore.Text.FastAction
---@field FONT_PROPERTY_EVENT UnityEngine.TextCore.Text.FastAction
---@field SPRITE_ASSET_PROPERTY_EVENT UnityEngine.TextCore.Text.FastAction
---@field TEXTMESHPRO_PROPERTY_EVENT UnityEngine.TextCore.Text.FastAction
---@field DRAG_AND_DROP_MATERIAL_EVENT UnityEngine.TextCore.Text.FastAction
---@field TEXT_STYLE_PROPERTY_EVENT UnityEngine.TextCore.Text.FastAction
---@field COLOR_GRADIENT_PROPERTY_EVENT UnityEngine.TextCore.Text.FastAction
---@field TMP_SETTINGS_PROPERTY_EVENT UnityEngine.TextCore.Text.FastAction
---@field RESOURCE_LOAD_EVENT UnityEngine.TextCore.Text.FastAction
---@field TEXTMESHPRO_UGUI_PROPERTY_EVENT UnityEngine.TextCore.Text.FastAction
---@field OnPreRenderObject_Event UnityEngine.TextCore.Text.FastAction
---@field TEXT_CHANGED_EVENT UnityEngine.TextCore.Text.FastAction
UnityEngine.TextCore.Text.TextEventManager = {}
---@alias CS.UnityEngine.TextCore.Text.TextEventManager UnityEngine.TextCore.Text.TextEventManager
CS.UnityEngine.TextCore.Text.TextEventManager = UnityEngine.TextCore.Text.TextEventManager

function UnityEngine.TextCore.Text.TextEventManager.ON_PRE_RENDER_OBJECT_CHANGED() end
---@param isChanged boolean
---@param mat UnityEngine.Material
function UnityEngine.TextCore.Text.TextEventManager.ON_MATERIAL_PROPERTY_CHANGED(isChanged, mat) end
---@param isChanged boolean
---@param font UnityEngine.Object
function UnityEngine.TextCore.Text.TextEventManager.ON_FONT_PROPERTY_CHANGED(isChanged, font) end
---@param isChanged boolean
---@param obj UnityEngine.Object
function UnityEngine.TextCore.Text.TextEventManager.ON_SPRITE_ASSET_PROPERTY_CHANGED(isChanged, obj) end
---@param isChanged boolean
---@param obj UnityEngine.Object
function UnityEngine.TextCore.Text.TextEventManager.ON_TEXTMESHPRO_PROPERTY_CHANGED(isChanged, obj) end
---@param sender UnityEngine.GameObject
---@param currentMaterial UnityEngine.Material
---@param newMaterial UnityEngine.Material
function UnityEngine.TextCore.Text.TextEventManager.ON_DRAG_AND_DROP_MATERIAL_CHANGED(sender, currentMaterial, newMaterial) end
---@param isChanged boolean
function UnityEngine.TextCore.Text.TextEventManager.ON_TEXT_STYLE_PROPERTY_CHANGED(isChanged) end
---@param gradient UnityEngine.Object
function UnityEngine.TextCore.Text.TextEventManager.ON_COLOR_GRADIENT_PROPERTY_CHANGED(gradient) end
---@param obj UnityEngine.Object
function UnityEngine.TextCore.Text.TextEventManager.ON_TEXT_CHANGED(obj) end
function UnityEngine.TextCore.Text.TextEventManager.ON_TMP_SETTINGS_CHANGED() end
function UnityEngine.TextCore.Text.TextEventManager.ON_RESOURCES_LOADED() end
---@param isChanged boolean
---@param obj UnityEngine.Object
function UnityEngine.TextCore.Text.TextEventManager.ON_TEXTMESHPRO_UGUI_PROPERTY_CHANGED(isChanged, obj) end

---@class UnityEngine.TextCore.Text.TextGenerationSettings : System.Object
---@field text string
---@field screenRect UnityEngine.Rect
---@field margins UnityEngine.Vector4
---@field scale number
---@field fontAsset UnityEngine.TextCore.Text.FontAsset
---@field material UnityEngine.Material
---@field spriteAsset UnityEngine.TextCore.Text.SpriteAsset
---@field styleSheet UnityEngine.TextCore.Text.TextStyleSheet
---@field fontStyle UnityEngine.TextCore.Text.FontStyles
---@field textSettings UnityEngine.TextCore.Text.TextSettings
---@field textAlignment UnityEngine.TextCore.Text.TextAlignment
---@field overflowMode UnityEngine.TextCore.Text.TextOverflowMode
---@field wordWrap boolean
---@field wordWrappingRatio number
---@field color UnityEngine.Color
---@field fontColorGradient UnityEngine.TextCore.Text.TextColorGradient
---@field fontColorGradientPreset UnityEngine.TextCore.Text.TextColorGradient
---@field tintSprites boolean
---@field overrideRichTextColors boolean
---@field shouldConvertToLinearSpace boolean
---@field fontSize number
---@field autoSize boolean
---@field fontSizeMin number
---@field fontSizeMax number
---@field enableKerning boolean
---@field richText boolean
---@field isRightToLeft boolean
---@field extraPadding number
---@field parseControlCharacters boolean
---@field isOrthographic boolean
---@field tagNoParsing boolean
---@field characterSpacing number
---@field wordSpacing number
---@field lineSpacing number
---@field paragraphSpacing number
---@field lineSpacingMax number
---@field textWrappingMode UnityEngine.TextCore.Text.TextWrappingMode
---@field maxVisibleCharacters number
---@field maxVisibleWords number
---@field maxVisibleLines number
---@field firstVisibleCharacter number
---@field useMaxVisibleDescender boolean
---@field fontWeight UnityEngine.TextCore.Text.TextFontWeight
---@field pageToDisplay number
---@field horizontalMapping UnityEngine.TextCore.Text.TextureMapping
---@field verticalMapping UnityEngine.TextCore.Text.TextureMapping
---@field uvLineOffset number
---@field geometrySortingOrder UnityEngine.TextCore.Text.VertexSortingOrder
---@field inverseYAxis boolean
---@field charWidthMaxAdj number
UnityEngine.TextCore.Text.TextGenerationSettings = {}
---@alias CS.UnityEngine.TextCore.Text.TextGenerationSettings UnityEngine.TextCore.Text.TextGenerationSettings
CS.UnityEngine.TextCore.Text.TextGenerationSettings = UnityEngine.TextCore.Text.TextGenerationSettings

---@return UnityEngine.TextCore.Text.TextGenerationSettings
function UnityEngine.TextCore.Text.TextGenerationSettings.New() end
---@overload fun(self: UnityEngine.TextCore.Text.TextGenerationSettings, other: UnityEngine.TextCore.Text.TextGenerationSettings) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.TextCore.Text.TextGenerationSettings:Equals(obj) end
---@return number
function UnityEngine.TextCore.Text.TextGenerationSettings:GetHashCode() end
---@return string
function UnityEngine.TextCore.Text.TextGenerationSettings:ToString() end

---@class UnityEngine.TextCore.Text.TextGenerator : System.Object
---@field isTextTruncated boolean
UnityEngine.TextCore.Text.TextGenerator = {}
---@alias CS.UnityEngine.TextCore.Text.TextGenerator UnityEngine.TextCore.Text.TextGenerator
CS.UnityEngine.TextCore.Text.TextGenerator = UnityEngine.TextCore.Text.TextGenerator

---@return UnityEngine.TextCore.Text.TextGenerator
function UnityEngine.TextCore.Text.TextGenerator.New() end
---@param settings UnityEngine.TextCore.Text.TextGenerationSettings
---@param textInfo UnityEngine.TextCore.Text.TextInfo
function UnityEngine.TextCore.Text.TextGenerator.GenerateText(settings, textInfo) end
---@overload fun(settings: UnityEngine.TextCore.Text.TextGenerationSettings, index: number) : UnityEngine.Vector2
---@param textInfo UnityEngine.TextCore.Text.TextInfo
---@param screenRect UnityEngine.Rect
---@param index number
---@param inverseYAxis boolean
---@return UnityEngine.Vector2
function UnityEngine.TextCore.Text.TextGenerator.GetCursorPosition(textInfo, screenRect, index, inverseYAxis) end
---@param settings UnityEngine.TextCore.Text.TextGenerationSettings
---@param textInfo UnityEngine.TextCore.Text.TextInfo
---@return number
function UnityEngine.TextCore.Text.TextGenerator.GetPreferredWidth(settings, textInfo) end
---@param settings UnityEngine.TextCore.Text.TextGenerationSettings
---@param textInfo UnityEngine.TextCore.Text.TextInfo
---@return number
function UnityEngine.TextCore.Text.TextGenerator.GetPreferredHeight(settings, textInfo) end
---@param settings UnityEngine.TextCore.Text.TextGenerationSettings
---@param textInfo UnityEngine.TextCore.Text.TextInfo
---@return UnityEngine.Vector2
function UnityEngine.TextCore.Text.TextGenerator.GetPreferredValues(settings, textInfo) end

---@class UnityEngine.TextCore.Text.TextGenerator.MissingCharacterEventCallback : System.MulticastDelegate
UnityEngine.TextCore.Text.TextGenerator.MissingCharacterEventCallback = {}
---@alias CS.UnityEngine.TextCore.Text.TextGenerator.MissingCharacterEventCallback UnityEngine.TextCore.Text.TextGenerator.MissingCharacterEventCallback
CS.UnityEngine.TextCore.Text.TextGenerator.MissingCharacterEventCallback = UnityEngine.TextCore.Text.TextGenerator.MissingCharacterEventCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.TextCore.Text.TextGenerator.MissingCharacterEventCallback
function UnityEngine.TextCore.Text.TextGenerator.MissingCharacterEventCallback.New(object, method) end
---@param unicode number
---@param stringIndex number
---@param text UnityEngine.TextCore.Text.TextInfo
---@param fontAsset UnityEngine.TextCore.Text.FontAsset
function UnityEngine.TextCore.Text.TextGenerator.MissingCharacterEventCallback:Invoke(unicode, stringIndex, text, fontAsset) end
---@param unicode number
---@param stringIndex number
---@param text UnityEngine.TextCore.Text.TextInfo
---@param fontAsset UnityEngine.TextCore.Text.FontAsset
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.TextCore.Text.TextGenerator.MissingCharacterEventCallback:BeginInvoke(unicode, stringIndex, text, fontAsset, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.TextCore.Text.TextGenerator.MissingCharacterEventCallback:EndInvoke(result) end

---@class UnityEngine.TextCore.Text.TextGenerator.SpecialCharacter : System.ValueType
---@field character UnityEngine.TextCore.Text.Character
---@field fontAsset UnityEngine.TextCore.Text.FontAsset
---@field material UnityEngine.Material
---@field materialIndex number
UnityEngine.TextCore.Text.TextGenerator.SpecialCharacter = {}
---@alias CS.UnityEngine.TextCore.Text.TextGenerator.SpecialCharacter UnityEngine.TextCore.Text.TextGenerator.SpecialCharacter
CS.UnityEngine.TextCore.Text.TextGenerator.SpecialCharacter = UnityEngine.TextCore.Text.TextGenerator.SpecialCharacter

---@param character UnityEngine.TextCore.Text.Character
---@param materialIndex number
---@return UnityEngine.TextCore.Text.TextGenerator.SpecialCharacter
function UnityEngine.TextCore.Text.TextGenerator.SpecialCharacter.New(character, materialIndex) end

---@class UnityEngine.TextCore.Text.HorizontalAlignment
---@field Left UnityEngine.TextCore.Text.HorizontalAlignment
---@field Center UnityEngine.TextCore.Text.HorizontalAlignment
---@field Right UnityEngine.TextCore.Text.HorizontalAlignment
---@field Justified UnityEngine.TextCore.Text.HorizontalAlignment
---@field Flush UnityEngine.TextCore.Text.HorizontalAlignment
---@field Geometry UnityEngine.TextCore.Text.HorizontalAlignment
UnityEngine.TextCore.Text.HorizontalAlignment = {}
---@alias CS.UnityEngine.TextCore.Text.HorizontalAlignment UnityEngine.TextCore.Text.HorizontalAlignment
CS.UnityEngine.TextCore.Text.HorizontalAlignment = UnityEngine.TextCore.Text.HorizontalAlignment


---@class UnityEngine.TextCore.Text.VerticalAlignment
---@field Top UnityEngine.TextCore.Text.VerticalAlignment
---@field Middle UnityEngine.TextCore.Text.VerticalAlignment
---@field Bottom UnityEngine.TextCore.Text.VerticalAlignment
---@field Baseline UnityEngine.TextCore.Text.VerticalAlignment
---@field Midline UnityEngine.TextCore.Text.VerticalAlignment
---@field Capline UnityEngine.TextCore.Text.VerticalAlignment
UnityEngine.TextCore.Text.VerticalAlignment = {}
---@alias CS.UnityEngine.TextCore.Text.VerticalAlignment UnityEngine.TextCore.Text.VerticalAlignment
CS.UnityEngine.TextCore.Text.VerticalAlignment = UnityEngine.TextCore.Text.VerticalAlignment


---@class UnityEngine.TextCore.Text.TextAlignment
---@field TopLeft UnityEngine.TextCore.Text.TextAlignment
---@field TopCenter UnityEngine.TextCore.Text.TextAlignment
---@field TopRight UnityEngine.TextCore.Text.TextAlignment
---@field TopJustified UnityEngine.TextCore.Text.TextAlignment
---@field TopFlush UnityEngine.TextCore.Text.TextAlignment
---@field TopGeoAligned UnityEngine.TextCore.Text.TextAlignment
---@field MiddleLeft UnityEngine.TextCore.Text.TextAlignment
---@field MiddleCenter UnityEngine.TextCore.Text.TextAlignment
---@field MiddleRight UnityEngine.TextCore.Text.TextAlignment
---@field MiddleJustified UnityEngine.TextCore.Text.TextAlignment
---@field MiddleFlush UnityEngine.TextCore.Text.TextAlignment
---@field MiddleGeoAligned UnityEngine.TextCore.Text.TextAlignment
---@field BottomLeft UnityEngine.TextCore.Text.TextAlignment
---@field BottomCenter UnityEngine.TextCore.Text.TextAlignment
---@field BottomRight UnityEngine.TextCore.Text.TextAlignment
---@field BottomJustified UnityEngine.TextCore.Text.TextAlignment
---@field BottomFlush UnityEngine.TextCore.Text.TextAlignment
---@field BottomGeoAligned UnityEngine.TextCore.Text.TextAlignment
---@field BaselineLeft UnityEngine.TextCore.Text.TextAlignment
---@field BaselineCenter UnityEngine.TextCore.Text.TextAlignment
---@field BaselineRight UnityEngine.TextCore.Text.TextAlignment
---@field BaselineJustified UnityEngine.TextCore.Text.TextAlignment
---@field BaselineFlush UnityEngine.TextCore.Text.TextAlignment
---@field BaselineGeoAligned UnityEngine.TextCore.Text.TextAlignment
---@field MidlineLeft UnityEngine.TextCore.Text.TextAlignment
---@field MidlineCenter UnityEngine.TextCore.Text.TextAlignment
---@field MidlineRight UnityEngine.TextCore.Text.TextAlignment
---@field MidlineJustified UnityEngine.TextCore.Text.TextAlignment
---@field MidlineFlush UnityEngine.TextCore.Text.TextAlignment
---@field MidlineGeoAligned UnityEngine.TextCore.Text.TextAlignment
---@field CaplineLeft UnityEngine.TextCore.Text.TextAlignment
---@field CaplineCenter UnityEngine.TextCore.Text.TextAlignment
---@field CaplineRight UnityEngine.TextCore.Text.TextAlignment
---@field CaplineJustified UnityEngine.TextCore.Text.TextAlignment
---@field CaplineFlush UnityEngine.TextCore.Text.TextAlignment
---@field CaplineGeoAligned UnityEngine.TextCore.Text.TextAlignment
UnityEngine.TextCore.Text.TextAlignment = {}
---@alias CS.UnityEngine.TextCore.Text.TextAlignment UnityEngine.TextCore.Text.TextAlignment
CS.UnityEngine.TextCore.Text.TextAlignment = UnityEngine.TextCore.Text.TextAlignment


---@class UnityEngine.TextCore.Text.FontStyles
---@field Normal UnityEngine.TextCore.Text.FontStyles
---@field Bold UnityEngine.TextCore.Text.FontStyles
---@field Italic UnityEngine.TextCore.Text.FontStyles
---@field Underline UnityEngine.TextCore.Text.FontStyles
---@field LowerCase UnityEngine.TextCore.Text.FontStyles
---@field UpperCase UnityEngine.TextCore.Text.FontStyles
---@field SmallCaps UnityEngine.TextCore.Text.FontStyles
---@field Strikethrough UnityEngine.TextCore.Text.FontStyles
---@field Superscript UnityEngine.TextCore.Text.FontStyles
---@field Subscript UnityEngine.TextCore.Text.FontStyles
---@field Highlight UnityEngine.TextCore.Text.FontStyles
UnityEngine.TextCore.Text.FontStyles = {}
---@alias CS.UnityEngine.TextCore.Text.FontStyles UnityEngine.TextCore.Text.FontStyles
CS.UnityEngine.TextCore.Text.FontStyles = UnityEngine.TextCore.Text.FontStyles


---@class UnityEngine.TextCore.Text.TextOverflowMode
---@field Overflow UnityEngine.TextCore.Text.TextOverflowMode
---@field Ellipsis UnityEngine.TextCore.Text.TextOverflowMode
---@field Masking UnityEngine.TextCore.Text.TextOverflowMode
---@field Truncate UnityEngine.TextCore.Text.TextOverflowMode
---@field ScrollRect UnityEngine.TextCore.Text.TextOverflowMode
---@field Page UnityEngine.TextCore.Text.TextOverflowMode
---@field Linked UnityEngine.TextCore.Text.TextOverflowMode
UnityEngine.TextCore.Text.TextOverflowMode = {}
---@alias CS.UnityEngine.TextCore.Text.TextOverflowMode UnityEngine.TextCore.Text.TextOverflowMode
CS.UnityEngine.TextCore.Text.TextOverflowMode = UnityEngine.TextCore.Text.TextOverflowMode


---@class UnityEngine.TextCore.Text.TextureMapping
---@field Character UnityEngine.TextCore.Text.TextureMapping
---@field Line UnityEngine.TextCore.Text.TextureMapping
---@field Paragraph UnityEngine.TextCore.Text.TextureMapping
---@field MatchAspect UnityEngine.TextCore.Text.TextureMapping
UnityEngine.TextCore.Text.TextureMapping = {}
---@alias CS.UnityEngine.TextCore.Text.TextureMapping UnityEngine.TextCore.Text.TextureMapping
CS.UnityEngine.TextCore.Text.TextureMapping = UnityEngine.TextCore.Text.TextureMapping


---@class UnityEngine.TextCore.Text.TextWrappingMode
---@field NoWrap UnityEngine.TextCore.Text.TextWrappingMode
---@field Normal UnityEngine.TextCore.Text.TextWrappingMode
---@field PreserveWhitespace UnityEngine.TextCore.Text.TextWrappingMode
---@field PreserveWhitespaceNoWrap UnityEngine.TextCore.Text.TextWrappingMode
UnityEngine.TextCore.Text.TextWrappingMode = {}
---@alias CS.UnityEngine.TextCore.Text.TextWrappingMode UnityEngine.TextCore.Text.TextWrappingMode
CS.UnityEngine.TextCore.Text.TextWrappingMode = UnityEngine.TextCore.Text.TextWrappingMode


---@class UnityEngine.TextCore.Text.TextInputSource
---@field TextInputBox UnityEngine.TextCore.Text.TextInputSource
---@field SetText UnityEngine.TextCore.Text.TextInputSource
---@field SetTextArray UnityEngine.TextCore.Text.TextInputSource
---@field TextString UnityEngine.TextCore.Text.TextInputSource
UnityEngine.TextCore.Text.TextInputSource = {}
---@alias CS.UnityEngine.TextCore.Text.TextInputSource UnityEngine.TextCore.Text.TextInputSource
CS.UnityEngine.TextCore.Text.TextInputSource = UnityEngine.TextCore.Text.TextInputSource


---@class UnityEngine.TextCore.Text.MeshExtents : System.ValueType
---@field min UnityEngine.Vector2
---@field max UnityEngine.Vector2
UnityEngine.TextCore.Text.MeshExtents = {}
---@alias CS.UnityEngine.TextCore.Text.MeshExtents UnityEngine.TextCore.Text.MeshExtents
CS.UnityEngine.TextCore.Text.MeshExtents = UnityEngine.TextCore.Text.MeshExtents

---@param min UnityEngine.Vector2
---@param max UnityEngine.Vector2
---@return UnityEngine.TextCore.Text.MeshExtents
function UnityEngine.TextCore.Text.MeshExtents.New(min, max) end
---@return string
function UnityEngine.TextCore.Text.MeshExtents:ToString() end

---@class UnityEngine.TextCore.Text.XmlTagAttribute : System.ValueType
---@field nameHashCode number
---@field valueType UnityEngine.TextCore.Text.TagValueType
---@field valueStartIndex number
---@field valueLength number
---@field valueHashCode number
UnityEngine.TextCore.Text.XmlTagAttribute = {}
---@alias CS.UnityEngine.TextCore.Text.XmlTagAttribute UnityEngine.TextCore.Text.XmlTagAttribute
CS.UnityEngine.TextCore.Text.XmlTagAttribute = UnityEngine.TextCore.Text.XmlTagAttribute


---@class UnityEngine.TextCore.Text.RichTextTagAttribute : System.ValueType
---@field nameHashCode number
---@field valueHashCode number
---@field valueType UnityEngine.TextCore.Text.TagValueType
---@field valueStartIndex number
---@field valueLength number
---@field unitType UnityEngine.TextCore.Text.TagUnitType
UnityEngine.TextCore.Text.RichTextTagAttribute = {}
---@alias CS.UnityEngine.TextCore.Text.RichTextTagAttribute UnityEngine.TextCore.Text.RichTextTagAttribute
CS.UnityEngine.TextCore.Text.RichTextTagAttribute = UnityEngine.TextCore.Text.RichTextTagAttribute


---@class UnityEngine.TextCore.Text.TextProcessingElement : System.ValueType
---@field elementType UnityEngine.TextCore.Text.TextProcessingElementType
---@field unicode number
---@field stringIndex number
---@field length number
UnityEngine.TextCore.Text.TextProcessingElement = {}
---@alias CS.UnityEngine.TextCore.Text.TextProcessingElement UnityEngine.TextCore.Text.TextProcessingElement
CS.UnityEngine.TextCore.Text.TextProcessingElement = UnityEngine.TextCore.Text.TextProcessingElement


---@class UnityEngine.TextCore.Text.TextBackingContainer : System.ValueType
---@field Text System.UInt32[]
---@field Capacity number
---@field Count number
---@field Item number
UnityEngine.TextCore.Text.TextBackingContainer = {}
---@alias CS.UnityEngine.TextCore.Text.TextBackingContainer UnityEngine.TextCore.Text.TextBackingContainer
CS.UnityEngine.TextCore.Text.TextBackingContainer = UnityEngine.TextCore.Text.TextBackingContainer

---@param size number
---@return UnityEngine.TextCore.Text.TextBackingContainer
function UnityEngine.TextCore.Text.TextBackingContainer.New(size) end
---@param size number
function UnityEngine.TextCore.Text.TextBackingContainer:Resize(size) end

---@class UnityEngine.TextCore.Text.CharacterSubstitution : System.ValueType
---@field index number
---@field unicode number
UnityEngine.TextCore.Text.CharacterSubstitution = {}
---@alias CS.UnityEngine.TextCore.Text.CharacterSubstitution UnityEngine.TextCore.Text.CharacterSubstitution
CS.UnityEngine.TextCore.Text.CharacterSubstitution = UnityEngine.TextCore.Text.CharacterSubstitution

---@param index number
---@param unicode number
---@return UnityEngine.TextCore.Text.CharacterSubstitution
function UnityEngine.TextCore.Text.CharacterSubstitution.New(index, unicode) end

---@class UnityEngine.TextCore.Text.Offset : System.ValueType
---@field zero UnityEngine.TextCore.Text.Offset
---@field left number
---@field right number
---@field top number
---@field bottom number
---@field horizontal number
---@field vertical number
UnityEngine.TextCore.Text.Offset = {}
---@alias CS.UnityEngine.TextCore.Text.Offset UnityEngine.TextCore.Text.Offset
CS.UnityEngine.TextCore.Text.Offset = UnityEngine.TextCore.Text.Offset

---@overload fun(left: number, right: number, top: number, bottom: number) : UnityEngine.TextCore.Text.Offset
---@param horizontal number
---@param vertical number
---@return UnityEngine.TextCore.Text.Offset
function UnityEngine.TextCore.Text.Offset.New(horizontal, vertical) end
---@return number
function UnityEngine.TextCore.Text.Offset:GetHashCode() end
---@overload fun(self: UnityEngine.TextCore.Text.Offset, obj: System.Object) : boolean
---@param other UnityEngine.TextCore.Text.Offset
---@return boolean
function UnityEngine.TextCore.Text.Offset:Equals(other) end

---@class UnityEngine.TextCore.Text.HighlightState : System.ValueType
---@field color UnityEngine.Color32
---@field padding UnityEngine.TextCore.Text.Offset
UnityEngine.TextCore.Text.HighlightState = {}
---@alias CS.UnityEngine.TextCore.Text.HighlightState UnityEngine.TextCore.Text.HighlightState
CS.UnityEngine.TextCore.Text.HighlightState = UnityEngine.TextCore.Text.HighlightState

---@param color UnityEngine.Color32
---@param padding UnityEngine.TextCore.Text.Offset
---@return UnityEngine.TextCore.Text.HighlightState
function UnityEngine.TextCore.Text.HighlightState.New(color, padding) end
---@return number
function UnityEngine.TextCore.Text.HighlightState:GetHashCode() end
---@overload fun(self: UnityEngine.TextCore.Text.HighlightState, obj: System.Object) : boolean
---@param other UnityEngine.TextCore.Text.HighlightState
---@return boolean
function UnityEngine.TextCore.Text.HighlightState:Equals(other) end

---@class UnityEngine.TextCore.Text.WordWrapState : System.ValueType
---@field previousWordBreak number
---@field totalCharacterCount number
---@field visibleCharacterCount number
---@field visibleSpaceCount number
---@field visibleSpriteCount number
---@field visibleLinkCount number
---@field firstCharacterIndex number
---@field firstVisibleCharacterIndex number
---@field lastCharacterIndex number
---@field lastVisibleCharIndex number
---@field lineNumber number
---@field maxCapHeight number
---@field maxAscender number
---@field maxDescender number
---@field maxLineAscender number
---@field maxLineDescender number
---@field startOfLineAscender number
---@field xAdvance number
---@field preferredWidth number
---@field preferredHeight number
---@field previousLineScale number
---@field pageAscender number
---@field wordCount number
---@field fontStyle UnityEngine.TextCore.Text.FontStyles
---@field fontScale number
---@field fontScaleMultiplier number
---@field italicAngle number
---@field currentFontSize number
---@field baselineOffset number
---@field lineOffset number
---@field textInfo UnityEngine.TextCore.Text.TextInfo
---@field lineInfo UnityEngine.TextCore.Text.LineInfo
---@field vertexColor UnityEngine.Color32
---@field underlineColor UnityEngine.Color32
---@field strikethroughColor UnityEngine.Color32
---@field highlightColor UnityEngine.Color32
---@field highlightState UnityEngine.TextCore.Text.HighlightState
---@field basicStyleStack UnityEngine.TextCore.Text.FontStyleStack
---@field italicAngleStack UnityEngine.TextCore.Text.TextProcessingStack
---@field colorStack UnityEngine.TextCore.Text.TextProcessingStack
---@field underlineColorStack UnityEngine.TextCore.Text.TextProcessingStack
---@field strikethroughColorStack UnityEngine.TextCore.Text.TextProcessingStack
---@field highlightColorStack UnityEngine.TextCore.Text.TextProcessingStack
---@field highlightStateStack UnityEngine.TextCore.Text.TextProcessingStack
---@field colorGradientStack UnityEngine.TextCore.Text.TextProcessingStack
---@field sizeStack UnityEngine.TextCore.Text.TextProcessingStack
---@field indentStack UnityEngine.TextCore.Text.TextProcessingStack
---@field fontWeightStack UnityEngine.TextCore.Text.TextProcessingStack
---@field styleStack UnityEngine.TextCore.Text.TextProcessingStack
---@field baselineStack UnityEngine.TextCore.Text.TextProcessingStack
---@field actionStack UnityEngine.TextCore.Text.TextProcessingStack
---@field materialReferenceStack UnityEngine.TextCore.Text.TextProcessingStack
---@field lineJustificationStack UnityEngine.TextCore.Text.TextProcessingStack
---@field lastBaseGlyphIndex number
---@field spriteAnimationId number
---@field currentFontAsset UnityEngine.TextCore.Text.FontAsset
---@field currentSpriteAsset UnityEngine.TextCore.Text.SpriteAsset
---@field currentMaterial UnityEngine.Material
---@field currentMaterialIndex number
---@field meshExtents UnityEngine.TextCore.Text.Extents
---@field tagNoParsing boolean
---@field isNonBreakingSpace boolean
---@field isDrivenLineSpacing boolean
---@field fxScale UnityEngine.Vector3
---@field fxRotation UnityEngine.Quaternion
UnityEngine.TextCore.Text.WordWrapState = {}
---@alias CS.UnityEngine.TextCore.Text.WordWrapState UnityEngine.TextCore.Text.WordWrapState
CS.UnityEngine.TextCore.Text.WordWrapState = UnityEngine.TextCore.Text.WordWrapState


---@class UnityEngine.TextCore.Text.TextGeneratorUtilities : System.Object
---@field largePositiveVector2 UnityEngine.Vector2
---@field largeNegativeVector2 UnityEngine.Vector2
---@field largePositiveFloat number
---@field largeNegativeFloat number
UnityEngine.TextCore.Text.TextGeneratorUtilities = {}
---@alias CS.UnityEngine.TextCore.Text.TextGeneratorUtilities UnityEngine.TextCore.Text.TextGeneratorUtilities
CS.UnityEngine.TextCore.Text.TextGeneratorUtilities = UnityEngine.TextCore.Text.TextGeneratorUtilities

---@param a number
---@param b number
---@return boolean
function UnityEngine.TextCore.Text.TextGeneratorUtilities.Approximately(a, b) end
---@overload fun(hexChars: System.Char[], tagCount: number) : UnityEngine.Color32
---@param hexChars System.Char[]
---@param startIndex number
---@param length number
---@return UnityEngine.Color32
function UnityEngine.TextCore.Text.TextGeneratorUtilities.HexCharsToColor(hexChars, startIndex, length) end
---@param hex System.Char
---@return number
function UnityEngine.TextCore.Text.TextGeneratorUtilities.HexToInt(hex) end
---@overload fun(chars: System.Char[], startIndex: number, length: number) : number
---@param chars System.Char[]
---@param startIndex number
---@param length number
---@param out_lastIndex number
---@return number,number
function UnityEngine.TextCore.Text.TextGeneratorUtilities.ConvertToFloat(chars, startIndex, length, out_lastIndex) end
---@param x number
---@param y number
---@param scale number
---@return UnityEngine.Vector2
function UnityEngine.TextCore.Text.TextGeneratorUtilities.PackUV(x, y, scale) end
---@overload fun(ref_sourceText: UnityEngine.TextCore.Text.TextBackingContainer, srcIndex: number, out_srcOffset: number, ref_charBuffer: UnityEngine.TextCore.Text.TextProcessingElement[], ref_writeIndex: number, ref_textStyleStackDepth: number, ref_textStyleStacks: UnityEngine.TextCore.Text.TextProcessingStack, ref_generationSettings: UnityEngine.TextCore.Text.TextGenerationSettings) : boolean, UnityEngine.TextCore.Text.TextBackingContainer, number, UnityEngine.TextCore.Text.TextProcessingElement[], number, number, UnityEngine.TextCore.Text.TextProcessingStack, UnityEngine.TextCore.Text.TextGenerationSettings
---@param ref_charBuffer UnityEngine.TextCore.Text.TextProcessingElement[]
---@param ref_writeIndex number
---@param ref_textStyleStackDepth number
---@param ref_textStyleStacks UnityEngine.TextCore.Text.TextProcessingStack
---@param ref_generationSettings UnityEngine.TextCore.Text.TextGenerationSettings
---@return ,UnityEngine.TextCore.Text.TextProcessingElement[],number,number,UnityEngine.TextCore.Text.TextProcessingStack,UnityEngine.TextCore.Text.TextGenerationSettings
function UnityEngine.TextCore.Text.TextGeneratorUtilities.ReplaceOpeningStyleTag(ref_charBuffer, ref_writeIndex, ref_textStyleStackDepth, ref_textStyleStacks, ref_generationSettings) end
---@param ref_charBuffer UnityEngine.TextCore.Text.TextProcessingElement[]
---@param ref_writeIndex number
---@param ref_textStyleStackDepth number
---@param ref_textStyleStacks UnityEngine.TextCore.Text.TextProcessingStack
---@param ref_generationSettings UnityEngine.TextCore.Text.TextGenerationSettings
---@return ,UnityEngine.TextCore.Text.TextProcessingElement[],number,number,UnityEngine.TextCore.Text.TextProcessingStack,UnityEngine.TextCore.Text.TextGenerationSettings
function UnityEngine.TextCore.Text.TextGeneratorUtilities.ReplaceClosingStyleTag(ref_charBuffer, ref_writeIndex, ref_textStyleStackDepth, ref_textStyleStacks, ref_generationSettings) end
---@param generationSetting UnityEngine.TextCore.Text.TextGenerationSettings
---@param hashCode number
---@return UnityEngine.TextCore.Text.TextStyle
function UnityEngine.TextCore.Text.TextGeneratorUtilities.GetStyle(generationSetting, hashCode) end
---@overload fun(ref_text: System.UInt32[], index: number, out_closeIndex: number) : number, System.UInt32[], number
---@param ref_text UnityEngine.TextCore.Text.TextBackingContainer
---@param index number
---@param out_closeIndex number
---@return number,UnityEngine.TextCore.Text.TextBackingContainer,number
function UnityEngine.TextCore.Text.TextGeneratorUtilities.GetStyleHashCode(ref_text, index, out_closeIndex) end
---@overload fun(text: System.UInt32[], i: number) : number
---@param text UnityEngine.TextCore.Text.TextBackingContainer
---@param i number
---@return number
function UnityEngine.TextCore.Text.TextGeneratorUtilities.GetUTF16(text, i) end
---@overload fun(text: System.UInt32[], i: number) : number
---@param text UnityEngine.TextCore.Text.TextBackingContainer
---@param i number
---@return number
function UnityEngine.TextCore.Text.TextGeneratorUtilities.GetUTF32(text, i) end
---@param i number
---@param convertToLinearSpace boolean
---@param generationSettings UnityEngine.TextCore.Text.TextGenerationSettings
---@param textInfo UnityEngine.TextCore.Text.TextInfo
function UnityEngine.TextCore.Text.TextGeneratorUtilities.FillCharacterVertexBuffers(i, convertToLinearSpace, generationSettings, textInfo) end
---@param i number
---@param convertToLinearSpace boolean
---@param generationSettings UnityEngine.TextCore.Text.TextGenerationSettings
---@param textInfo UnityEngine.TextCore.Text.TextInfo
function UnityEngine.TextCore.Text.TextGeneratorUtilities.FillSpriteVertexBuffers(i, convertToLinearSpace, generationSettings, textInfo) end
---@param startIndex number
---@param endIndex number
---@param offset number
---@param textInfo UnityEngine.TextCore.Text.TextInfo
function UnityEngine.TextCore.Text.TextGeneratorUtilities.AdjustLineOffset(startIndex, endIndex, offset, textInfo) end
---@param size number
---@param textInfo UnityEngine.TextCore.Text.TextInfo
function UnityEngine.TextCore.Text.TextGeneratorUtilities.ResizeLineExtents(size, textInfo) end
---@param fontStyle UnityEngine.FontStyle
---@return UnityEngine.TextCore.Text.FontStyles
function UnityEngine.TextCore.Text.TextGeneratorUtilities.LegacyStyleToNewStyle(fontStyle) end
---@param anchor UnityEngine.TextAnchor
---@return UnityEngine.TextCore.Text.TextAlignment
function UnityEngine.TextCore.Text.TextGeneratorUtilities.LegacyAlignmentToNewAlignment(anchor) end
---@param highSurrogate number
---@param lowSurrogate number
---@return number
function UnityEngine.TextCore.Text.TextGeneratorUtilities.ConvertToUTF32(highSurrogate, lowSurrogate) end
---@overload fun(styleDefinition: UnityEngine.TextCore.Text.TextBackingContainer, readIndex: number) : number
---@param styleDefinition System.UInt32[]
---@param readIndex number
---@return number
function UnityEngine.TextCore.Text.TextGeneratorUtilities.GetMarkupTagHashCode(styleDefinition, readIndex) end
---@overload fun(c: System.Char) : System.Char
---@param c number
---@return number
function UnityEngine.TextCore.Text.TextGeneratorUtilities.ToUpperASCIIFast(c) end
---@param c System.Char
---@return System.Char
function UnityEngine.TextCore.Text.TextGeneratorUtilities.ToUpperFast(c) end
---@param chars System.Char[]
---@param startIndex number
---@param length number
---@param ref_parameters System.Single[]
---@return number,System.Single[]
function UnityEngine.TextCore.Text.TextGeneratorUtilities.GetAttributeParameters(chars, startIndex, length, ref_parameters) end
---@param glyphRenderMode UnityEngine.TextCore.LowLevel.GlyphRenderMode
---@return boolean
function UnityEngine.TextCore.Text.TextGeneratorUtilities.IsBitmapRendering(glyphRenderMode) end
---@param c number
---@return boolean
function UnityEngine.TextCore.Text.TextGeneratorUtilities.IsBaseGlyph(c) end
---@param c1 UnityEngine.Color
---@param c2 UnityEngine.Color
---@return UnityEngine.Color
function UnityEngine.TextCore.Text.TextGeneratorUtilities.MinAlpha(c1, c2) end
---@param text UnityEngine.TextCore.Text.TextBackingContainer
---@param index number
---@return boolean
function UnityEngine.TextCore.Text.TextGeneratorUtilities.IsValidUTF16(text, index) end
---@param text UnityEngine.TextCore.Text.TextBackingContainer
---@param index number
---@return boolean
function UnityEngine.TextCore.Text.TextGeneratorUtilities.IsValidUTF32(text, index) end

---@class UnityEngine.TextCore.Text.TextHandle : System.Object
UnityEngine.TextCore.Text.TextHandle = {}
---@alias CS.UnityEngine.TextCore.Text.TextHandle UnityEngine.TextCore.Text.TextHandle
CS.UnityEngine.TextCore.Text.TextHandle = UnityEngine.TextCore.Text.TextHandle

---@return UnityEngine.TextCore.Text.TextHandle
function UnityEngine.TextCore.Text.TextHandle.New() end
function UnityEngine.TextCore.Text.TextHandle:SetDirty() end
---@return boolean
function UnityEngine.TextCore.Text.TextHandle:IsDirty() end
---@param index number
---@param inverseYAxis boolean
---@return UnityEngine.Vector2
function UnityEngine.TextCore.Text.TextHandle:GetCursorPositionFromStringIndexUsingCharacterHeight(index, inverseYAxis) end
---@param index number
---@param useXAdvance boolean
---@param inverseYAxis boolean
---@return UnityEngine.Vector2
function UnityEngine.TextCore.Text.TextHandle:GetCursorPositionFromStringIndexUsingLineHeight(index, useXAdvance, inverseYAxis) end
---@param position UnityEngine.Vector2
---@param inverseYAxis boolean
---@return number
function UnityEngine.TextCore.Text.TextHandle:GetCursorIndexFromPosition(position, inverseYAxis) end
---@param originalPos number
---@return number
function UnityEngine.TextCore.Text.TextHandle:LineDownCharacterPosition(originalPos) end
---@param originalPos number
---@return number
function UnityEngine.TextCore.Text.TextHandle:LineUpCharacterPosition(originalPos) end
---@param cursorIndex number
---@return number
function UnityEngine.TextCore.Text.TextHandle:FindWordIndex(cursorIndex) end
---@param position UnityEngine.Vector2
---@return number
function UnityEngine.TextCore.Text.TextHandle:FindNearestLine(position) end
---@param position UnityEngine.Vector2
---@param line number
---@param visibleOnly boolean
---@return number
function UnityEngine.TextCore.Text.TextHandle:FindNearestCharacterOnLine(position, line, visibleOnly) end
---@param position UnityEngine.Vector3
---@param inverseYAxis boolean
---@return number
function UnityEngine.TextCore.Text.TextHandle:FindIntersectingLink(position, inverseYAxis) end
---@param index number
---@return number
function UnityEngine.TextCore.Text.TextHandle:GetLineNumber(index) end
---@param lineNumber number
---@return number
function UnityEngine.TextCore.Text.TextHandle:GetLineHeight(lineNumber) end
---@param index number
---@return number
function UnityEngine.TextCore.Text.TextHandle:GetLineHeightFromCharacterIndex(index) end
---@param index number
---@return number
function UnityEngine.TextCore.Text.TextHandle:GetCharacterHeightFromIndex(index) end
---@return boolean
function UnityEngine.TextCore.Text.TextHandle:IsElided() end
---@param startIndex number
---@param length number
---@return string
function UnityEngine.TextCore.Text.TextHandle:Substring(startIndex, length) end
---@param value System.Char
---@param startIndex number
---@return number
function UnityEngine.TextCore.Text.TextHandle:IndexOf(value, startIndex) end
---@param value System.Char
---@param startIndex number
---@return number
function UnityEngine.TextCore.Text.TextHandle:LastIndexOf(value, startIndex) end

---@class UnityEngine.TextCore.Text.PageInfo : System.ValueType
---@field firstCharacterIndex number
---@field lastCharacterIndex number
---@field ascender number
---@field baseLine number
---@field descender number
UnityEngine.TextCore.Text.PageInfo = {}
---@alias CS.UnityEngine.TextCore.Text.PageInfo UnityEngine.TextCore.Text.PageInfo
CS.UnityEngine.TextCore.Text.PageInfo = UnityEngine.TextCore.Text.PageInfo


---@class UnityEngine.TextCore.Text.WordInfo : System.ValueType
---@field firstCharacterIndex number
---@field lastCharacterIndex number
---@field characterCount number
UnityEngine.TextCore.Text.WordInfo = {}
---@alias CS.UnityEngine.TextCore.Text.WordInfo UnityEngine.TextCore.Text.WordInfo
CS.UnityEngine.TextCore.Text.WordInfo = UnityEngine.TextCore.Text.WordInfo


---@class UnityEngine.TextCore.Text.TextInfo : System.Object
---@field characterCount number
---@field spriteCount number
---@field spaceCount number
---@field wordCount number
---@field linkCount number
---@field lineCount number
---@field pageCount number
---@field materialCount number
---@field textElementInfo UnityEngine.TextCore.Text.TextElementInfo[]
---@field wordInfo UnityEngine.TextCore.Text.WordInfo[]
---@field linkInfo UnityEngine.TextCore.Text.LinkInfo[]
---@field lineInfo UnityEngine.TextCore.Text.LineInfo[]
---@field pageInfo UnityEngine.TextCore.Text.PageInfo[]
---@field meshInfo UnityEngine.TextCore.Text.MeshInfo[]
---@field isDirty boolean
---@field hasMultipleColors boolean
UnityEngine.TextCore.Text.TextInfo = {}
---@alias CS.UnityEngine.TextCore.Text.TextInfo UnityEngine.TextCore.Text.TextInfo
CS.UnityEngine.TextCore.Text.TextInfo = UnityEngine.TextCore.Text.TextInfo

---@return UnityEngine.TextCore.Text.TextInfo
function UnityEngine.TextCore.Text.TextInfo.New() end

---@class UnityEngine.TextCore.Text.MarkupTag
---@field BOLD UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_BOLD UnityEngine.TextCore.Text.MarkupTag
---@field ITALIC UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_ITALIC UnityEngine.TextCore.Text.MarkupTag
---@field UNDERLINE UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_UNDERLINE UnityEngine.TextCore.Text.MarkupTag
---@field STRIKETHROUGH UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_STRIKETHROUGH UnityEngine.TextCore.Text.MarkupTag
---@field MARK UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_MARK UnityEngine.TextCore.Text.MarkupTag
---@field SUBSCRIPT UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_SUBSCRIPT UnityEngine.TextCore.Text.MarkupTag
---@field SUPERSCRIPT UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_SUPERSCRIPT UnityEngine.TextCore.Text.MarkupTag
---@field COLOR UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_COLOR UnityEngine.TextCore.Text.MarkupTag
---@field ALPHA UnityEngine.TextCore.Text.MarkupTag
---@field A UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_A UnityEngine.TextCore.Text.MarkupTag
---@field SIZE UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_SIZE UnityEngine.TextCore.Text.MarkupTag
---@field SPRITE UnityEngine.TextCore.Text.MarkupTag
---@field NO_BREAK UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_NO_BREAK UnityEngine.TextCore.Text.MarkupTag
---@field STYLE UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_STYLE UnityEngine.TextCore.Text.MarkupTag
---@field FONT UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_FONT UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_MATERIAL UnityEngine.TextCore.Text.MarkupTag
---@field LINK UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_LINK UnityEngine.TextCore.Text.MarkupTag
---@field FONT_WEIGHT UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_FONT_WEIGHT UnityEngine.TextCore.Text.MarkupTag
---@field NO_PARSE UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_NO_PARSE UnityEngine.TextCore.Text.MarkupTag
---@field POSITION UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_POSITION UnityEngine.TextCore.Text.MarkupTag
---@field VERTICAL_OFFSET UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_VERTICAL_OFFSET UnityEngine.TextCore.Text.MarkupTag
---@field SPACE UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_SPACE UnityEngine.TextCore.Text.MarkupTag
---@field PAGE UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_PAGE UnityEngine.TextCore.Text.MarkupTag
---@field ALIGN UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_ALIGN UnityEngine.TextCore.Text.MarkupTag
---@field WIDTH UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_WIDTH UnityEngine.TextCore.Text.MarkupTag
---@field GRADIENT UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_GRADIENT UnityEngine.TextCore.Text.MarkupTag
---@field CHARACTER_SPACE UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_CHARACTER_SPACE UnityEngine.TextCore.Text.MarkupTag
---@field MONOSPACE UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_MONOSPACE UnityEngine.TextCore.Text.MarkupTag
---@field CLASS UnityEngine.TextCore.Text.MarkupTag
---@field INDENT UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_INDENT UnityEngine.TextCore.Text.MarkupTag
---@field LINE_INDENT UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_LINE_INDENT UnityEngine.TextCore.Text.MarkupTag
---@field MARGIN UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_MARGIN UnityEngine.TextCore.Text.MarkupTag
---@field MARGIN_LEFT UnityEngine.TextCore.Text.MarkupTag
---@field MARGIN_RIGHT UnityEngine.TextCore.Text.MarkupTag
---@field LINE_HEIGHT UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_LINE_HEIGHT UnityEngine.TextCore.Text.MarkupTag
---@field ACTION UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_ACTION UnityEngine.TextCore.Text.MarkupTag
---@field SCALE UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_SCALE UnityEngine.TextCore.Text.MarkupTag
---@field ROTATE UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_ROTATE UnityEngine.TextCore.Text.MarkupTag
---@field TABLE UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_TABLE UnityEngine.TextCore.Text.MarkupTag
---@field TH UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_TH UnityEngine.TextCore.Text.MarkupTag
---@field TR UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_TR UnityEngine.TextCore.Text.MarkupTag
---@field TD UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_TD UnityEngine.TextCore.Text.MarkupTag
---@field LOWERCASE UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_LOWERCASE UnityEngine.TextCore.Text.MarkupTag
---@field ALLCAPS UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_ALLCAPS UnityEngine.TextCore.Text.MarkupTag
---@field UPPERCASE UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_UPPERCASE UnityEngine.TextCore.Text.MarkupTag
---@field SMALLCAPS UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_SMALLCAPS UnityEngine.TextCore.Text.MarkupTag
---@field LIGA UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_LIGA UnityEngine.TextCore.Text.MarkupTag
---@field FRAC UnityEngine.TextCore.Text.MarkupTag
---@field SLASH_FRAC UnityEngine.TextCore.Text.MarkupTag
---@field NAME UnityEngine.TextCore.Text.MarkupTag
---@field INDEX UnityEngine.TextCore.Text.MarkupTag
---@field TINT UnityEngine.TextCore.Text.MarkupTag
---@field ANIM UnityEngine.TextCore.Text.MarkupTag
---@field MATERIAL UnityEngine.TextCore.Text.MarkupTag
---@field HREF UnityEngine.TextCore.Text.MarkupTag
---@field ANGLE UnityEngine.TextCore.Text.MarkupTag
---@field PADDING UnityEngine.TextCore.Text.MarkupTag
---@field FAMILYNAME UnityEngine.TextCore.Text.MarkupTag
---@field STYLENAME UnityEngine.TextCore.Text.MarkupTag
---@field RED UnityEngine.TextCore.Text.MarkupTag
---@field GREEN UnityEngine.TextCore.Text.MarkupTag
---@field BLUE UnityEngine.TextCore.Text.MarkupTag
---@field YELLOW UnityEngine.TextCore.Text.MarkupTag
---@field ORANGE UnityEngine.TextCore.Text.MarkupTag
---@field BLACK UnityEngine.TextCore.Text.MarkupTag
---@field WHITE UnityEngine.TextCore.Text.MarkupTag
---@field PURPLE UnityEngine.TextCore.Text.MarkupTag
---@field BR UnityEngine.TextCore.Text.MarkupTag
---@field CR UnityEngine.TextCore.Text.MarkupTag
---@field ZWSP UnityEngine.TextCore.Text.MarkupTag
---@field ZWJ UnityEngine.TextCore.Text.MarkupTag
---@field NBSP UnityEngine.TextCore.Text.MarkupTag
---@field SHY UnityEngine.TextCore.Text.MarkupTag
---@field LEFT UnityEngine.TextCore.Text.MarkupTag
---@field RIGHT UnityEngine.TextCore.Text.MarkupTag
---@field CENTER UnityEngine.TextCore.Text.MarkupTag
---@field JUSTIFIED UnityEngine.TextCore.Text.MarkupTag
---@field FLUSH UnityEngine.TextCore.Text.MarkupTag
---@field NONE UnityEngine.TextCore.Text.MarkupTag
---@field PLUS UnityEngine.TextCore.Text.MarkupTag
---@field MINUS UnityEngine.TextCore.Text.MarkupTag
---@field PX UnityEngine.TextCore.Text.MarkupTag
---@field PLUS_PX UnityEngine.TextCore.Text.MarkupTag
---@field MINUS_PX UnityEngine.TextCore.Text.MarkupTag
---@field EM UnityEngine.TextCore.Text.MarkupTag
---@field PLUS_EM UnityEngine.TextCore.Text.MarkupTag
---@field MINUS_EM UnityEngine.TextCore.Text.MarkupTag
---@field PCT UnityEngine.TextCore.Text.MarkupTag
---@field PLUS_PCT UnityEngine.TextCore.Text.MarkupTag
---@field MINUS_PCT UnityEngine.TextCore.Text.MarkupTag
---@field PERCENTAGE UnityEngine.TextCore.Text.MarkupTag
---@field PLUS_PERCENTAGE UnityEngine.TextCore.Text.MarkupTag
---@field MINUS_PERCENTAGE UnityEngine.TextCore.Text.MarkupTag
---@field TRUE UnityEngine.TextCore.Text.MarkupTag
---@field FALSE UnityEngine.TextCore.Text.MarkupTag
---@field INVALID UnityEngine.TextCore.Text.MarkupTag
---@field NOTDEF UnityEngine.TextCore.Text.MarkupTag
---@field NORMAL UnityEngine.TextCore.Text.MarkupTag
---@field DEFAULT UnityEngine.TextCore.Text.MarkupTag
---@field REGULAR UnityEngine.TextCore.Text.MarkupTag
UnityEngine.TextCore.Text.MarkupTag = {}
---@alias CS.UnityEngine.TextCore.Text.MarkupTag UnityEngine.TextCore.Text.MarkupTag
CS.UnityEngine.TextCore.Text.MarkupTag = UnityEngine.TextCore.Text.MarkupTag


---@class UnityEngine.TextCore.Text.TagValueType
---@field None UnityEngine.TextCore.Text.TagValueType
---@field NumericalValue UnityEngine.TextCore.Text.TagValueType
---@field StringValue UnityEngine.TextCore.Text.TagValueType
---@field ColorValue UnityEngine.TextCore.Text.TagValueType
UnityEngine.TextCore.Text.TagValueType = {}
---@alias CS.UnityEngine.TextCore.Text.TagValueType UnityEngine.TextCore.Text.TagValueType
CS.UnityEngine.TextCore.Text.TagValueType = UnityEngine.TextCore.Text.TagValueType


---@class UnityEngine.TextCore.Text.TagUnitType
---@field Pixels UnityEngine.TextCore.Text.TagUnitType
---@field FontUnits UnityEngine.TextCore.Text.TagUnitType
---@field Percentage UnityEngine.TextCore.Text.TagUnitType
UnityEngine.TextCore.Text.TagUnitType = {}
---@alias CS.UnityEngine.TextCore.Text.TagUnitType UnityEngine.TextCore.Text.TagUnitType
CS.UnityEngine.TextCore.Text.TagUnitType = UnityEngine.TextCore.Text.TagUnitType


---@class UnityEngine.TextCore.Text.CodePoint : System.Object
---@field SPACE number
---@field DOUBLE_QUOTE number
---@field NUMBER_SIGN number
---@field PERCENTAGE number
---@field PLUS number
---@field MINUS number
---@field PERIOD number
---@field HYPHEN_MINUS number
---@field SOFT_HYPHEN number
---@field HYPHEN number
---@field NON_BREAKING_HYPHEN number
---@field ZERO_WIDTH_SPACE number
---@field RIGHT_SINGLE_QUOTATION number
---@field APOSTROPHE number
---@field WORD_JOINER number
---@field HIGH_SURROGATE_START number
---@field HIGH_SURROGATE_END number
---@field LOW_SURROGATE_START number
---@field LOW_SURROGATE_END number
---@field UNICODE_PLANE01_START number
UnityEngine.TextCore.Text.CodePoint = {}
---@alias CS.UnityEngine.TextCore.Text.CodePoint UnityEngine.TextCore.Text.CodePoint
CS.UnityEngine.TextCore.Text.CodePoint = UnityEngine.TextCore.Text.CodePoint


---@class UnityEngine.TextCore.Text.TextProcessingElementType
---@field Undefined UnityEngine.TextCore.Text.TextProcessingElementType
---@field TextCharacterElement UnityEngine.TextCore.Text.TextProcessingElementType
---@field TextMarkupElement UnityEngine.TextCore.Text.TextProcessingElementType
UnityEngine.TextCore.Text.TextProcessingElementType = {}
---@alias CS.UnityEngine.TextCore.Text.TextProcessingElementType UnityEngine.TextCore.Text.TextProcessingElementType
CS.UnityEngine.TextCore.Text.TextProcessingElementType = UnityEngine.TextCore.Text.TextProcessingElementType


---@class UnityEngine.TextCore.Text.CharacterElement : System.ValueType
---@field Unicode number
UnityEngine.TextCore.Text.CharacterElement = {}
---@alias CS.UnityEngine.TextCore.Text.CharacterElement UnityEngine.TextCore.Text.CharacterElement
CS.UnityEngine.TextCore.Text.CharacterElement = UnityEngine.TextCore.Text.CharacterElement

---@param textElement UnityEngine.TextCore.Text.TextElement
---@return UnityEngine.TextCore.Text.CharacterElement
function UnityEngine.TextCore.Text.CharacterElement.New(textElement) end

---@class UnityEngine.TextCore.Text.MarkupAttribute : System.ValueType
---@field NameHashCode number
---@field ValueHashCode number
---@field ValueStartIndex number
---@field ValueLength number
UnityEngine.TextCore.Text.MarkupAttribute = {}
---@alias CS.UnityEngine.TextCore.Text.MarkupAttribute UnityEngine.TextCore.Text.MarkupAttribute
CS.UnityEngine.TextCore.Text.MarkupAttribute = UnityEngine.TextCore.Text.MarkupAttribute


---@class UnityEngine.TextCore.Text.MarkupElement : System.ValueType
---@field NameHashCode number
---@field ValueHashCode number
---@field ValueStartIndex number
---@field ValueLength number
---@field Attributes UnityEngine.TextCore.Text.MarkupAttribute[]
UnityEngine.TextCore.Text.MarkupElement = {}
---@alias CS.UnityEngine.TextCore.Text.MarkupElement UnityEngine.TextCore.Text.MarkupElement
CS.UnityEngine.TextCore.Text.MarkupElement = UnityEngine.TextCore.Text.MarkupElement

---@param nameHashCode number
---@param startIndex number
---@param length number
---@return UnityEngine.TextCore.Text.MarkupElement
function UnityEngine.TextCore.Text.MarkupElement.New(nameHashCode, startIndex, length) end

---@class UnityEngine.TextCore.Text.FontStyleStack : System.ValueType
---@field bold number
---@field italic number
---@field underline number
---@field strikethrough number
---@field highlight number
---@field superscript number
---@field subscript number
---@field uppercase number
---@field lowercase number
---@field smallcaps number
UnityEngine.TextCore.Text.FontStyleStack = {}
---@alias CS.UnityEngine.TextCore.Text.FontStyleStack UnityEngine.TextCore.Text.FontStyleStack
CS.UnityEngine.TextCore.Text.FontStyleStack = UnityEngine.TextCore.Text.FontStyleStack

function UnityEngine.TextCore.Text.FontStyleStack:Clear() end
---@param style UnityEngine.TextCore.Text.FontStyles
---@return number
function UnityEngine.TextCore.Text.FontStyleStack:Add(style) end
---@param style UnityEngine.TextCore.Text.FontStyles
---@return number
function UnityEngine.TextCore.Text.FontStyleStack:Remove(style) end

---@class UnityEngine.TextCore.Text.TextProcessingStack : System.ValueType
---@field itemStack T[]
---@field index number
---@field Count number
---@field current T
---@field rolloverSize number
UnityEngine.TextCore.Text.TextProcessingStack = {}
---@alias CS.UnityEngine.TextCore.Text.TextProcessingStack UnityEngine.TextCore.Text.TextProcessingStack
CS.UnityEngine.TextCore.Text.TextProcessingStack = UnityEngine.TextCore.Text.TextProcessingStack

---@overload fun(stack: T[]) : UnityEngine.TextCore.Text.TextProcessingStack
---@overload fun(capacity: number) : UnityEngine.TextCore.Text.TextProcessingStack
---@param capacity number
---@param rolloverSize number
---@return UnityEngine.TextCore.Text.TextProcessingStack
function UnityEngine.TextCore.Text.TextProcessingStack.New(capacity, rolloverSize) end
function UnityEngine.TextCore.Text.TextProcessingStack:Clear() end
---@param item T
function UnityEngine.TextCore.Text.TextProcessingStack:SetDefault(item) end
---@param item T
function UnityEngine.TextCore.Text.TextProcessingStack:Add(item) end
---@return T
function UnityEngine.TextCore.Text.TextProcessingStack:Remove() end
---@param item T
function UnityEngine.TextCore.Text.TextProcessingStack:Push(item) end
---@return T
function UnityEngine.TextCore.Text.TextProcessingStack:Pop() end
---@return T
function UnityEngine.TextCore.Text.TextProcessingStack:Peek() end
---@return T
function UnityEngine.TextCore.Text.TextProcessingStack:CurrentItem() end
---@return T
function UnityEngine.TextCore.Text.TextProcessingStack:PreviousItem() end

---@class UnityEngine.TextCore.Text.TextResourceManager : System.Object
UnityEngine.TextCore.Text.TextResourceManager = {}
---@alias CS.UnityEngine.TextCore.Text.TextResourceManager UnityEngine.TextCore.Text.TextResourceManager
CS.UnityEngine.TextCore.Text.TextResourceManager = UnityEngine.TextCore.Text.TextResourceManager

---@return UnityEngine.TextCore.Text.TextResourceManager
function UnityEngine.TextCore.Text.TextResourceManager.New() end
---@param fontAsset UnityEngine.TextCore.Text.FontAsset
function UnityEngine.TextCore.Text.TextResourceManager.RemoveFontAsset(fontAsset) end

---@class UnityEngine.TextCore.Text.TextResourceManager.FontAssetRef : System.ValueType
---@field nameHashCode number
---@field familyNameHashCode number
---@field styleNameHashCode number
---@field familyNameAndStyleHashCode number
---@field fontAsset UnityEngine.TextCore.Text.FontAsset
UnityEngine.TextCore.Text.TextResourceManager.FontAssetRef = {}
---@alias CS.UnityEngine.TextCore.Text.TextResourceManager.FontAssetRef UnityEngine.TextCore.Text.TextResourceManager.FontAssetRef
CS.UnityEngine.TextCore.Text.TextResourceManager.FontAssetRef = UnityEngine.TextCore.Text.TextResourceManager.FontAssetRef

---@param nameHashCode number
---@param familyNameHashCode number
---@param styleNameHashCode number
---@param fontAsset UnityEngine.TextCore.Text.FontAsset
---@return UnityEngine.TextCore.Text.TextResourceManager.FontAssetRef
function UnityEngine.TextCore.Text.TextResourceManager.FontAssetRef.New(nameHashCode, familyNameHashCode, styleNameHashCode, fontAsset) end

---@class UnityEngine.TextCore.Text.TextSettings : UnityEngine.ScriptableObject
---@field version string
---@field defaultFontAsset UnityEngine.TextCore.Text.FontAsset
---@field defaultFontAssetPath string
---@field fallbackFontAssets System.Collections.Generic.List
---@field matchMaterialPreset boolean
---@field missingCharacterUnicode number
---@field clearDynamicDataOnBuild boolean
---@field defaultSpriteAsset UnityEngine.TextCore.Text.SpriteAsset
---@field defaultSpriteAssetPath string
---@field fallbackSpriteAssets System.Collections.Generic.List
---@field missingSpriteCharacterUnicode number
---@field defaultStyleSheet UnityEngine.TextCore.Text.TextStyleSheet
---@field styleSheetsResourcePath string
---@field defaultColorGradientPresetsPath string
---@field lineBreakingRules UnityEngine.TextCore.Text.UnicodeLineBreakingRules
---@field useModernHangulLineBreakingRules boolean
---@field displayWarnings boolean
UnityEngine.TextCore.Text.TextSettings = {}
---@alias CS.UnityEngine.TextCore.Text.TextSettings UnityEngine.TextCore.Text.TextSettings
CS.UnityEngine.TextCore.Text.TextSettings = UnityEngine.TextCore.Text.TextSettings

---@return UnityEngine.TextCore.Text.TextSettings
function UnityEngine.TextCore.Text.TextSettings.New() end

---@class UnityEngine.TextCore.Text.TextSettings.FontReferenceMap : System.ValueType
---@field font UnityEngine.Font
---@field fontAsset UnityEngine.TextCore.Text.FontAsset
UnityEngine.TextCore.Text.TextSettings.FontReferenceMap = {}
---@alias CS.UnityEngine.TextCore.Text.TextSettings.FontReferenceMap UnityEngine.TextCore.Text.TextSettings.FontReferenceMap
CS.UnityEngine.TextCore.Text.TextSettings.FontReferenceMap = UnityEngine.TextCore.Text.TextSettings.FontReferenceMap

---@param font UnityEngine.Font
---@param fontAsset UnityEngine.TextCore.Text.FontAsset
---@return UnityEngine.TextCore.Text.TextSettings.FontReferenceMap
function UnityEngine.TextCore.Text.TextSettings.FontReferenceMap.New(font, fontAsset) end

---@class UnityEngine.TextCore.Text.TextShaderUtilities : System.Object
---@field ID_MainTex number
---@field ID_FaceTex number
---@field ID_FaceColor number
---@field ID_FaceDilate number
---@field ID_Shininess number
---@field ID_OutlineOffset1 number
---@field ID_OutlineOffset2 number
---@field ID_OutlineOffset3 number
---@field ID_OutlineMode number
---@field ID_IsoPerimeter number
---@field ID_Softness number
---@field ID_UnderlayColor number
---@field ID_UnderlayOffsetX number
---@field ID_UnderlayOffsetY number
---@field ID_UnderlayDilate number
---@field ID_UnderlaySoftness number
---@field ID_UnderlayOffset number
---@field ID_UnderlayIsoPerimeter number
---@field ID_WeightNormal number
---@field ID_WeightBold number
---@field ID_OutlineTex number
---@field ID_OutlineWidth number
---@field ID_OutlineSoftness number
---@field ID_OutlineColor number
---@field ID_Outline2Color number
---@field ID_Outline2Width number
---@field ID_Padding number
---@field ID_GradientScale number
---@field ID_ScaleX number
---@field ID_ScaleY number
---@field ID_PerspectiveFilter number
---@field ID_Sharpness number
---@field ID_TextureWidth number
---@field ID_TextureHeight number
---@field ID_BevelAmount number
---@field ID_GlowColor number
---@field ID_GlowOffset number
---@field ID_GlowPower number
---@field ID_GlowOuter number
---@field ID_GlowInner number
---@field ID_LightAngle number
---@field ID_EnvMap number
---@field ID_EnvMatrix number
---@field ID_EnvMatrixRotation number
---@field ID_MaskCoord number
---@field ID_ClipRect number
---@field ID_MaskSoftnessX number
---@field ID_MaskSoftnessY number
---@field ID_VertexOffsetX number
---@field ID_VertexOffsetY number
---@field ID_UseClipRect number
---@field ID_StencilID number
---@field ID_StencilOp number
---@field ID_StencilComp number
---@field ID_StencilReadMask number
---@field ID_StencilWriteMask number
---@field ID_ShaderFlags number
---@field ID_ScaleRatio_A number
---@field ID_ScaleRatio_B number
---@field ID_ScaleRatio_C number
---@field Keyword_Bevel string
---@field Keyword_Glow string
---@field Keyword_Underlay string
---@field Keyword_Ratios string
---@field Keyword_MASK_SOFT string
---@field Keyword_MASK_HARD string
---@field Keyword_MASK_TEX string
---@field Keyword_Outline string
---@field ShaderTag_ZTestMode string
---@field ShaderTag_CullMode string
---@field isInitialized boolean
UnityEngine.TextCore.Text.TextShaderUtilities = {}
---@alias CS.UnityEngine.TextCore.Text.TextShaderUtilities UnityEngine.TextCore.Text.TextShaderUtilities
CS.UnityEngine.TextCore.Text.TextShaderUtilities = UnityEngine.TextCore.Text.TextShaderUtilities


---@class UnityEngine.TextCore.Text.TextStyle : System.Object
---@field NormalStyle UnityEngine.TextCore.Text.TextStyle
---@field name string
---@field hashCode number
---@field styleOpeningDefinition string
---@field styleClosingDefinition string
---@field styleOpeningTagArray System.UInt32[]
---@field styleClosingTagArray System.UInt32[]
UnityEngine.TextCore.Text.TextStyle = {}
---@alias CS.UnityEngine.TextCore.Text.TextStyle UnityEngine.TextCore.Text.TextStyle
CS.UnityEngine.TextCore.Text.TextStyle = UnityEngine.TextCore.Text.TextStyle

function UnityEngine.TextCore.Text.TextStyle:RefreshStyle() end

---@class UnityEngine.TextCore.Text.TextStyleSheet : UnityEngine.ScriptableObject
UnityEngine.TextCore.Text.TextStyleSheet = {}
---@alias CS.UnityEngine.TextCore.Text.TextStyleSheet UnityEngine.TextCore.Text.TextStyleSheet
CS.UnityEngine.TextCore.Text.TextStyleSheet = UnityEngine.TextCore.Text.TextStyleSheet

---@return UnityEngine.TextCore.Text.TextStyleSheet
function UnityEngine.TextCore.Text.TextStyleSheet.New() end
---@overload fun(self: UnityEngine.TextCore.Text.TextStyleSheet, hashCode: number) : UnityEngine.TextCore.Text.TextStyle
---@param name string
---@return UnityEngine.TextCore.Text.TextStyle
function UnityEngine.TextCore.Text.TextStyleSheet:GetStyle(name) end
function UnityEngine.TextCore.Text.TextStyleSheet:RefreshStyles() end

---@class UnityEngine.TextCore.Text.TextUtilities : System.Object
UnityEngine.TextCore.Text.TextUtilities = {}
---@alias CS.UnityEngine.TextCore.Text.TextUtilities UnityEngine.TextCore.Text.TextUtilities
CS.UnityEngine.TextCore.Text.TextUtilities = UnityEngine.TextCore.Text.TextUtilities

---@param s string
---@return number
function UnityEngine.TextCore.Text.TextUtilities.GetHashCodeCaseSensitive(s) end
---@param s string
---@return number
function UnityEngine.TextCore.Text.TextUtilities.GetHashCodeCaseInSensitive(s) end
---@param s string
---@return number
function UnityEngine.TextCore.Text.TextUtilities.GetSimpleHashCodeLowercase(s) end
---@param s string
---@return number
function UnityEngine.TextCore.Text.TextUtilities.StringHexToInt(s) end

---@class UnityEngine.TextCore.Text.UnicodeLineBreakingRules : System.Object
---@field lineBreakingRules UnityEngine.TextAsset
---@field leadingCharacters UnityEngine.TextAsset
---@field followingCharacters UnityEngine.TextAsset
---@field useModernHangulLineBreakingRules boolean
UnityEngine.TextCore.Text.UnicodeLineBreakingRules = {}
---@alias CS.UnityEngine.TextCore.Text.UnicodeLineBreakingRules UnityEngine.TextCore.Text.UnicodeLineBreakingRules
CS.UnityEngine.TextCore.Text.UnicodeLineBreakingRules = UnityEngine.TextCore.Text.UnicodeLineBreakingRules

---@return UnityEngine.TextCore.Text.UnicodeLineBreakingRules
function UnityEngine.TextCore.Text.UnicodeLineBreakingRules.New() end

---@class UnityEngine.FontStyle
---@field Normal UnityEngine.FontStyle
---@field Bold UnityEngine.FontStyle
---@field Italic UnityEngine.FontStyle
---@field BoldAndItalic UnityEngine.FontStyle
UnityEngine.FontStyle = {}
---@alias CS.UnityEngine.FontStyle UnityEngine.FontStyle
CS.UnityEngine.FontStyle = UnityEngine.FontStyle


---@class UnityEngine.GUIText : System.Object
UnityEngine.GUIText = {}
---@alias CS.UnityEngine.GUIText UnityEngine.GUIText
CS.UnityEngine.GUIText = UnityEngine.GUIText

---@return UnityEngine.GUIText
function UnityEngine.GUIText.New() end

---@class UnityEngine.TextGenerationError
---@field None UnityEngine.TextGenerationError
---@field CustomSizeOnNonDynamicFont UnityEngine.TextGenerationError
---@field CustomStyleOnNonDynamicFont UnityEngine.TextGenerationError
---@field NoFont UnityEngine.TextGenerationError
UnityEngine.TextGenerationError = {}
---@alias CS.UnityEngine.TextGenerationError UnityEngine.TextGenerationError
CS.UnityEngine.TextGenerationError = UnityEngine.TextGenerationError


---@class UnityEngine.TextGenerationSettings : System.ValueType
---@field font UnityEngine.Font
---@field color UnityEngine.Color
---@field fontSize number
---@field lineSpacing number
---@field richText boolean
---@field scaleFactor number
---@field fontStyle UnityEngine.FontStyle
---@field textAnchor UnityEngine.TextAnchor
---@field alignByGeometry boolean
---@field resizeTextForBestFit boolean
---@field resizeTextMinSize number
---@field resizeTextMaxSize number
---@field updateBounds boolean
---@field verticalOverflow UnityEngine.VerticalWrapMode
---@field horizontalOverflow UnityEngine.HorizontalWrapMode
---@field generationExtents UnityEngine.Vector2
---@field pivot UnityEngine.Vector2
---@field generateOutOfBounds boolean
UnityEngine.TextGenerationSettings = {}
---@alias CS.UnityEngine.TextGenerationSettings UnityEngine.TextGenerationSettings
CS.UnityEngine.TextGenerationSettings = UnityEngine.TextGenerationSettings

---@param other UnityEngine.TextGenerationSettings
---@return boolean
function UnityEngine.TextGenerationSettings:Equals(other) end

---@class UnityEngine.TextGenerator : System.Object
---@field characterCountVisible number
---@field verts System.Collections.Generic.IList
---@field characters System.Collections.Generic.IList
---@field lines System.Collections.Generic.IList
---@field rectExtents UnityEngine.Rect
---@field vertexCount number
---@field characterCount number
---@field lineCount number
---@field fontSizeUsedForBestFit number
UnityEngine.TextGenerator = {}
---@alias CS.UnityEngine.TextGenerator UnityEngine.TextGenerator
CS.UnityEngine.TextGenerator = UnityEngine.TextGenerator

---@overload fun() : UnityEngine.TextGenerator
---@param initialCapacity number
---@return UnityEngine.TextGenerator
function UnityEngine.TextGenerator.New(initialCapacity) end
function UnityEngine.TextGenerator:Invalidate() end
---@param characters System.Collections.Generic.List
function UnityEngine.TextGenerator:GetCharacters(characters) end
---@param lines System.Collections.Generic.List
function UnityEngine.TextGenerator:GetLines(lines) end
---@param vertices System.Collections.Generic.List
function UnityEngine.TextGenerator:GetVertices(vertices) end
---@param str string
---@param settings UnityEngine.TextGenerationSettings
---@return number
function UnityEngine.TextGenerator:GetPreferredWidth(str, settings) end
---@param str string
---@param settings UnityEngine.TextGenerationSettings
---@return number
function UnityEngine.TextGenerator:GetPreferredHeight(str, settings) end
---@param str string
---@param settings UnityEngine.TextGenerationSettings
---@param context UnityEngine.GameObject
---@return boolean
function UnityEngine.TextGenerator:PopulateWithErrors(str, settings, context) end
---@param str string
---@param settings UnityEngine.TextGenerationSettings
---@return boolean
function UnityEngine.TextGenerator:Populate(str, settings) end
---@return UnityEngine.UIVertex[]
function UnityEngine.TextGenerator:GetVerticesArray() end
---@return UnityEngine.UICharInfo[]
function UnityEngine.TextGenerator:GetCharactersArray() end
---@return UnityEngine.UILineInfo[]
function UnityEngine.TextGenerator:GetLinesArray() end

---@class UnityEngine.TextAlignment
---@field Left UnityEngine.TextAlignment
---@field Center UnityEngine.TextAlignment
---@field Right UnityEngine.TextAlignment
UnityEngine.TextAlignment = {}
---@alias CS.UnityEngine.TextAlignment UnityEngine.TextAlignment
CS.UnityEngine.TextAlignment = UnityEngine.TextAlignment


---@class UnityEngine.TextAnchor
---@field UpperLeft UnityEngine.TextAnchor
---@field UpperCenter UnityEngine.TextAnchor
---@field UpperRight UnityEngine.TextAnchor
---@field MiddleLeft UnityEngine.TextAnchor
---@field MiddleCenter UnityEngine.TextAnchor
---@field MiddleRight UnityEngine.TextAnchor
---@field LowerLeft UnityEngine.TextAnchor
---@field LowerCenter UnityEngine.TextAnchor
---@field LowerRight UnityEngine.TextAnchor
UnityEngine.TextAnchor = {}
---@alias CS.UnityEngine.TextAnchor UnityEngine.TextAnchor
CS.UnityEngine.TextAnchor = UnityEngine.TextAnchor


---@class UnityEngine.HorizontalWrapMode
---@field Wrap UnityEngine.HorizontalWrapMode
---@field Overflow UnityEngine.HorizontalWrapMode
UnityEngine.HorizontalWrapMode = {}
---@alias CS.UnityEngine.HorizontalWrapMode UnityEngine.HorizontalWrapMode
CS.UnityEngine.HorizontalWrapMode = UnityEngine.HorizontalWrapMode


---@class UnityEngine.VerticalWrapMode
---@field Truncate UnityEngine.VerticalWrapMode
---@field Overflow UnityEngine.VerticalWrapMode
UnityEngine.VerticalWrapMode = {}
---@alias CS.UnityEngine.VerticalWrapMode UnityEngine.VerticalWrapMode
CS.UnityEngine.VerticalWrapMode = UnityEngine.VerticalWrapMode


---@class UnityEngine.TextMesh : UnityEngine.Component
---@field text string
---@field font UnityEngine.Font
---@field fontSize number
---@field fontStyle UnityEngine.FontStyle
---@field offsetZ number
---@field alignment UnityEngine.TextAlignment
---@field anchor UnityEngine.TextAnchor
---@field characterSize number
---@field lineSpacing number
---@field tabSize number
---@field richText boolean
---@field color UnityEngine.Color
UnityEngine.TextMesh = {}
---@alias CS.UnityEngine.TextMesh UnityEngine.TextMesh
CS.UnityEngine.TextMesh = UnityEngine.TextMesh

---@return UnityEngine.TextMesh
function UnityEngine.TextMesh.New() end

---@class UnityEngine.CharacterInfo : System.ValueType
---@field index number
---@field size number
---@field style UnityEngine.FontStyle
---@field advance number
---@field glyphWidth number
---@field glyphHeight number
---@field bearing number
---@field minY number
---@field maxY number
---@field minX number
---@field maxX number
---@field uvBottomLeft UnityEngine.Vector2
---@field uvBottomRight UnityEngine.Vector2
---@field uvTopRight UnityEngine.Vector2
---@field uvTopLeft UnityEngine.Vector2
UnityEngine.CharacterInfo = {}
---@alias CS.UnityEngine.CharacterInfo UnityEngine.CharacterInfo
CS.UnityEngine.CharacterInfo = UnityEngine.CharacterInfo


---@class UnityEngine.UICharInfo : System.ValueType
---@field cursorPos UnityEngine.Vector2
---@field charWidth number
UnityEngine.UICharInfo = {}
---@alias CS.UnityEngine.UICharInfo UnityEngine.UICharInfo
CS.UnityEngine.UICharInfo = UnityEngine.UICharInfo


---@class UnityEngine.UILineInfo : System.ValueType
---@field startCharIdx number
---@field height number
---@field topY number
---@field leading number
UnityEngine.UILineInfo = {}
---@alias CS.UnityEngine.UILineInfo UnityEngine.UILineInfo
CS.UnityEngine.UILineInfo = UnityEngine.UILineInfo


---@class UnityEngine.UIVertex : System.ValueType
---@field simpleVert UnityEngine.UIVertex
---@field position UnityEngine.Vector3
---@field normal UnityEngine.Vector3
---@field tangent UnityEngine.Vector4
---@field color UnityEngine.Color32
---@field uv0 UnityEngine.Vector4
---@field uv1 UnityEngine.Vector4
---@field uv2 UnityEngine.Vector4
---@field uv3 UnityEngine.Vector4
UnityEngine.UIVertex = {}
---@alias CS.UnityEngine.UIVertex UnityEngine.UIVertex
CS.UnityEngine.UIVertex = UnityEngine.UIVertex


---@class UnityEngine.Font : UnityEngine.Object
---@field material UnityEngine.Material
---@field fontNames System.String[]
---@field dynamic boolean
---@field ascent number
---@field fontSize number
---@field characterInfo UnityEngine.CharacterInfo[]
---@field lineHeight number
UnityEngine.Font = {}
---@alias CS.UnityEngine.Font UnityEngine.Font
CS.UnityEngine.Font = UnityEngine.Font

---@overload fun() : UnityEngine.Font
---@param name string
---@return UnityEngine.Font
function UnityEngine.Font.New(name) end
---@overload fun(fontname: string, size: number) : UnityEngine.Font
---@param fontnames System.String[]
---@param size number
---@return UnityEngine.Font
function UnityEngine.Font.CreateDynamicFontFromOSFont(fontnames, size) end
---@param str string
---@return number
function UnityEngine.Font.GetMaxVertsForString(str) end
---@return System.String[]
function UnityEngine.Font.GetOSInstalledFontNames() end
---@return System.String[]
function UnityEngine.Font.GetPathsToOSFonts() end
---@param c System.Char
---@return boolean
function UnityEngine.Font:HasCharacter(c) end
---@overload fun(self: UnityEngine.Font, ch: System.Char, out_info: UnityEngine.CharacterInfo, size: number, style: UnityEngine.FontStyle) : boolean, UnityEngine.CharacterInfo
---@overload fun(self: UnityEngine.Font, ch: System.Char, out_info: UnityEngine.CharacterInfo, size: number) : boolean, UnityEngine.CharacterInfo
---@param ch System.Char
---@param out_info UnityEngine.CharacterInfo
---@return boolean,UnityEngine.CharacterInfo
function UnityEngine.Font:GetCharacterInfo(ch, out_info) end
---@overload fun(self: UnityEngine.Font, characters: string, size: number, style: UnityEngine.FontStyle)
---@overload fun(self: UnityEngine.Font, characters: string, size: number)
---@param characters string
function UnityEngine.Font:RequestCharactersInTexture(characters) end

---@class UnityEngine.Font.FontTextureRebuildCallback : System.MulticastDelegate
UnityEngine.Font.FontTextureRebuildCallback = {}
---@alias CS.UnityEngine.Font.FontTextureRebuildCallback UnityEngine.Font.FontTextureRebuildCallback
CS.UnityEngine.Font.FontTextureRebuildCallback = UnityEngine.Font.FontTextureRebuildCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Font.FontTextureRebuildCallback
function UnityEngine.Font.FontTextureRebuildCallback.New(object, method) end
function UnityEngine.Font.FontTextureRebuildCallback:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Font.FontTextureRebuildCallback:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Font.FontTextureRebuildCallback:EndInvoke(result) end

---@class UnityEngine.CustomGridBrushAttribute : System.Attribute
---@field hideAssetInstances boolean
---@field hideDefaultInstance boolean
---@field defaultBrush boolean
---@field defaultName string
UnityEngine.CustomGridBrushAttribute = {}
---@alias CS.UnityEngine.CustomGridBrushAttribute UnityEngine.CustomGridBrushAttribute
CS.UnityEngine.CustomGridBrushAttribute = UnityEngine.CustomGridBrushAttribute

---@overload fun() : UnityEngine.CustomGridBrushAttribute
---@param hideAssetInstances boolean
---@param hideDefaultInstance boolean
---@param defaultBrush boolean
---@param defaultName string
---@return UnityEngine.CustomGridBrushAttribute
function UnityEngine.CustomGridBrushAttribute.New(hideAssetInstances, hideDefaultInstance, defaultBrush, defaultName) end

---@class UnityEngine.GridBrushBase : UnityEngine.ScriptableObject
UnityEngine.GridBrushBase = {}
---@alias CS.UnityEngine.GridBrushBase UnityEngine.GridBrushBase
CS.UnityEngine.GridBrushBase = UnityEngine.GridBrushBase

---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.Vector3Int
function UnityEngine.GridBrushBase:Paint(gridLayout, brushTarget, position) end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.Vector3Int
function UnityEngine.GridBrushBase:Erase(gridLayout, brushTarget, position) end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.BoundsInt
function UnityEngine.GridBrushBase:BoxFill(gridLayout, brushTarget, position) end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.BoundsInt
function UnityEngine.GridBrushBase:BoxErase(gridLayout, brushTarget, position) end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.BoundsInt
function UnityEngine.GridBrushBase:Select(gridLayout, brushTarget, position) end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.Vector3Int
function UnityEngine.GridBrushBase:FloodFill(gridLayout, brushTarget, position) end
---@param direction UnityEngine.GridBrushBase.RotationDirection
---@param layout UnityEngine.GridLayout.CellLayout
function UnityEngine.GridBrushBase:Rotate(direction, layout) end
---@param flip UnityEngine.GridBrushBase.FlipAxis
---@param layout UnityEngine.GridLayout.CellLayout
function UnityEngine.GridBrushBase:Flip(flip, layout) end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.BoundsInt
---@param pivot UnityEngine.Vector3Int
function UnityEngine.GridBrushBase:Pick(gridLayout, brushTarget, position, pivot) end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param from UnityEngine.BoundsInt
---@param to UnityEngine.BoundsInt
function UnityEngine.GridBrushBase:Move(gridLayout, brushTarget, from, to) end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.BoundsInt
function UnityEngine.GridBrushBase:MoveStart(gridLayout, brushTarget, position) end
---@param gridLayout UnityEngine.GridLayout
---@param brushTarget UnityEngine.GameObject
---@param position UnityEngine.BoundsInt
function UnityEngine.GridBrushBase:MoveEnd(gridLayout, brushTarget, position) end
---@param change number
function UnityEngine.GridBrushBase:ChangeZPosition(change) end
function UnityEngine.GridBrushBase:ResetZPosition() end

---@class UnityEngine.GridBrushBase.Tool
---@field Select UnityEngine.GridBrushBase.Tool
---@field Move UnityEngine.GridBrushBase.Tool
---@field Paint UnityEngine.GridBrushBase.Tool
---@field Box UnityEngine.GridBrushBase.Tool
---@field Pick UnityEngine.GridBrushBase.Tool
---@field Erase UnityEngine.GridBrushBase.Tool
---@field FloodFill UnityEngine.GridBrushBase.Tool
---@field Other UnityEngine.GridBrushBase.Tool
UnityEngine.GridBrushBase.Tool = {}
---@alias CS.UnityEngine.GridBrushBase.Tool UnityEngine.GridBrushBase.Tool
CS.UnityEngine.GridBrushBase.Tool = UnityEngine.GridBrushBase.Tool


---@class UnityEngine.GridBrushBase.RotationDirection
---@field Clockwise UnityEngine.GridBrushBase.RotationDirection
---@field CounterClockwise UnityEngine.GridBrushBase.RotationDirection
UnityEngine.GridBrushBase.RotationDirection = {}
---@alias CS.UnityEngine.GridBrushBase.RotationDirection UnityEngine.GridBrushBase.RotationDirection
CS.UnityEngine.GridBrushBase.RotationDirection = UnityEngine.GridBrushBase.RotationDirection


---@class UnityEngine.GridBrushBase.FlipAxis
---@field X UnityEngine.GridBrushBase.FlipAxis
---@field Y UnityEngine.GridBrushBase.FlipAxis
UnityEngine.GridBrushBase.FlipAxis = {}
---@alias CS.UnityEngine.GridBrushBase.FlipAxis UnityEngine.GridBrushBase.FlipAxis
CS.UnityEngine.GridBrushBase.FlipAxis = UnityEngine.GridBrushBase.FlipAxis


---@class UnityEngine.Tilemaps.ITilemap : System.Object
---@field origin UnityEngine.Vector3Int
---@field size UnityEngine.Vector3Int
---@field localBounds UnityEngine.Bounds
---@field cellBounds UnityEngine.BoundsInt
UnityEngine.Tilemaps.ITilemap = {}
---@alias CS.UnityEngine.Tilemaps.ITilemap UnityEngine.Tilemaps.ITilemap
CS.UnityEngine.Tilemaps.ITilemap = UnityEngine.Tilemaps.ITilemap

---@param tilemap UnityEngine.Tilemaps.Tilemap
---@return UnityEngine.Tilemaps.ITilemap
function UnityEngine.Tilemaps.ITilemap.New(tilemap) end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Sprite
function UnityEngine.Tilemaps.ITilemap:GetSprite(position) end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Color
function UnityEngine.Tilemaps.ITilemap:GetColor(position) end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Matrix4x4
function UnityEngine.Tilemaps.ITilemap:GetTransformMatrix(position) end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Tilemaps.TileFlags
function UnityEngine.Tilemaps.ITilemap:GetTileFlags(position) end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Tilemaps.TileBase
function UnityEngine.Tilemaps.ITilemap:GetTile(position) end
---@param position UnityEngine.Vector3Int
function UnityEngine.Tilemaps.ITilemap:RefreshTile(position) end

---@class UnityEngine.Tilemaps.Tile : UnityEngine.Tilemaps.TileBase
---@field sprite UnityEngine.Sprite
---@field color UnityEngine.Color
---@field transform UnityEngine.Matrix4x4
---@field gameObject UnityEngine.GameObject
---@field flags UnityEngine.Tilemaps.TileFlags
---@field colliderType UnityEngine.Tilemaps.Tile.ColliderType
UnityEngine.Tilemaps.Tile = {}
---@alias CS.UnityEngine.Tilemaps.Tile UnityEngine.Tilemaps.Tile
CS.UnityEngine.Tilemaps.Tile = UnityEngine.Tilemaps.Tile

---@return UnityEngine.Tilemaps.Tile
function UnityEngine.Tilemaps.Tile.New() end
---@param position UnityEngine.Vector3Int
---@param tilemap UnityEngine.Tilemaps.ITilemap
---@param ref_tileData UnityEngine.Tilemaps.TileData
---@return ,UnityEngine.Tilemaps.TileData
function UnityEngine.Tilemaps.Tile:GetTileData(position, tilemap, ref_tileData) end

---@class UnityEngine.Tilemaps.Tile.ColliderType
---@field None UnityEngine.Tilemaps.Tile.ColliderType
---@field Sprite UnityEngine.Tilemaps.Tile.ColliderType
---@field Grid UnityEngine.Tilemaps.Tile.ColliderType
UnityEngine.Tilemaps.Tile.ColliderType = {}
---@alias CS.UnityEngine.Tilemaps.Tile.ColliderType UnityEngine.Tilemaps.Tile.ColliderType
CS.UnityEngine.Tilemaps.Tile.ColliderType = UnityEngine.Tilemaps.Tile.ColliderType


---@class UnityEngine.Tilemaps.TileBase : UnityEngine.ScriptableObject
UnityEngine.Tilemaps.TileBase = {}
---@alias CS.UnityEngine.Tilemaps.TileBase UnityEngine.Tilemaps.TileBase
CS.UnityEngine.Tilemaps.TileBase = UnityEngine.Tilemaps.TileBase

---@param position UnityEngine.Vector3Int
---@param tilemap UnityEngine.Tilemaps.ITilemap
function UnityEngine.Tilemaps.TileBase:RefreshTile(position, tilemap) end
---@param position UnityEngine.Vector3Int
---@param tilemap UnityEngine.Tilemaps.ITilemap
---@param ref_tileData UnityEngine.Tilemaps.TileData
---@return ,UnityEngine.Tilemaps.TileData
function UnityEngine.Tilemaps.TileBase:GetTileData(position, tilemap, ref_tileData) end
---@param position UnityEngine.Vector3Int
---@param tilemap UnityEngine.Tilemaps.ITilemap
---@param ref_tileAnimationData UnityEngine.Tilemaps.TileAnimationData
---@return boolean,UnityEngine.Tilemaps.TileAnimationData
function UnityEngine.Tilemaps.TileBase:GetTileAnimationData(position, tilemap, ref_tileAnimationData) end
---@param position UnityEngine.Vector3Int
---@param tilemap UnityEngine.Tilemaps.ITilemap
---@param go UnityEngine.GameObject
---@return boolean
function UnityEngine.Tilemaps.TileBase:StartUp(position, tilemap, go) end

---@class UnityEngine.Tilemaps.Tilemap : UnityEngine.GridLayout
---@field layoutGrid UnityEngine.Grid
---@field cellBounds UnityEngine.BoundsInt
---@field localBounds UnityEngine.Bounds
---@field animationFrameRate number
---@field color UnityEngine.Color
---@field origin UnityEngine.Vector3Int
---@field size UnityEngine.Vector3Int
---@field tileAnchor UnityEngine.Vector3
---@field orientation UnityEngine.Tilemaps.Tilemap.Orientation
---@field orientationMatrix UnityEngine.Matrix4x4
---@field editorPreviewOrigin UnityEngine.Vector3Int
---@field editorPreviewSize UnityEngine.Vector3Int
UnityEngine.Tilemaps.Tilemap = {}
---@alias CS.UnityEngine.Tilemaps.Tilemap UnityEngine.Tilemaps.Tilemap
CS.UnityEngine.Tilemaps.Tilemap = UnityEngine.Tilemaps.Tilemap

---@return UnityEngine.Tilemaps.Tilemap
function UnityEngine.Tilemaps.Tilemap.New() end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Vector3
function UnityEngine.Tilemaps.Tilemap:GetCellCenterLocal(position) end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Vector3
function UnityEngine.Tilemaps.Tilemap:GetCellCenterWorld(position) end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Tilemaps.TileBase
function UnityEngine.Tilemaps.Tilemap:GetTile(position) end
---@param bounds UnityEngine.BoundsInt
---@return UnityEngine.Tilemaps.TileBase[]
function UnityEngine.Tilemaps.Tilemap:GetTilesBlock(bounds) end
---@param bounds UnityEngine.BoundsInt
---@param tiles UnityEngine.Tilemaps.TileBase[]
---@return number
function UnityEngine.Tilemaps.Tilemap:GetTilesBlockNonAlloc(bounds, tiles) end
---@param startPosition UnityEngine.Vector3Int
---@param endPosition UnityEngine.Vector3Int
---@return number
function UnityEngine.Tilemaps.Tilemap:GetTilesRangeCount(startPosition, endPosition) end
---@param startPosition UnityEngine.Vector3Int
---@param endPosition UnityEngine.Vector3Int
---@param positions UnityEngine.Vector3Int[]
---@param tiles UnityEngine.Tilemaps.TileBase[]
---@return number
function UnityEngine.Tilemaps.Tilemap:GetTilesRangeNonAlloc(startPosition, endPosition, positions, tiles) end
---@overload fun(self: UnityEngine.Tilemaps.Tilemap, position: UnityEngine.Vector3Int, tile: UnityEngine.Tilemaps.TileBase)
---@param tileChangeData UnityEngine.Tilemaps.TileChangeData
---@param ignoreLockFlags boolean
function UnityEngine.Tilemaps.Tilemap:SetTile(tileChangeData, ignoreLockFlags) end
---@overload fun(self: UnityEngine.Tilemaps.Tilemap, positionArray: UnityEngine.Vector3Int[], tileArray: UnityEngine.Tilemaps.TileBase[])
---@param tileChangeDataArray UnityEngine.Tilemaps.TileChangeData[]
---@param ignoreLockFlags boolean
function UnityEngine.Tilemaps.Tilemap:SetTiles(tileChangeDataArray, ignoreLockFlags) end
---@param position UnityEngine.BoundsInt
---@param tileArray UnityEngine.Tilemaps.TileBase[]
function UnityEngine.Tilemaps.Tilemap:SetTilesBlock(position, tileArray) end
---@param position UnityEngine.Vector3Int
---@return boolean
function UnityEngine.Tilemaps.Tilemap:HasTile(position) end
---@param position UnityEngine.Vector3Int
function UnityEngine.Tilemaps.Tilemap:RefreshTile(position) end
function UnityEngine.Tilemaps.Tilemap:RefreshAllTiles() end
---@param changeTile UnityEngine.Tilemaps.TileBase
---@param newTile UnityEngine.Tilemaps.TileBase
function UnityEngine.Tilemaps.Tilemap:SwapTile(changeTile, newTile) end
---@param tileAsset UnityEngine.Tilemaps.TileBase
---@return boolean
function UnityEngine.Tilemaps.Tilemap:ContainsTile(tileAsset) end
---@return number
function UnityEngine.Tilemaps.Tilemap:GetUsedTilesCount() end
---@return number
function UnityEngine.Tilemaps.Tilemap:GetUsedSpritesCount() end
---@param usedTiles UnityEngine.Tilemaps.TileBase[]
---@return number
function UnityEngine.Tilemaps.Tilemap:GetUsedTilesNonAlloc(usedTiles) end
---@param usedSprites UnityEngine.Sprite[]
---@return number
function UnityEngine.Tilemaps.Tilemap:GetUsedSpritesNonAlloc(usedSprites) end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Sprite
function UnityEngine.Tilemaps.Tilemap:GetSprite(position) end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Matrix4x4
function UnityEngine.Tilemaps.Tilemap:GetTransformMatrix(position) end
---@param position UnityEngine.Vector3Int
---@param transform UnityEngine.Matrix4x4
function UnityEngine.Tilemaps.Tilemap:SetTransformMatrix(position, transform) end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Color
function UnityEngine.Tilemaps.Tilemap:GetColor(position) end
---@param position UnityEngine.Vector3Int
---@param color UnityEngine.Color
function UnityEngine.Tilemaps.Tilemap:SetColor(position, color) end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Tilemaps.TileFlags
function UnityEngine.Tilemaps.Tilemap:GetTileFlags(position) end
---@param position UnityEngine.Vector3Int
---@param flags UnityEngine.Tilemaps.TileFlags
function UnityEngine.Tilemaps.Tilemap:SetTileFlags(position, flags) end
---@param position UnityEngine.Vector3Int
---@param flags UnityEngine.Tilemaps.TileFlags
function UnityEngine.Tilemaps.Tilemap:AddTileFlags(position, flags) end
---@param position UnityEngine.Vector3Int
---@param flags UnityEngine.Tilemaps.TileFlags
function UnityEngine.Tilemaps.Tilemap:RemoveTileFlags(position, flags) end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.GameObject
function UnityEngine.Tilemaps.Tilemap:GetInstantiatedObject(position) end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.GameObject
function UnityEngine.Tilemaps.Tilemap:GetObjectToInstantiate(position) end
---@param position UnityEngine.Vector3Int
---@param colliderType UnityEngine.Tilemaps.Tile.ColliderType
function UnityEngine.Tilemaps.Tilemap:SetColliderType(position, colliderType) end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Tilemaps.Tile.ColliderType
function UnityEngine.Tilemaps.Tilemap:GetColliderType(position) end
---@param position UnityEngine.Vector3Int
---@return number
function UnityEngine.Tilemaps.Tilemap:GetAnimationFrameCount(position) end
---@param position UnityEngine.Vector3Int
---@return number
function UnityEngine.Tilemaps.Tilemap:GetAnimationFrame(position) end
---@param position UnityEngine.Vector3Int
---@param frame number
function UnityEngine.Tilemaps.Tilemap:SetAnimationFrame(position, frame) end
---@param position UnityEngine.Vector3Int
---@return number
function UnityEngine.Tilemaps.Tilemap:GetAnimationTime(position) end
---@param position UnityEngine.Vector3Int
---@param time number
function UnityEngine.Tilemaps.Tilemap:SetAnimationTime(position, time) end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Tilemaps.TileAnimationFlags
function UnityEngine.Tilemaps.Tilemap:GetTileAnimationFlags(position) end
---@param position UnityEngine.Vector3Int
---@param flags UnityEngine.Tilemaps.TileAnimationFlags
function UnityEngine.Tilemaps.Tilemap:SetTileAnimationFlags(position, flags) end
---@param position UnityEngine.Vector3Int
---@param flags UnityEngine.Tilemaps.TileAnimationFlags
function UnityEngine.Tilemaps.Tilemap:AddTileAnimationFlags(position, flags) end
---@param position UnityEngine.Vector3Int
---@param flags UnityEngine.Tilemaps.TileAnimationFlags
function UnityEngine.Tilemaps.Tilemap:RemoveTileAnimationFlags(position, flags) end
---@param position UnityEngine.Vector3Int
---@param tile UnityEngine.Tilemaps.TileBase
function UnityEngine.Tilemaps.Tilemap:FloodFill(position, tile) end
---@param position UnityEngine.Vector3Int
---@param tile UnityEngine.Tilemaps.TileBase
---@param startX number
---@param startY number
---@param endX number
---@param endY number
function UnityEngine.Tilemaps.Tilemap:BoxFill(position, tile, startX, startY, endX, endY) end
---@overload fun(self: UnityEngine.Tilemaps.Tilemap, position: UnityEngine.Vector3Int, insertCells: UnityEngine.Vector3Int)
---@param position UnityEngine.Vector3Int
---@param numColumns number
---@param numRows number
---@param numLayers number
function UnityEngine.Tilemaps.Tilemap:InsertCells(position, numColumns, numRows, numLayers) end
---@overload fun(self: UnityEngine.Tilemaps.Tilemap, position: UnityEngine.Vector3Int, deleteCells: UnityEngine.Vector3Int)
---@param position UnityEngine.Vector3Int
---@param numColumns number
---@param numRows number
---@param numLayers number
function UnityEngine.Tilemaps.Tilemap:DeleteCells(position, numColumns, numRows, numLayers) end
function UnityEngine.Tilemaps.Tilemap:ClearAllTiles() end
function UnityEngine.Tilemaps.Tilemap:ResizeBounds() end
function UnityEngine.Tilemaps.Tilemap:CompressBounds() end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Tilemaps.TileBase
function UnityEngine.Tilemaps.Tilemap:GetEditorPreviewTile(position) end
---@param position UnityEngine.Vector3Int
---@param tile UnityEngine.Tilemaps.TileBase
function UnityEngine.Tilemaps.Tilemap:SetEditorPreviewTile(position, tile) end
---@param position UnityEngine.Vector3Int
---@return boolean
function UnityEngine.Tilemaps.Tilemap:HasEditorPreviewTile(position) end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Sprite
function UnityEngine.Tilemaps.Tilemap:GetEditorPreviewSprite(position) end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Matrix4x4
function UnityEngine.Tilemaps.Tilemap:GetEditorPreviewTransformMatrix(position) end
---@param position UnityEngine.Vector3Int
---@param transform UnityEngine.Matrix4x4
function UnityEngine.Tilemaps.Tilemap:SetEditorPreviewTransformMatrix(position, transform) end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Color
function UnityEngine.Tilemaps.Tilemap:GetEditorPreviewColor(position) end
---@param position UnityEngine.Vector3Int
---@param color UnityEngine.Color
function UnityEngine.Tilemaps.Tilemap:SetEditorPreviewColor(position, color) end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Tilemaps.TileFlags
function UnityEngine.Tilemaps.Tilemap:GetEditorPreviewTileFlags(position) end
---@param position UnityEngine.Vector3Int
---@param tile UnityEngine.Tilemaps.TileBase
function UnityEngine.Tilemaps.Tilemap:EditorPreviewFloodFill(position, tile) end
---@param position UnityEngine.Vector3Int
---@param tile UnityEngine.Object
---@param startX number
---@param startY number
---@param endX number
---@param endY number
function UnityEngine.Tilemaps.Tilemap:EditorPreviewBoxFill(position, tile, startX, startY, endX, endY) end
function UnityEngine.Tilemaps.Tilemap:ClearAllEditorPreviewTiles() end

---@class UnityEngine.Tilemaps.Tilemap.Orientation
---@field XY UnityEngine.Tilemaps.Tilemap.Orientation
---@field XZ UnityEngine.Tilemaps.Tilemap.Orientation
---@field YX UnityEngine.Tilemaps.Tilemap.Orientation
---@field YZ UnityEngine.Tilemaps.Tilemap.Orientation
---@field ZX UnityEngine.Tilemaps.Tilemap.Orientation
---@field ZY UnityEngine.Tilemaps.Tilemap.Orientation
---@field Custom UnityEngine.Tilemaps.Tilemap.Orientation
UnityEngine.Tilemaps.Tilemap.Orientation = {}
---@alias CS.UnityEngine.Tilemaps.Tilemap.Orientation UnityEngine.Tilemaps.Tilemap.Orientation
CS.UnityEngine.Tilemaps.Tilemap.Orientation = UnityEngine.Tilemaps.Tilemap.Orientation


---@class UnityEngine.Tilemaps.Tilemap.SyncTile : System.ValueType
---@field position UnityEngine.Vector3Int
---@field tile UnityEngine.Tilemaps.TileBase
---@field tileData UnityEngine.Tilemaps.TileData
UnityEngine.Tilemaps.Tilemap.SyncTile = {}
---@alias CS.UnityEngine.Tilemaps.Tilemap.SyncTile UnityEngine.Tilemaps.Tilemap.SyncTile
CS.UnityEngine.Tilemaps.Tilemap.SyncTile = UnityEngine.Tilemaps.Tilemap.SyncTile


---@class UnityEngine.Tilemaps.Tilemap.SyncTileCallbackSettings : System.ValueType
UnityEngine.Tilemaps.Tilemap.SyncTileCallbackSettings = {}
---@alias CS.UnityEngine.Tilemaps.Tilemap.SyncTileCallbackSettings UnityEngine.Tilemaps.Tilemap.SyncTileCallbackSettings
CS.UnityEngine.Tilemaps.Tilemap.SyncTileCallbackSettings = UnityEngine.Tilemaps.Tilemap.SyncTileCallbackSettings


---@class UnityEngine.Tilemaps.TileFlags
---@field None UnityEngine.Tilemaps.TileFlags
---@field LockColor UnityEngine.Tilemaps.TileFlags
---@field LockTransform UnityEngine.Tilemaps.TileFlags
---@field InstantiateGameObjectRuntimeOnly UnityEngine.Tilemaps.TileFlags
---@field KeepGameObjectRuntimeOnly UnityEngine.Tilemaps.TileFlags
---@field LockAll UnityEngine.Tilemaps.TileFlags
UnityEngine.Tilemaps.TileFlags = {}
---@alias CS.UnityEngine.Tilemaps.TileFlags UnityEngine.Tilemaps.TileFlags
CS.UnityEngine.Tilemaps.TileFlags = UnityEngine.Tilemaps.TileFlags


---@class UnityEngine.Tilemaps.TileAnimationFlags
---@field None UnityEngine.Tilemaps.TileAnimationFlags
---@field LoopOnce UnityEngine.Tilemaps.TileAnimationFlags
---@field PauseAnimation UnityEngine.Tilemaps.TileAnimationFlags
---@field UpdatePhysics UnityEngine.Tilemaps.TileAnimationFlags
UnityEngine.Tilemaps.TileAnimationFlags = {}
---@alias CS.UnityEngine.Tilemaps.TileAnimationFlags UnityEngine.Tilemaps.TileAnimationFlags
CS.UnityEngine.Tilemaps.TileAnimationFlags = UnityEngine.Tilemaps.TileAnimationFlags


---@class UnityEngine.Tilemaps.TilemapRenderer : UnityEngine.Renderer
---@field chunkSize UnityEngine.Vector3Int
---@field chunkCullingBounds UnityEngine.Vector3
---@field maxChunkCount number
---@field maxFrameAge number
---@field sortOrder UnityEngine.Tilemaps.TilemapRenderer.SortOrder
---@field mode UnityEngine.Tilemaps.TilemapRenderer.Mode
---@field detectChunkCullingBounds UnityEngine.Tilemaps.TilemapRenderer.DetectChunkCullingBounds
---@field maskInteraction UnityEngine.SpriteMaskInteraction
UnityEngine.Tilemaps.TilemapRenderer = {}
---@alias CS.UnityEngine.Tilemaps.TilemapRenderer UnityEngine.Tilemaps.TilemapRenderer
CS.UnityEngine.Tilemaps.TilemapRenderer = UnityEngine.Tilemaps.TilemapRenderer

---@return UnityEngine.Tilemaps.TilemapRenderer
function UnityEngine.Tilemaps.TilemapRenderer.New() end

---@class UnityEngine.Tilemaps.TilemapRenderer.SortOrder
---@field BottomLeft UnityEngine.Tilemaps.TilemapRenderer.SortOrder
---@field BottomRight UnityEngine.Tilemaps.TilemapRenderer.SortOrder
---@field TopLeft UnityEngine.Tilemaps.TilemapRenderer.SortOrder
---@field TopRight UnityEngine.Tilemaps.TilemapRenderer.SortOrder
UnityEngine.Tilemaps.TilemapRenderer.SortOrder = {}
---@alias CS.UnityEngine.Tilemaps.TilemapRenderer.SortOrder UnityEngine.Tilemaps.TilemapRenderer.SortOrder
CS.UnityEngine.Tilemaps.TilemapRenderer.SortOrder = UnityEngine.Tilemaps.TilemapRenderer.SortOrder


---@class UnityEngine.Tilemaps.TilemapRenderer.Mode
---@field Chunk UnityEngine.Tilemaps.TilemapRenderer.Mode
---@field Individual UnityEngine.Tilemaps.TilemapRenderer.Mode
UnityEngine.Tilemaps.TilemapRenderer.Mode = {}
---@alias CS.UnityEngine.Tilemaps.TilemapRenderer.Mode UnityEngine.Tilemaps.TilemapRenderer.Mode
CS.UnityEngine.Tilemaps.TilemapRenderer.Mode = UnityEngine.Tilemaps.TilemapRenderer.Mode


---@class UnityEngine.Tilemaps.TilemapRenderer.DetectChunkCullingBounds
---@field Auto UnityEngine.Tilemaps.TilemapRenderer.DetectChunkCullingBounds
---@field Manual UnityEngine.Tilemaps.TilemapRenderer.DetectChunkCullingBounds
UnityEngine.Tilemaps.TilemapRenderer.DetectChunkCullingBounds = {}
---@alias CS.UnityEngine.Tilemaps.TilemapRenderer.DetectChunkCullingBounds UnityEngine.Tilemaps.TilemapRenderer.DetectChunkCullingBounds
CS.UnityEngine.Tilemaps.TilemapRenderer.DetectChunkCullingBounds = UnityEngine.Tilemaps.TilemapRenderer.DetectChunkCullingBounds


---@class UnityEngine.Tilemaps.TileData : System.ValueType
---@field sprite UnityEngine.Sprite
---@field color UnityEngine.Color
---@field transform UnityEngine.Matrix4x4
---@field gameObject UnityEngine.GameObject
---@field flags UnityEngine.Tilemaps.TileFlags
---@field colliderType UnityEngine.Tilemaps.Tile.ColliderType
UnityEngine.Tilemaps.TileData = {}
---@alias CS.UnityEngine.Tilemaps.TileData UnityEngine.Tilemaps.TileData
CS.UnityEngine.Tilemaps.TileData = UnityEngine.Tilemaps.TileData


---@class UnityEngine.Tilemaps.TileDataNative : System.ValueType
---@field sprite number
---@field color UnityEngine.Color
---@field transform UnityEngine.Matrix4x4
---@field gameObject number
---@field flags UnityEngine.Tilemaps.TileFlags
---@field colliderType UnityEngine.Tilemaps.Tile.ColliderType
UnityEngine.Tilemaps.TileDataNative = {}
---@alias CS.UnityEngine.Tilemaps.TileDataNative UnityEngine.Tilemaps.TileDataNative
CS.UnityEngine.Tilemaps.TileDataNative = UnityEngine.Tilemaps.TileDataNative


---@class UnityEngine.Tilemaps.TileChangeData : System.ValueType
---@field position UnityEngine.Vector3Int
---@field tile UnityEngine.Tilemaps.TileBase
---@field color UnityEngine.Color
---@field transform UnityEngine.Matrix4x4
UnityEngine.Tilemaps.TileChangeData = {}
---@alias CS.UnityEngine.Tilemaps.TileChangeData UnityEngine.Tilemaps.TileChangeData
CS.UnityEngine.Tilemaps.TileChangeData = UnityEngine.Tilemaps.TileChangeData

---@param position UnityEngine.Vector3Int
---@param tile UnityEngine.Tilemaps.TileBase
---@param color UnityEngine.Color
---@param transform UnityEngine.Matrix4x4
---@return UnityEngine.Tilemaps.TileChangeData
function UnityEngine.Tilemaps.TileChangeData.New(position, tile, color, transform) end

---@class UnityEngine.Tilemaps.TileAnimationData : System.ValueType
---@field animatedSprites UnityEngine.Sprite[]
---@field animationSpeed number
---@field animationStartTime number
---@field flags UnityEngine.Tilemaps.TileAnimationFlags
UnityEngine.Tilemaps.TileAnimationData = {}
---@alias CS.UnityEngine.Tilemaps.TileAnimationData UnityEngine.Tilemaps.TileAnimationData
CS.UnityEngine.Tilemaps.TileAnimationData = UnityEngine.Tilemaps.TileAnimationData


---@class UnityEngine.Tilemaps.TilemapCollider2D : UnityEngine.Collider2D
---@field useDelaunayMesh boolean
---@field maximumTileChangeCount number
---@field extrusionFactor number
---@field hasTilemapChanges boolean
UnityEngine.Tilemaps.TilemapCollider2D = {}
---@alias CS.UnityEngine.Tilemaps.TilemapCollider2D UnityEngine.Tilemaps.TilemapCollider2D
CS.UnityEngine.Tilemaps.TilemapCollider2D = UnityEngine.Tilemaps.TilemapCollider2D

---@return UnityEngine.Tilemaps.TilemapCollider2D
function UnityEngine.Tilemaps.TilemapCollider2D.New() end
function UnityEngine.Tilemaps.TilemapCollider2D:ProcessTilemapChanges() end

---@class UnityEngine.ICanvasRaycastFilter
UnityEngine.ICanvasRaycastFilter = {}
---@alias CS.UnityEngine.ICanvasRaycastFilter UnityEngine.ICanvasRaycastFilter
CS.UnityEngine.ICanvasRaycastFilter = UnityEngine.ICanvasRaycastFilter

---@param sp UnityEngine.Vector2
---@param eventCamera UnityEngine.Camera
---@return boolean
function UnityEngine.ICanvasRaycastFilter:IsRaycastLocationValid(sp, eventCamera) end

---@class UnityEngine.CanvasGroup : UnityEngine.Behaviour
---@field alpha number
---@field interactable boolean
---@field blocksRaycasts boolean
---@field ignoreParentGroups boolean
UnityEngine.CanvasGroup = {}
---@alias CS.UnityEngine.CanvasGroup UnityEngine.CanvasGroup
CS.UnityEngine.CanvasGroup = UnityEngine.CanvasGroup

---@return UnityEngine.CanvasGroup
function UnityEngine.CanvasGroup.New() end
---@param sp UnityEngine.Vector2
---@param eventCamera UnityEngine.Camera
---@return boolean
function UnityEngine.CanvasGroup:IsRaycastLocationValid(sp, eventCamera) end
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.CanvasGroup:DOFade(endValue, duration) end

---@class UnityEngine.CanvasRenderer : UnityEngine.Component
---@field hasPopInstruction boolean
---@field materialCount number
---@field popMaterialCount number
---@field absoluteDepth number
---@field hasMoved boolean
---@field cullTransparentMesh boolean
---@field hasRectClipping boolean
---@field relativeDepth number
---@field cull boolean
---@field clippingSoftness UnityEngine.Vector2
UnityEngine.CanvasRenderer = {}
---@alias CS.UnityEngine.CanvasRenderer UnityEngine.CanvasRenderer
CS.UnityEngine.CanvasRenderer = UnityEngine.CanvasRenderer

---@return UnityEngine.CanvasRenderer
function UnityEngine.CanvasRenderer.New() end
---@overload fun(verts: System.Collections.Generic.List, positions: System.Collections.Generic.List, colors: System.Collections.Generic.List, uv0S: System.Collections.Generic.List, uv1S: System.Collections.Generic.List, normals: System.Collections.Generic.List, tangents: System.Collections.Generic.List, indices: System.Collections.Generic.List)
---@param verts System.Collections.Generic.List
---@param positions System.Collections.Generic.List
---@param colors System.Collections.Generic.List
---@param uv0S System.Collections.Generic.List
---@param uv1S System.Collections.Generic.List
---@param uv2S System.Collections.Generic.List
---@param uv3S System.Collections.Generic.List
---@param normals System.Collections.Generic.List
---@param tangents System.Collections.Generic.List
---@param indices System.Collections.Generic.List
function UnityEngine.CanvasRenderer.SplitUIVertexStreams(verts, positions, colors, uv0S, uv1S, uv2S, uv3S, normals, tangents, indices) end
---@overload fun(verts: System.Collections.Generic.List, positions: System.Collections.Generic.List, colors: System.Collections.Generic.List, uv0S: System.Collections.Generic.List, uv1S: System.Collections.Generic.List, normals: System.Collections.Generic.List, tangents: System.Collections.Generic.List, indices: System.Collections.Generic.List)
---@param verts System.Collections.Generic.List
---@param positions System.Collections.Generic.List
---@param colors System.Collections.Generic.List
---@param uv0S System.Collections.Generic.List
---@param uv1S System.Collections.Generic.List
---@param uv2S System.Collections.Generic.List
---@param uv3S System.Collections.Generic.List
---@param normals System.Collections.Generic.List
---@param tangents System.Collections.Generic.List
---@param indices System.Collections.Generic.List
function UnityEngine.CanvasRenderer.CreateUIVertexStream(verts, positions, colors, uv0S, uv1S, uv2S, uv3S, normals, tangents, indices) end
---@overload fun(verts: System.Collections.Generic.List, positions: System.Collections.Generic.List, colors: System.Collections.Generic.List, uv0S: System.Collections.Generic.List, uv1S: System.Collections.Generic.List, normals: System.Collections.Generic.List, tangents: System.Collections.Generic.List)
---@param verts System.Collections.Generic.List
---@param positions System.Collections.Generic.List
---@param colors System.Collections.Generic.List
---@param uv0S System.Collections.Generic.List
---@param uv1S System.Collections.Generic.List
---@param uv2S System.Collections.Generic.List
---@param uv3S System.Collections.Generic.List
---@param normals System.Collections.Generic.List
---@param tangents System.Collections.Generic.List
function UnityEngine.CanvasRenderer.AddUIVertexStream(verts, positions, colors, uv0S, uv1S, uv2S, uv3S, normals, tangents) end
---@param color UnityEngine.Color
function UnityEngine.CanvasRenderer:SetColor(color) end
---@return UnityEngine.Color
function UnityEngine.CanvasRenderer:GetColor() end
---@param rect UnityEngine.Rect
function UnityEngine.CanvasRenderer:EnableRectClipping(rect) end
function UnityEngine.CanvasRenderer:DisableRectClipping() end
---@overload fun(self: UnityEngine.CanvasRenderer, material: UnityEngine.Material, index: number)
---@param material UnityEngine.Material
---@param texture UnityEngine.Texture
function UnityEngine.CanvasRenderer:SetMaterial(material, texture) end
---@overload fun(self: UnityEngine.CanvasRenderer, index: number) : UnityEngine.Material
---@return UnityEngine.Material
function UnityEngine.CanvasRenderer:GetMaterial() end
---@param material UnityEngine.Material
---@param index number
function UnityEngine.CanvasRenderer:SetPopMaterial(material, index) end
---@param index number
---@return UnityEngine.Material
function UnityEngine.CanvasRenderer:GetPopMaterial(index) end
---@param texture UnityEngine.Texture
function UnityEngine.CanvasRenderer:SetTexture(texture) end
---@param texture UnityEngine.Texture
function UnityEngine.CanvasRenderer:SetAlphaTexture(texture) end
---@param mesh UnityEngine.Mesh
function UnityEngine.CanvasRenderer:SetMesh(mesh) end
---@return UnityEngine.Mesh
function UnityEngine.CanvasRenderer:GetMesh() end
function UnityEngine.CanvasRenderer:Clear() end
---@return number
function UnityEngine.CanvasRenderer:GetAlpha() end
---@param alpha number
function UnityEngine.CanvasRenderer:SetAlpha(alpha) end
---@return number
function UnityEngine.CanvasRenderer:GetInheritedAlpha() end

---@class UnityEngine.CanvasRenderer.OnRequestRebuild : System.MulticastDelegate
UnityEngine.CanvasRenderer.OnRequestRebuild = {}
---@alias CS.UnityEngine.CanvasRenderer.OnRequestRebuild UnityEngine.CanvasRenderer.OnRequestRebuild
CS.UnityEngine.CanvasRenderer.OnRequestRebuild = UnityEngine.CanvasRenderer.OnRequestRebuild

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.CanvasRenderer.OnRequestRebuild
function UnityEngine.CanvasRenderer.OnRequestRebuild.New(object, method) end
function UnityEngine.CanvasRenderer.OnRequestRebuild:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.CanvasRenderer.OnRequestRebuild:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.CanvasRenderer.OnRequestRebuild:EndInvoke(result) end

---@class UnityEngine.RectTransformUtility : System.Object
UnityEngine.RectTransformUtility = {}
---@alias CS.UnityEngine.RectTransformUtility UnityEngine.RectTransformUtility
CS.UnityEngine.RectTransformUtility = UnityEngine.RectTransformUtility

---@param point UnityEngine.Vector2
---@param elementTransform UnityEngine.Transform
---@param canvas UnityEngine.Canvas
---@return UnityEngine.Vector2
function UnityEngine.RectTransformUtility.PixelAdjustPoint(point, elementTransform, canvas) end
---@param rectTransform UnityEngine.RectTransform
---@param canvas UnityEngine.Canvas
---@return UnityEngine.Rect
function UnityEngine.RectTransformUtility.PixelAdjustRect(rectTransform, canvas) end
---@overload fun(rect: UnityEngine.RectTransform, screenPoint: UnityEngine.Vector2) : boolean
---@overload fun(rect: UnityEngine.RectTransform, screenPoint: UnityEngine.Vector2, cam: UnityEngine.Camera) : boolean
---@param rect UnityEngine.RectTransform
---@param screenPoint UnityEngine.Vector2
---@param cam UnityEngine.Camera
---@param offset UnityEngine.Vector4
---@return boolean
function UnityEngine.RectTransformUtility.RectangleContainsScreenPoint(rect, screenPoint, cam, offset) end
---@param rect UnityEngine.RectTransform
---@param screenPoint UnityEngine.Vector2
---@param cam UnityEngine.Camera
---@param out_worldPoint UnityEngine.Vector3
---@return boolean,UnityEngine.Vector3
function UnityEngine.RectTransformUtility.ScreenPointToWorldPointInRectangle(rect, screenPoint, cam, out_worldPoint) end
---@param rect UnityEngine.RectTransform
---@param screenPoint UnityEngine.Vector2
---@param cam UnityEngine.Camera
---@param out_localPoint UnityEngine.Vector2
---@return boolean,UnityEngine.Vector2
function UnityEngine.RectTransformUtility.ScreenPointToLocalPointInRectangle(rect, screenPoint, cam, out_localPoint) end
---@param cam UnityEngine.Camera
---@param screenPos UnityEngine.Vector2
---@return UnityEngine.Ray
function UnityEngine.RectTransformUtility.ScreenPointToRay(cam, screenPos) end
---@param cam UnityEngine.Camera
---@param worldPoint UnityEngine.Vector3
---@return UnityEngine.Vector2
function UnityEngine.RectTransformUtility.WorldToScreenPoint(cam, worldPoint) end
---@overload fun(root: UnityEngine.Transform, child: UnityEngine.Transform) : UnityEngine.Bounds
---@param trans UnityEngine.Transform
---@return UnityEngine.Bounds
function UnityEngine.RectTransformUtility.CalculateRelativeRectTransformBounds(trans) end
---@param rect UnityEngine.RectTransform
---@param axis number
---@param keepPositioning boolean
---@param recursive boolean
function UnityEngine.RectTransformUtility.FlipLayoutOnAxis(rect, axis, keepPositioning, recursive) end
---@param rect UnityEngine.RectTransform
---@param keepPositioning boolean
---@param recursive boolean
function UnityEngine.RectTransformUtility.FlipLayoutAxes(rect, keepPositioning, recursive) end

---@class UnityEngine.RenderMode
---@field ScreenSpaceOverlay UnityEngine.RenderMode
---@field ScreenSpaceCamera UnityEngine.RenderMode
---@field WorldSpace UnityEngine.RenderMode
UnityEngine.RenderMode = {}
---@alias CS.UnityEngine.RenderMode UnityEngine.RenderMode
CS.UnityEngine.RenderMode = UnityEngine.RenderMode


---@class UnityEngine.StandaloneRenderResize
---@field Enabled UnityEngine.StandaloneRenderResize
---@field Disabled UnityEngine.StandaloneRenderResize
UnityEngine.StandaloneRenderResize = {}
---@alias CS.UnityEngine.StandaloneRenderResize UnityEngine.StandaloneRenderResize
CS.UnityEngine.StandaloneRenderResize = UnityEngine.StandaloneRenderResize


---@class UnityEngine.AdditionalCanvasShaderChannels
---@field None UnityEngine.AdditionalCanvasShaderChannels
---@field TexCoord1 UnityEngine.AdditionalCanvasShaderChannels
---@field TexCoord2 UnityEngine.AdditionalCanvasShaderChannels
---@field TexCoord3 UnityEngine.AdditionalCanvasShaderChannels
---@field Normal UnityEngine.AdditionalCanvasShaderChannels
---@field Tangent UnityEngine.AdditionalCanvasShaderChannels
UnityEngine.AdditionalCanvasShaderChannels = {}
---@alias CS.UnityEngine.AdditionalCanvasShaderChannels UnityEngine.AdditionalCanvasShaderChannels
CS.UnityEngine.AdditionalCanvasShaderChannels = UnityEngine.AdditionalCanvasShaderChannels


---@class UnityEngine.Canvas : UnityEngine.Behaviour
---@field renderMode UnityEngine.RenderMode
---@field isRootCanvas boolean
---@field pixelRect UnityEngine.Rect
---@field scaleFactor number
---@field referencePixelsPerUnit number
---@field overridePixelPerfect boolean
---@field vertexColorAlwaysGammaSpace boolean
---@field pixelPerfect boolean
---@field planeDistance number
---@field renderOrder number
---@field overrideSorting boolean
---@field sortingOrder number
---@field targetDisplay number
---@field sortingLayerID number
---@field cachedSortingLayerValue number
---@field additionalShaderChannels UnityEngine.AdditionalCanvasShaderChannels
---@field sortingLayerName string
---@field rootCanvas UnityEngine.Canvas
---@field renderingDisplaySize UnityEngine.Vector2
---@field updateRectTransformForStandalone UnityEngine.StandaloneRenderResize
---@field worldCamera UnityEngine.Camera
---@field normalizedSortingGridSize number
UnityEngine.Canvas = {}
---@alias CS.UnityEngine.Canvas UnityEngine.Canvas
CS.UnityEngine.Canvas = UnityEngine.Canvas

---@return UnityEngine.Canvas
function UnityEngine.Canvas.New() end
---@return UnityEngine.Material
function UnityEngine.Canvas.GetDefaultCanvasMaterial() end
---@return UnityEngine.Material
function UnityEngine.Canvas.GetETC1SupportedCanvasMaterial() end
function UnityEngine.Canvas.ForceUpdateCanvases() end

---@class UnityEngine.Canvas.WillRenderCanvases : System.MulticastDelegate
UnityEngine.Canvas.WillRenderCanvases = {}
---@alias CS.UnityEngine.Canvas.WillRenderCanvases UnityEngine.Canvas.WillRenderCanvases
CS.UnityEngine.Canvas.WillRenderCanvases = UnityEngine.Canvas.WillRenderCanvases

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Canvas.WillRenderCanvases
function UnityEngine.Canvas.WillRenderCanvases.New(object, method) end
function UnityEngine.Canvas.WillRenderCanvases:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Canvas.WillRenderCanvases:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Canvas.WillRenderCanvases:EndInvoke(result) end

---@class UnityEngine.UISystemProfilerApi : System.Object
UnityEngine.UISystemProfilerApi = {}
---@alias CS.UnityEngine.UISystemProfilerApi UnityEngine.UISystemProfilerApi
CS.UnityEngine.UISystemProfilerApi = UnityEngine.UISystemProfilerApi

---@param type UnityEngine.UISystemProfilerApi.SampleType
function UnityEngine.UISystemProfilerApi.BeginSample(type) end
---@param type UnityEngine.UISystemProfilerApi.SampleType
function UnityEngine.UISystemProfilerApi.EndSample(type) end
---@param name string
---@param obj UnityEngine.Object
function UnityEngine.UISystemProfilerApi.AddMarker(name, obj) end

---@class UnityEngine.UISystemProfilerApi.SampleType
---@field Layout UnityEngine.UISystemProfilerApi.SampleType
---@field Render UnityEngine.UISystemProfilerApi.SampleType
UnityEngine.UISystemProfilerApi.SampleType = {}
---@alias CS.UnityEngine.UISystemProfilerApi.SampleType UnityEngine.UISystemProfilerApi.SampleType
CS.UnityEngine.UISystemProfilerApi.SampleType = UnityEngine.UISystemProfilerApi.SampleType


---@class UnityEngine.Yoga.BaselineFunction : System.MulticastDelegate
UnityEngine.Yoga.BaselineFunction = {}
---@alias CS.UnityEngine.Yoga.BaselineFunction UnityEngine.Yoga.BaselineFunction
CS.UnityEngine.Yoga.BaselineFunction = UnityEngine.Yoga.BaselineFunction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Yoga.BaselineFunction
function UnityEngine.Yoga.BaselineFunction.New(object, method) end
---@param node UnityEngine.Yoga.YogaNode
---@param width number
---@param height number
---@return number
function UnityEngine.Yoga.BaselineFunction:Invoke(node, width, height) end
---@param node UnityEngine.Yoga.YogaNode
---@param width number
---@param height number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Yoga.BaselineFunction:BeginInvoke(node, width, height, callback, object) end
---@param result System.IAsyncResult
---@return number
function UnityEngine.Yoga.BaselineFunction:EndInvoke(result) end

---@class UnityEngine.Yoga.Logger : System.MulticastDelegate
UnityEngine.Yoga.Logger = {}
---@alias CS.UnityEngine.Yoga.Logger UnityEngine.Yoga.Logger
CS.UnityEngine.Yoga.Logger = UnityEngine.Yoga.Logger

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Yoga.Logger
function UnityEngine.Yoga.Logger.New(object, method) end
---@param config UnityEngine.Yoga.YogaConfig
---@param node UnityEngine.Yoga.YogaNode
---@param level UnityEngine.Yoga.YogaLogLevel
---@param message string
function UnityEngine.Yoga.Logger:Invoke(config, node, level, message) end
---@param config UnityEngine.Yoga.YogaConfig
---@param node UnityEngine.Yoga.YogaNode
---@param level UnityEngine.Yoga.YogaLogLevel
---@param message string
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Yoga.Logger:BeginInvoke(config, node, level, message, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Yoga.Logger:EndInvoke(result) end

---@class UnityEngine.Yoga.MeasureFunction : System.MulticastDelegate
UnityEngine.Yoga.MeasureFunction = {}
---@alias CS.UnityEngine.Yoga.MeasureFunction UnityEngine.Yoga.MeasureFunction
CS.UnityEngine.Yoga.MeasureFunction = UnityEngine.Yoga.MeasureFunction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Yoga.MeasureFunction
function UnityEngine.Yoga.MeasureFunction.New(object, method) end
---@param node UnityEngine.Yoga.YogaNode
---@param width number
---@param widthMode UnityEngine.Yoga.YogaMeasureMode
---@param height number
---@param heightMode UnityEngine.Yoga.YogaMeasureMode
---@return UnityEngine.Yoga.YogaSize
function UnityEngine.Yoga.MeasureFunction:Invoke(node, width, widthMode, height, heightMode) end
---@param node UnityEngine.Yoga.YogaNode
---@param width number
---@param widthMode UnityEngine.Yoga.YogaMeasureMode
---@param height number
---@param heightMode UnityEngine.Yoga.YogaMeasureMode
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Yoga.MeasureFunction:BeginInvoke(node, width, widthMode, height, heightMode, callback, object) end
---@param result System.IAsyncResult
---@return UnityEngine.Yoga.YogaSize
function UnityEngine.Yoga.MeasureFunction:EndInvoke(result) end

---@class UnityEngine.Yoga.MeasureOutput : System.Object
UnityEngine.Yoga.MeasureOutput = {}
---@alias CS.UnityEngine.Yoga.MeasureOutput UnityEngine.Yoga.MeasureOutput
CS.UnityEngine.Yoga.MeasureOutput = UnityEngine.Yoga.MeasureOutput

---@return UnityEngine.Yoga.MeasureOutput
function UnityEngine.Yoga.MeasureOutput.New() end
---@param width number
---@param height number
---@return UnityEngine.Yoga.YogaSize
function UnityEngine.Yoga.MeasureOutput.Make(width, height) end

---@class UnityEngine.Yoga.YogaAlign
---@field Auto UnityEngine.Yoga.YogaAlign
---@field FlexStart UnityEngine.Yoga.YogaAlign
---@field Center UnityEngine.Yoga.YogaAlign
---@field FlexEnd UnityEngine.Yoga.YogaAlign
---@field Stretch UnityEngine.Yoga.YogaAlign
---@field Baseline UnityEngine.Yoga.YogaAlign
---@field SpaceBetween UnityEngine.Yoga.YogaAlign
---@field SpaceAround UnityEngine.Yoga.YogaAlign
UnityEngine.Yoga.YogaAlign = {}
---@alias CS.UnityEngine.Yoga.YogaAlign UnityEngine.Yoga.YogaAlign
CS.UnityEngine.Yoga.YogaAlign = UnityEngine.Yoga.YogaAlign


---@class UnityEngine.Yoga.YogaBaselineFunc : System.MulticastDelegate
UnityEngine.Yoga.YogaBaselineFunc = {}
---@alias CS.UnityEngine.Yoga.YogaBaselineFunc UnityEngine.Yoga.YogaBaselineFunc
CS.UnityEngine.Yoga.YogaBaselineFunc = UnityEngine.Yoga.YogaBaselineFunc

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Yoga.YogaBaselineFunc
function UnityEngine.Yoga.YogaBaselineFunc.New(object, method) end
---@param unmanagedNodePtr System.IntPtr
---@param width number
---@param height number
---@return number
function UnityEngine.Yoga.YogaBaselineFunc:Invoke(unmanagedNodePtr, width, height) end
---@param unmanagedNodePtr System.IntPtr
---@param width number
---@param height number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Yoga.YogaBaselineFunc:BeginInvoke(unmanagedNodePtr, width, height, callback, object) end
---@param result System.IAsyncResult
---@return number
function UnityEngine.Yoga.YogaBaselineFunc:EndInvoke(result) end

---@class UnityEngine.Yoga.YogaConfig : System.Object
---@field Logger UnityEngine.Yoga.Logger
---@field UseWebDefaults boolean
---@field PointScaleFactor number
UnityEngine.Yoga.YogaConfig = {}
---@alias CS.UnityEngine.Yoga.YogaConfig UnityEngine.Yoga.YogaConfig
CS.UnityEngine.Yoga.YogaConfig = UnityEngine.Yoga.YogaConfig

---@return UnityEngine.Yoga.YogaConfig
function UnityEngine.Yoga.YogaConfig.New() end
---@return number
function UnityEngine.Yoga.YogaConfig.GetInstanceCount() end
---@param logger UnityEngine.Yoga.Logger
function UnityEngine.Yoga.YogaConfig.SetDefaultLogger(logger) end
---@param feature UnityEngine.Yoga.YogaExperimentalFeature
---@param enabled boolean
function UnityEngine.Yoga.YogaConfig:SetExperimentalFeatureEnabled(feature, enabled) end
---@param feature UnityEngine.Yoga.YogaExperimentalFeature
---@return boolean
function UnityEngine.Yoga.YogaConfig:IsExperimentalFeatureEnabled(feature) end

---@class UnityEngine.Yoga.YogaConstants : System.Object
---@field Undefined number
UnityEngine.Yoga.YogaConstants = {}
---@alias CS.UnityEngine.Yoga.YogaConstants UnityEngine.Yoga.YogaConstants
CS.UnityEngine.Yoga.YogaConstants = UnityEngine.Yoga.YogaConstants

---@overload fun(value: number) : boolean
---@param value UnityEngine.Yoga.YogaValue
---@return boolean
function UnityEngine.Yoga.YogaConstants.IsUndefined(value) end

---@class UnityEngine.Yoga.YogaDimension
---@field Width UnityEngine.Yoga.YogaDimension
---@field Height UnityEngine.Yoga.YogaDimension
UnityEngine.Yoga.YogaDimension = {}
---@alias CS.UnityEngine.Yoga.YogaDimension UnityEngine.Yoga.YogaDimension
CS.UnityEngine.Yoga.YogaDimension = UnityEngine.Yoga.YogaDimension


---@class UnityEngine.Yoga.YogaDirection
---@field Inherit UnityEngine.Yoga.YogaDirection
---@field LTR UnityEngine.Yoga.YogaDirection
---@field RTL UnityEngine.Yoga.YogaDirection
UnityEngine.Yoga.YogaDirection = {}
---@alias CS.UnityEngine.Yoga.YogaDirection UnityEngine.Yoga.YogaDirection
CS.UnityEngine.Yoga.YogaDirection = UnityEngine.Yoga.YogaDirection


---@class UnityEngine.Yoga.YogaDisplay
---@field Flex UnityEngine.Yoga.YogaDisplay
---@field None UnityEngine.Yoga.YogaDisplay
UnityEngine.Yoga.YogaDisplay = {}
---@alias CS.UnityEngine.Yoga.YogaDisplay UnityEngine.Yoga.YogaDisplay
CS.UnityEngine.Yoga.YogaDisplay = UnityEngine.Yoga.YogaDisplay


---@class UnityEngine.Yoga.YogaEdge
---@field Left UnityEngine.Yoga.YogaEdge
---@field Top UnityEngine.Yoga.YogaEdge
---@field Right UnityEngine.Yoga.YogaEdge
---@field Bottom UnityEngine.Yoga.YogaEdge
---@field Start UnityEngine.Yoga.YogaEdge
---@field End UnityEngine.Yoga.YogaEdge
---@field Horizontal UnityEngine.Yoga.YogaEdge
---@field Vertical UnityEngine.Yoga.YogaEdge
---@field All UnityEngine.Yoga.YogaEdge
UnityEngine.Yoga.YogaEdge = {}
---@alias CS.UnityEngine.Yoga.YogaEdge UnityEngine.Yoga.YogaEdge
CS.UnityEngine.Yoga.YogaEdge = UnityEngine.Yoga.YogaEdge


---@class UnityEngine.Yoga.YogaExperimentalFeature
---@field WebFlexBasis UnityEngine.Yoga.YogaExperimentalFeature
UnityEngine.Yoga.YogaExperimentalFeature = {}
---@alias CS.UnityEngine.Yoga.YogaExperimentalFeature UnityEngine.Yoga.YogaExperimentalFeature
CS.UnityEngine.Yoga.YogaExperimentalFeature = UnityEngine.Yoga.YogaExperimentalFeature


---@class UnityEngine.Yoga.YogaFlexDirection
---@field Column UnityEngine.Yoga.YogaFlexDirection
---@field ColumnReverse UnityEngine.Yoga.YogaFlexDirection
---@field Row UnityEngine.Yoga.YogaFlexDirection
---@field RowReverse UnityEngine.Yoga.YogaFlexDirection
UnityEngine.Yoga.YogaFlexDirection = {}
---@alias CS.UnityEngine.Yoga.YogaFlexDirection UnityEngine.Yoga.YogaFlexDirection
CS.UnityEngine.Yoga.YogaFlexDirection = UnityEngine.Yoga.YogaFlexDirection


---@class UnityEngine.Yoga.YogaJustify
---@field FlexStart UnityEngine.Yoga.YogaJustify
---@field Center UnityEngine.Yoga.YogaJustify
---@field FlexEnd UnityEngine.Yoga.YogaJustify
---@field SpaceBetween UnityEngine.Yoga.YogaJustify
---@field SpaceAround UnityEngine.Yoga.YogaJustify
UnityEngine.Yoga.YogaJustify = {}
---@alias CS.UnityEngine.Yoga.YogaJustify UnityEngine.Yoga.YogaJustify
CS.UnityEngine.Yoga.YogaJustify = UnityEngine.Yoga.YogaJustify


---@class UnityEngine.Yoga.YogaLogger : System.MulticastDelegate
UnityEngine.Yoga.YogaLogger = {}
---@alias CS.UnityEngine.Yoga.YogaLogger UnityEngine.Yoga.YogaLogger
CS.UnityEngine.Yoga.YogaLogger = UnityEngine.Yoga.YogaLogger

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Yoga.YogaLogger
function UnityEngine.Yoga.YogaLogger.New(object, method) end
---@param unmanagedConfigPtr System.IntPtr
---@param unmanagedNotePtr System.IntPtr
---@param level UnityEngine.Yoga.YogaLogLevel
---@param message string
function UnityEngine.Yoga.YogaLogger:Invoke(unmanagedConfigPtr, unmanagedNotePtr, level, message) end
---@param unmanagedConfigPtr System.IntPtr
---@param unmanagedNotePtr System.IntPtr
---@param level UnityEngine.Yoga.YogaLogLevel
---@param message string
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Yoga.YogaLogger:BeginInvoke(unmanagedConfigPtr, unmanagedNotePtr, level, message, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Yoga.YogaLogger:EndInvoke(result) end

---@class UnityEngine.Yoga.YogaLogLevel
---@field Error UnityEngine.Yoga.YogaLogLevel
---@field Warn UnityEngine.Yoga.YogaLogLevel
---@field Info UnityEngine.Yoga.YogaLogLevel
---@field Debug UnityEngine.Yoga.YogaLogLevel
---@field Verbose UnityEngine.Yoga.YogaLogLevel
---@field Fatal UnityEngine.Yoga.YogaLogLevel
UnityEngine.Yoga.YogaLogLevel = {}
---@alias CS.UnityEngine.Yoga.YogaLogLevel UnityEngine.Yoga.YogaLogLevel
CS.UnityEngine.Yoga.YogaLogLevel = UnityEngine.Yoga.YogaLogLevel


---@class UnityEngine.Yoga.YogaMeasureFunc : System.MulticastDelegate
UnityEngine.Yoga.YogaMeasureFunc = {}
---@alias CS.UnityEngine.Yoga.YogaMeasureFunc UnityEngine.Yoga.YogaMeasureFunc
CS.UnityEngine.Yoga.YogaMeasureFunc = UnityEngine.Yoga.YogaMeasureFunc

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Yoga.YogaMeasureFunc
function UnityEngine.Yoga.YogaMeasureFunc.New(object, method) end
---@param unmanagedNodePtr System.IntPtr
---@param width number
---@param widthMode UnityEngine.Yoga.YogaMeasureMode
---@param height number
---@param heightMode UnityEngine.Yoga.YogaMeasureMode
---@return UnityEngine.Yoga.YogaSize
function UnityEngine.Yoga.YogaMeasureFunc:Invoke(unmanagedNodePtr, width, widthMode, height, heightMode) end
---@param unmanagedNodePtr System.IntPtr
---@param width number
---@param widthMode UnityEngine.Yoga.YogaMeasureMode
---@param height number
---@param heightMode UnityEngine.Yoga.YogaMeasureMode
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Yoga.YogaMeasureFunc:BeginInvoke(unmanagedNodePtr, width, widthMode, height, heightMode, callback, object) end
---@param result System.IAsyncResult
---@return UnityEngine.Yoga.YogaSize
function UnityEngine.Yoga.YogaMeasureFunc:EndInvoke(result) end

---@class UnityEngine.Yoga.YogaMeasureMode
---@field Undefined UnityEngine.Yoga.YogaMeasureMode
---@field Exactly UnityEngine.Yoga.YogaMeasureMode
---@field AtMost UnityEngine.Yoga.YogaMeasureMode
UnityEngine.Yoga.YogaMeasureMode = {}
---@alias CS.UnityEngine.Yoga.YogaMeasureMode UnityEngine.Yoga.YogaMeasureMode
CS.UnityEngine.Yoga.YogaMeasureMode = UnityEngine.Yoga.YogaMeasureMode


---@class UnityEngine.Yoga.Native : System.Object
UnityEngine.Yoga.Native = {}
---@alias CS.UnityEngine.Yoga.Native UnityEngine.Yoga.Native
CS.UnityEngine.Yoga.Native = UnityEngine.Yoga.Native

---@param config System.IntPtr
---@return System.IntPtr
function UnityEngine.Yoga.Native.YGNodeNewWithConfig(config) end
---@param ygNode System.IntPtr
function UnityEngine.Yoga.Native.YGNodeFree(ygNode) end
---@param node System.IntPtr
function UnityEngine.Yoga.Native.YGNodeReset(node) end
---@param ygNode System.IntPtr
---@param node UnityEngine.Yoga.YogaNode
function UnityEngine.Yoga.Native.YGSetManagedObject(ygNode, node) end
---@param ygNode System.IntPtr
---@param config System.IntPtr
function UnityEngine.Yoga.Native.YGNodeSetConfig(ygNode, config) end
---@return System.IntPtr
function UnityEngine.Yoga.Native.YGConfigGetDefault() end
---@return System.IntPtr
function UnityEngine.Yoga.Native.YGConfigNew() end
---@param config System.IntPtr
function UnityEngine.Yoga.Native.YGConfigFree(config) end
---@return number
function UnityEngine.Yoga.Native.YGNodeGetInstanceCount() end
---@return number
function UnityEngine.Yoga.Native.YGConfigGetInstanceCount() end
---@param config System.IntPtr
---@param feature UnityEngine.Yoga.YogaExperimentalFeature
---@param enabled boolean
function UnityEngine.Yoga.Native.YGConfigSetExperimentalFeatureEnabled(config, feature, enabled) end
---@param config System.IntPtr
---@param feature UnityEngine.Yoga.YogaExperimentalFeature
---@return boolean
function UnityEngine.Yoga.Native.YGConfigIsExperimentalFeatureEnabled(config, feature) end
---@param config System.IntPtr
---@param useWebDefaults boolean
function UnityEngine.Yoga.Native.YGConfigSetUseWebDefaults(config, useWebDefaults) end
---@param config System.IntPtr
---@return boolean
function UnityEngine.Yoga.Native.YGConfigGetUseWebDefaults(config) end
---@param config System.IntPtr
---@param pixelsInPoint number
function UnityEngine.Yoga.Native.YGConfigSetPointScaleFactor(config, pixelsInPoint) end
---@param config System.IntPtr
---@return number
function UnityEngine.Yoga.Native.YGConfigGetPointScaleFactor(config) end
---@param node System.IntPtr
---@param child System.IntPtr
---@param index number
function UnityEngine.Yoga.Native.YGNodeInsertChild(node, child, index) end
---@param node System.IntPtr
---@param child System.IntPtr
function UnityEngine.Yoga.Native.YGNodeRemoveChild(node, child) end
---@param node System.IntPtr
---@param availableWidth number
---@param availableHeight number
---@param parentDirection UnityEngine.Yoga.YogaDirection
function UnityEngine.Yoga.Native.YGNodeCalculateLayout(node, availableWidth, availableHeight, parentDirection) end
---@param node System.IntPtr
function UnityEngine.Yoga.Native.YGNodeMarkDirty(node) end
---@param node System.IntPtr
---@return boolean
function UnityEngine.Yoga.Native.YGNodeIsDirty(node) end
---@param node System.IntPtr
---@param options UnityEngine.Yoga.YogaPrintOptions
function UnityEngine.Yoga.Native.YGNodePrint(node, options) end
---@param dstNode System.IntPtr
---@param srcNode System.IntPtr
function UnityEngine.Yoga.Native.YGNodeCopyStyle(dstNode, srcNode) end
---@param node System.IntPtr
function UnityEngine.Yoga.Native.YGNodeSetMeasureFunc(node) end
---@param node System.IntPtr
function UnityEngine.Yoga.Native.YGNodeRemoveMeasureFunc(node) end
---@param node UnityEngine.Yoga.YogaNode
---@param width number
---@param widthMode UnityEngine.Yoga.YogaMeasureMode
---@param height number
---@param heightMode UnityEngine.Yoga.YogaMeasureMode
---@param returnValueAddress System.IntPtr
function UnityEngine.Yoga.Native.YGNodeMeasureInvoke(node, width, widthMode, height, heightMode, returnValueAddress) end
---@param node System.IntPtr
function UnityEngine.Yoga.Native.YGNodeSetBaselineFunc(node) end
---@param node System.IntPtr
function UnityEngine.Yoga.Native.YGNodeRemoveBaselineFunc(node) end
---@param node UnityEngine.Yoga.YogaNode
---@param width number
---@param height number
---@param returnValueAddress System.IntPtr
function UnityEngine.Yoga.Native.YGNodeBaselineInvoke(node, width, height, returnValueAddress) end
---@param node System.IntPtr
---@param hasNewLayout boolean
function UnityEngine.Yoga.Native.YGNodeSetHasNewLayout(node, hasNewLayout) end
---@param node System.IntPtr
---@return boolean
function UnityEngine.Yoga.Native.YGNodeGetHasNewLayout(node) end
---@param node System.IntPtr
---@param direction UnityEngine.Yoga.YogaDirection
function UnityEngine.Yoga.Native.YGNodeStyleSetDirection(node, direction) end
---@param node System.IntPtr
---@return UnityEngine.Yoga.YogaDirection
function UnityEngine.Yoga.Native.YGNodeStyleGetDirection(node) end
---@param node System.IntPtr
---@param flexDirection UnityEngine.Yoga.YogaFlexDirection
function UnityEngine.Yoga.Native.YGNodeStyleSetFlexDirection(node, flexDirection) end
---@param node System.IntPtr
---@return UnityEngine.Yoga.YogaFlexDirection
function UnityEngine.Yoga.Native.YGNodeStyleGetFlexDirection(node) end
---@param node System.IntPtr
---@param justifyContent UnityEngine.Yoga.YogaJustify
function UnityEngine.Yoga.Native.YGNodeStyleSetJustifyContent(node, justifyContent) end
---@param node System.IntPtr
---@return UnityEngine.Yoga.YogaJustify
function UnityEngine.Yoga.Native.YGNodeStyleGetJustifyContent(node) end
---@param node System.IntPtr
---@param alignContent UnityEngine.Yoga.YogaAlign
function UnityEngine.Yoga.Native.YGNodeStyleSetAlignContent(node, alignContent) end
---@param node System.IntPtr
---@return UnityEngine.Yoga.YogaAlign
function UnityEngine.Yoga.Native.YGNodeStyleGetAlignContent(node) end
---@param node System.IntPtr
---@param alignItems UnityEngine.Yoga.YogaAlign
function UnityEngine.Yoga.Native.YGNodeStyleSetAlignItems(node, alignItems) end
---@param node System.IntPtr
---@return UnityEngine.Yoga.YogaAlign
function UnityEngine.Yoga.Native.YGNodeStyleGetAlignItems(node) end
---@param node System.IntPtr
---@param alignSelf UnityEngine.Yoga.YogaAlign
function UnityEngine.Yoga.Native.YGNodeStyleSetAlignSelf(node, alignSelf) end
---@param node System.IntPtr
---@return UnityEngine.Yoga.YogaAlign
function UnityEngine.Yoga.Native.YGNodeStyleGetAlignSelf(node) end
---@param node System.IntPtr
---@param positionType UnityEngine.Yoga.YogaPositionType
function UnityEngine.Yoga.Native.YGNodeStyleSetPositionType(node, positionType) end
---@param node System.IntPtr
---@return UnityEngine.Yoga.YogaPositionType
function UnityEngine.Yoga.Native.YGNodeStyleGetPositionType(node) end
---@param node System.IntPtr
---@param flexWrap UnityEngine.Yoga.YogaWrap
function UnityEngine.Yoga.Native.YGNodeStyleSetFlexWrap(node, flexWrap) end
---@param node System.IntPtr
---@return UnityEngine.Yoga.YogaWrap
function UnityEngine.Yoga.Native.YGNodeStyleGetFlexWrap(node) end
---@param node System.IntPtr
---@param flexWrap UnityEngine.Yoga.YogaOverflow
function UnityEngine.Yoga.Native.YGNodeStyleSetOverflow(node, flexWrap) end
---@param node System.IntPtr
---@return UnityEngine.Yoga.YogaOverflow
function UnityEngine.Yoga.Native.YGNodeStyleGetOverflow(node) end
---@param node System.IntPtr
---@param display UnityEngine.Yoga.YogaDisplay
function UnityEngine.Yoga.Native.YGNodeStyleSetDisplay(node, display) end
---@param node System.IntPtr
---@return UnityEngine.Yoga.YogaDisplay
function UnityEngine.Yoga.Native.YGNodeStyleGetDisplay(node) end
---@param node System.IntPtr
---@param flex number
function UnityEngine.Yoga.Native.YGNodeStyleSetFlex(node, flex) end
---@param node System.IntPtr
---@param flexGrow number
function UnityEngine.Yoga.Native.YGNodeStyleSetFlexGrow(node, flexGrow) end
---@param node System.IntPtr
---@return number
function UnityEngine.Yoga.Native.YGNodeStyleGetFlexGrow(node) end
---@param node System.IntPtr
---@param flexShrink number
function UnityEngine.Yoga.Native.YGNodeStyleSetFlexShrink(node, flexShrink) end
---@param node System.IntPtr
---@return number
function UnityEngine.Yoga.Native.YGNodeStyleGetFlexShrink(node) end
---@param node System.IntPtr
---@param flexBasis number
function UnityEngine.Yoga.Native.YGNodeStyleSetFlexBasis(node, flexBasis) end
---@param node System.IntPtr
---@param flexBasis number
function UnityEngine.Yoga.Native.YGNodeStyleSetFlexBasisPercent(node, flexBasis) end
---@param node System.IntPtr
function UnityEngine.Yoga.Native.YGNodeStyleSetFlexBasisAuto(node) end
---@param node System.IntPtr
---@return UnityEngine.Yoga.YogaValue
function UnityEngine.Yoga.Native.YGNodeStyleGetFlexBasis(node) end
---@param node System.IntPtr
---@return number
function UnityEngine.Yoga.Native.YGNodeGetComputedFlexBasis(node) end
---@param node System.IntPtr
---@param width number
function UnityEngine.Yoga.Native.YGNodeStyleSetWidth(node, width) end
---@param node System.IntPtr
---@param width number
function UnityEngine.Yoga.Native.YGNodeStyleSetWidthPercent(node, width) end
---@param node System.IntPtr
function UnityEngine.Yoga.Native.YGNodeStyleSetWidthAuto(node) end
---@param node System.IntPtr
---@return UnityEngine.Yoga.YogaValue
function UnityEngine.Yoga.Native.YGNodeStyleGetWidth(node) end
---@param node System.IntPtr
---@param height number
function UnityEngine.Yoga.Native.YGNodeStyleSetHeight(node, height) end
---@param node System.IntPtr
---@param height number
function UnityEngine.Yoga.Native.YGNodeStyleSetHeightPercent(node, height) end
---@param node System.IntPtr
function UnityEngine.Yoga.Native.YGNodeStyleSetHeightAuto(node) end
---@param node System.IntPtr
---@return UnityEngine.Yoga.YogaValue
function UnityEngine.Yoga.Native.YGNodeStyleGetHeight(node) end
---@param node System.IntPtr
---@param minWidth number
function UnityEngine.Yoga.Native.YGNodeStyleSetMinWidth(node, minWidth) end
---@param node System.IntPtr
---@param minWidth number
function UnityEngine.Yoga.Native.YGNodeStyleSetMinWidthPercent(node, minWidth) end
---@param node System.IntPtr
---@return UnityEngine.Yoga.YogaValue
function UnityEngine.Yoga.Native.YGNodeStyleGetMinWidth(node) end
---@param node System.IntPtr
---@param minHeight number
function UnityEngine.Yoga.Native.YGNodeStyleSetMinHeight(node, minHeight) end
---@param node System.IntPtr
---@param minHeight number
function UnityEngine.Yoga.Native.YGNodeStyleSetMinHeightPercent(node, minHeight) end
---@param node System.IntPtr
---@return UnityEngine.Yoga.YogaValue
function UnityEngine.Yoga.Native.YGNodeStyleGetMinHeight(node) end
---@param node System.IntPtr
---@param maxWidth number
function UnityEngine.Yoga.Native.YGNodeStyleSetMaxWidth(node, maxWidth) end
---@param node System.IntPtr
---@param maxWidth number
function UnityEngine.Yoga.Native.YGNodeStyleSetMaxWidthPercent(node, maxWidth) end
---@param node System.IntPtr
---@return UnityEngine.Yoga.YogaValue
function UnityEngine.Yoga.Native.YGNodeStyleGetMaxWidth(node) end
---@param node System.IntPtr
---@param maxHeight number
function UnityEngine.Yoga.Native.YGNodeStyleSetMaxHeight(node, maxHeight) end
---@param node System.IntPtr
---@param maxHeight number
function UnityEngine.Yoga.Native.YGNodeStyleSetMaxHeightPercent(node, maxHeight) end
---@param node System.IntPtr
---@return UnityEngine.Yoga.YogaValue
function UnityEngine.Yoga.Native.YGNodeStyleGetMaxHeight(node) end
---@param node System.IntPtr
---@param aspectRatio number
function UnityEngine.Yoga.Native.YGNodeStyleSetAspectRatio(node, aspectRatio) end
---@param node System.IntPtr
---@return number
function UnityEngine.Yoga.Native.YGNodeStyleGetAspectRatio(node) end
---@param node System.IntPtr
---@param edge UnityEngine.Yoga.YogaEdge
---@param position number
function UnityEngine.Yoga.Native.YGNodeStyleSetPosition(node, edge, position) end
---@param node System.IntPtr
---@param edge UnityEngine.Yoga.YogaEdge
---@param position number
function UnityEngine.Yoga.Native.YGNodeStyleSetPositionPercent(node, edge, position) end
---@param node System.IntPtr
---@param edge UnityEngine.Yoga.YogaEdge
---@return UnityEngine.Yoga.YogaValue
function UnityEngine.Yoga.Native.YGNodeStyleGetPosition(node, edge) end
---@param node System.IntPtr
---@param edge UnityEngine.Yoga.YogaEdge
---@param margin number
function UnityEngine.Yoga.Native.YGNodeStyleSetMargin(node, edge, margin) end
---@param node System.IntPtr
---@param edge UnityEngine.Yoga.YogaEdge
---@param margin number
function UnityEngine.Yoga.Native.YGNodeStyleSetMarginPercent(node, edge, margin) end
---@param node System.IntPtr
---@param edge UnityEngine.Yoga.YogaEdge
function UnityEngine.Yoga.Native.YGNodeStyleSetMarginAuto(node, edge) end
---@param node System.IntPtr
---@param edge UnityEngine.Yoga.YogaEdge
---@return UnityEngine.Yoga.YogaValue
function UnityEngine.Yoga.Native.YGNodeStyleGetMargin(node, edge) end
---@param node System.IntPtr
---@param edge UnityEngine.Yoga.YogaEdge
---@param padding number
function UnityEngine.Yoga.Native.YGNodeStyleSetPadding(node, edge, padding) end
---@param node System.IntPtr
---@param edge UnityEngine.Yoga.YogaEdge
---@param padding number
function UnityEngine.Yoga.Native.YGNodeStyleSetPaddingPercent(node, edge, padding) end
---@param node System.IntPtr
---@param edge UnityEngine.Yoga.YogaEdge
---@return UnityEngine.Yoga.YogaValue
function UnityEngine.Yoga.Native.YGNodeStyleGetPadding(node, edge) end
---@param node System.IntPtr
---@param edge UnityEngine.Yoga.YogaEdge
---@param border number
function UnityEngine.Yoga.Native.YGNodeStyleSetBorder(node, edge, border) end
---@param node System.IntPtr
---@param edge UnityEngine.Yoga.YogaEdge
---@return number
function UnityEngine.Yoga.Native.YGNodeStyleGetBorder(node, edge) end
---@param node System.IntPtr
---@return number
function UnityEngine.Yoga.Native.YGNodeLayoutGetLeft(node) end
---@param node System.IntPtr
---@return number
function UnityEngine.Yoga.Native.YGNodeLayoutGetTop(node) end
---@param node System.IntPtr
---@return number
function UnityEngine.Yoga.Native.YGNodeLayoutGetRight(node) end
---@param node System.IntPtr
---@return number
function UnityEngine.Yoga.Native.YGNodeLayoutGetBottom(node) end
---@param node System.IntPtr
---@return number
function UnityEngine.Yoga.Native.YGNodeLayoutGetWidth(node) end
---@param node System.IntPtr
---@return number
function UnityEngine.Yoga.Native.YGNodeLayoutGetHeight(node) end
---@param node System.IntPtr
---@param edge UnityEngine.Yoga.YogaEdge
---@return number
function UnityEngine.Yoga.Native.YGNodeLayoutGetMargin(node, edge) end
---@param node System.IntPtr
---@param edge UnityEngine.Yoga.YogaEdge
---@return number
function UnityEngine.Yoga.Native.YGNodeLayoutGetPadding(node, edge) end
---@param node System.IntPtr
---@param edge UnityEngine.Yoga.YogaEdge
---@return number
function UnityEngine.Yoga.Native.YGNodeLayoutGetBorder(node, edge) end
---@param node System.IntPtr
---@return UnityEngine.Yoga.YogaDirection
function UnityEngine.Yoga.Native.YGNodeLayoutGetDirection(node) end

---@class UnityEngine.Yoga.YogaNode : System.Object
---@field IsDirty boolean
---@field HasNewLayout boolean
---@field Parent UnityEngine.Yoga.YogaNode
---@field IsMeasureDefined boolean
---@field IsBaselineDefined boolean
---@field StyleDirection UnityEngine.Yoga.YogaDirection
---@field FlexDirection UnityEngine.Yoga.YogaFlexDirection
---@field JustifyContent UnityEngine.Yoga.YogaJustify
---@field Display UnityEngine.Yoga.YogaDisplay
---@field AlignItems UnityEngine.Yoga.YogaAlign
---@field AlignSelf UnityEngine.Yoga.YogaAlign
---@field AlignContent UnityEngine.Yoga.YogaAlign
---@field PositionType UnityEngine.Yoga.YogaPositionType
---@field Wrap UnityEngine.Yoga.YogaWrap
---@field Flex number
---@field FlexGrow number
---@field FlexShrink number
---@field FlexBasis UnityEngine.Yoga.YogaValue
---@field Width UnityEngine.Yoga.YogaValue
---@field Height UnityEngine.Yoga.YogaValue
---@field MaxWidth UnityEngine.Yoga.YogaValue
---@field MaxHeight UnityEngine.Yoga.YogaValue
---@field MinWidth UnityEngine.Yoga.YogaValue
---@field MinHeight UnityEngine.Yoga.YogaValue
---@field AspectRatio number
---@field LayoutX number
---@field LayoutY number
---@field LayoutRight number
---@field LayoutBottom number
---@field LayoutWidth number
---@field LayoutHeight number
---@field LayoutDirection UnityEngine.Yoga.YogaDirection
---@field Overflow UnityEngine.Yoga.YogaOverflow
---@field Data System.Object
---@field Item UnityEngine.Yoga.YogaNode
---@field Count number
---@field Left UnityEngine.Yoga.YogaValue
---@field Top UnityEngine.Yoga.YogaValue
---@field Right UnityEngine.Yoga.YogaValue
---@field Bottom UnityEngine.Yoga.YogaValue
---@field Start UnityEngine.Yoga.YogaValue
---@field End UnityEngine.Yoga.YogaValue
---@field MarginLeft UnityEngine.Yoga.YogaValue
---@field MarginTop UnityEngine.Yoga.YogaValue
---@field MarginRight UnityEngine.Yoga.YogaValue
---@field MarginBottom UnityEngine.Yoga.YogaValue
---@field MarginStart UnityEngine.Yoga.YogaValue
---@field MarginEnd UnityEngine.Yoga.YogaValue
---@field MarginHorizontal UnityEngine.Yoga.YogaValue
---@field MarginVertical UnityEngine.Yoga.YogaValue
---@field Margin UnityEngine.Yoga.YogaValue
---@field PaddingLeft UnityEngine.Yoga.YogaValue
---@field PaddingTop UnityEngine.Yoga.YogaValue
---@field PaddingRight UnityEngine.Yoga.YogaValue
---@field PaddingBottom UnityEngine.Yoga.YogaValue
---@field PaddingStart UnityEngine.Yoga.YogaValue
---@field PaddingEnd UnityEngine.Yoga.YogaValue
---@field PaddingHorizontal UnityEngine.Yoga.YogaValue
---@field PaddingVertical UnityEngine.Yoga.YogaValue
---@field Padding UnityEngine.Yoga.YogaValue
---@field BorderLeftWidth number
---@field BorderTopWidth number
---@field BorderRightWidth number
---@field BorderBottomWidth number
---@field BorderStartWidth number
---@field BorderEndWidth number
---@field BorderWidth number
---@field LayoutMarginLeft number
---@field LayoutMarginTop number
---@field LayoutMarginRight number
---@field LayoutMarginBottom number
---@field LayoutMarginStart number
---@field LayoutMarginEnd number
---@field LayoutPaddingLeft number
---@field LayoutPaddingTop number
---@field LayoutPaddingRight number
---@field LayoutPaddingBottom number
---@field LayoutBorderLeft number
---@field LayoutBorderTop number
---@field LayoutBorderRight number
---@field LayoutBorderBottom number
---@field LayoutPaddingStart number
---@field LayoutPaddingEnd number
---@field ComputedFlexBasis number
UnityEngine.Yoga.YogaNode = {}
---@alias CS.UnityEngine.Yoga.YogaNode UnityEngine.Yoga.YogaNode
CS.UnityEngine.Yoga.YogaNode = UnityEngine.Yoga.YogaNode

---@overload fun(config: UnityEngine.Yoga.YogaConfig) : UnityEngine.Yoga.YogaNode
---@param srcNode UnityEngine.Yoga.YogaNode
---@return UnityEngine.Yoga.YogaNode
function UnityEngine.Yoga.YogaNode.New(srcNode) end
---@param node UnityEngine.Yoga.YogaNode
---@param width number
---@param widthMode UnityEngine.Yoga.YogaMeasureMode
---@param height number
---@param heightMode UnityEngine.Yoga.YogaMeasureMode
---@return UnityEngine.Yoga.YogaSize
function UnityEngine.Yoga.YogaNode.MeasureInternal(node, width, widthMode, height, heightMode) end
---@param node UnityEngine.Yoga.YogaNode
---@param width number
---@param height number
---@return number
function UnityEngine.Yoga.YogaNode.BaselineInternal(node, width, height) end
---@return number
function UnityEngine.Yoga.YogaNode.GetInstanceCount() end
function UnityEngine.Yoga.YogaNode:Reset() end
function UnityEngine.Yoga.YogaNode:MarkDirty() end
function UnityEngine.Yoga.YogaNode:MarkHasNewLayout() end
---@param srcNode UnityEngine.Yoga.YogaNode
function UnityEngine.Yoga.YogaNode:CopyStyle(srcNode) end
function UnityEngine.Yoga.YogaNode:MarkLayoutSeen() end
---@param f1 number
---@param f2 number
---@return boolean
function UnityEngine.Yoga.YogaNode:ValuesEqual(f1, f2) end
---@param index number
---@param node UnityEngine.Yoga.YogaNode
function UnityEngine.Yoga.YogaNode:Insert(index, node) end
---@param index number
function UnityEngine.Yoga.YogaNode:RemoveAt(index) end
---@param child UnityEngine.Yoga.YogaNode
function UnityEngine.Yoga.YogaNode:AddChild(child) end
---@param child UnityEngine.Yoga.YogaNode
function UnityEngine.Yoga.YogaNode:RemoveChild(child) end
function UnityEngine.Yoga.YogaNode:Clear() end
---@param node UnityEngine.Yoga.YogaNode
---@return number
function UnityEngine.Yoga.YogaNode:IndexOf(node) end
---@param measureFunction UnityEngine.Yoga.MeasureFunction
function UnityEngine.Yoga.YogaNode:SetMeasureFunction(measureFunction) end
---@param baselineFunction UnityEngine.Yoga.BaselineFunction
function UnityEngine.Yoga.YogaNode:SetBaselineFunction(baselineFunction) end
---@param width number
---@param height number
function UnityEngine.Yoga.YogaNode:CalculateLayout(width, height) end
---@param options UnityEngine.Yoga.YogaPrintOptions
---@return string
function UnityEngine.Yoga.YogaNode:Print(options) end
---@return System.Collections.Generic.IEnumerator
function UnityEngine.Yoga.YogaNode:GetEnumerator() end

---@class UnityEngine.Yoga.YogaNodeType
---@field Default UnityEngine.Yoga.YogaNodeType
---@field Text UnityEngine.Yoga.YogaNodeType
UnityEngine.Yoga.YogaNodeType = {}
---@alias CS.UnityEngine.Yoga.YogaNodeType UnityEngine.Yoga.YogaNodeType
CS.UnityEngine.Yoga.YogaNodeType = UnityEngine.Yoga.YogaNodeType


---@class UnityEngine.Yoga.YogaOverflow
---@field Visible UnityEngine.Yoga.YogaOverflow
---@field Hidden UnityEngine.Yoga.YogaOverflow
---@field Scroll UnityEngine.Yoga.YogaOverflow
UnityEngine.Yoga.YogaOverflow = {}
---@alias CS.UnityEngine.Yoga.YogaOverflow UnityEngine.Yoga.YogaOverflow
CS.UnityEngine.Yoga.YogaOverflow = UnityEngine.Yoga.YogaOverflow


---@class UnityEngine.Yoga.YogaPositionType
---@field Relative UnityEngine.Yoga.YogaPositionType
---@field Absolute UnityEngine.Yoga.YogaPositionType
UnityEngine.Yoga.YogaPositionType = {}
---@alias CS.UnityEngine.Yoga.YogaPositionType UnityEngine.Yoga.YogaPositionType
CS.UnityEngine.Yoga.YogaPositionType = UnityEngine.Yoga.YogaPositionType


---@class UnityEngine.Yoga.YogaPrintOptions
---@field Layout UnityEngine.Yoga.YogaPrintOptions
---@field Style UnityEngine.Yoga.YogaPrintOptions
---@field Children UnityEngine.Yoga.YogaPrintOptions
UnityEngine.Yoga.YogaPrintOptions = {}
---@alias CS.UnityEngine.Yoga.YogaPrintOptions UnityEngine.Yoga.YogaPrintOptions
CS.UnityEngine.Yoga.YogaPrintOptions = UnityEngine.Yoga.YogaPrintOptions


---@class UnityEngine.Yoga.YogaSize : System.ValueType
---@field width number
---@field height number
UnityEngine.Yoga.YogaSize = {}
---@alias CS.UnityEngine.Yoga.YogaSize UnityEngine.Yoga.YogaSize
CS.UnityEngine.Yoga.YogaSize = UnityEngine.Yoga.YogaSize


---@class UnityEngine.Yoga.YogaUnit
---@field Undefined UnityEngine.Yoga.YogaUnit
---@field Point UnityEngine.Yoga.YogaUnit
---@field Percent UnityEngine.Yoga.YogaUnit
---@field Auto UnityEngine.Yoga.YogaUnit
UnityEngine.Yoga.YogaUnit = {}
---@alias CS.UnityEngine.Yoga.YogaUnit UnityEngine.Yoga.YogaUnit
CS.UnityEngine.Yoga.YogaUnit = UnityEngine.Yoga.YogaUnit


---@class UnityEngine.Yoga.YogaValue : System.ValueType
---@field Unit UnityEngine.Yoga.YogaUnit
---@field Value number
UnityEngine.Yoga.YogaValue = {}
---@alias CS.UnityEngine.Yoga.YogaValue UnityEngine.Yoga.YogaValue
CS.UnityEngine.Yoga.YogaValue = UnityEngine.Yoga.YogaValue

---@param value number
---@return UnityEngine.Yoga.YogaValue
function UnityEngine.Yoga.YogaValue.Point(value) end
---@return UnityEngine.Yoga.YogaValue
function UnityEngine.Yoga.YogaValue.Undefined() end
---@return UnityEngine.Yoga.YogaValue
function UnityEngine.Yoga.YogaValue.Auto() end
---@param value number
---@return UnityEngine.Yoga.YogaValue
function UnityEngine.Yoga.YogaValue.Percent(value) end
---@overload fun(self: UnityEngine.Yoga.YogaValue, other: UnityEngine.Yoga.YogaValue) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Yoga.YogaValue:Equals(obj) end
---@return number
function UnityEngine.Yoga.YogaValue:GetHashCode() end

---@class UnityEngine.Yoga.YogaValueExtensions : System.Object
UnityEngine.Yoga.YogaValueExtensions = {}
---@alias CS.UnityEngine.Yoga.YogaValueExtensions UnityEngine.Yoga.YogaValueExtensions
CS.UnityEngine.Yoga.YogaValueExtensions = UnityEngine.Yoga.YogaValueExtensions

---@overload fun(value: number) : UnityEngine.Yoga.YogaValue
---@param value number
---@return UnityEngine.Yoga.YogaValue
function UnityEngine.Yoga.YogaValueExtensions.Percent(value) end
---@overload fun(value: number) : UnityEngine.Yoga.YogaValue
---@param value number
---@return UnityEngine.Yoga.YogaValue
function UnityEngine.Yoga.YogaValueExtensions.Pt(value) end

---@class UnityEngine.Yoga.YogaWrap
---@field NoWrap UnityEngine.Yoga.YogaWrap
---@field Wrap UnityEngine.Yoga.YogaWrap
---@field WrapReverse UnityEngine.Yoga.YogaWrap
UnityEngine.Yoga.YogaWrap = {}
---@alias CS.UnityEngine.Yoga.YogaWrap UnityEngine.Yoga.YogaWrap
CS.UnityEngine.Yoga.YogaWrap = UnityEngine.Yoga.YogaWrap


---@class UnityEngine.UIElements.AlignmentUtils : System.Object
UnityEngine.UIElements.AlignmentUtils = {}
---@alias CS.UnityEngine.UIElements.AlignmentUtils UnityEngine.UIElements.AlignmentUtils
CS.UnityEngine.UIElements.AlignmentUtils = UnityEngine.UIElements.AlignmentUtils


---@class UnityEngine.UIElements.AtlasBase : System.Object
UnityEngine.UIElements.AtlasBase = {}
---@alias CS.UnityEngine.UIElements.AtlasBase UnityEngine.UIElements.AtlasBase
CS.UnityEngine.UIElements.AtlasBase = UnityEngine.UIElements.AtlasBase

---@param ctx UnityEngine.UIElements.VisualElement
---@param src UnityEngine.Texture2D
---@param out_atlas UnityEngine.UIElements.TextureId
---@param out_atlasRect UnityEngine.RectInt
---@return boolean,UnityEngine.UIElements.TextureId,UnityEngine.RectInt
function UnityEngine.UIElements.AtlasBase:TryGetAtlas(ctx, src, out_atlas, out_atlasRect) end
---@param ctx UnityEngine.UIElements.VisualElement
---@param src UnityEngine.Texture2D
---@param atlas UnityEngine.UIElements.TextureId
function UnityEngine.UIElements.AtlasBase:ReturnAtlas(ctx, src, atlas) end
function UnityEngine.UIElements.AtlasBase:Reset() end

---@class UnityEngine.UIElements.DynamicAtlasFilters
---@field None UnityEngine.UIElements.DynamicAtlasFilters
---@field Readability UnityEngine.UIElements.DynamicAtlasFilters
---@field Size UnityEngine.UIElements.DynamicAtlasFilters
---@field Format UnityEngine.UIElements.DynamicAtlasFilters
---@field ColorSpace UnityEngine.UIElements.DynamicAtlasFilters
---@field FilterMode UnityEngine.UIElements.DynamicAtlasFilters
UnityEngine.UIElements.DynamicAtlasFilters = {}
---@alias CS.UnityEngine.UIElements.DynamicAtlasFilters UnityEngine.UIElements.DynamicAtlasFilters
CS.UnityEngine.UIElements.DynamicAtlasFilters = UnityEngine.UIElements.DynamicAtlasFilters


---@class UnityEngine.UIElements.DynamicAtlasCustomFilter : System.MulticastDelegate
UnityEngine.UIElements.DynamicAtlasCustomFilter = {}
---@alias CS.UnityEngine.UIElements.DynamicAtlasCustomFilter UnityEngine.UIElements.DynamicAtlasCustomFilter
CS.UnityEngine.UIElements.DynamicAtlasCustomFilter = UnityEngine.UIElements.DynamicAtlasCustomFilter

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.UIElements.DynamicAtlasCustomFilter
function UnityEngine.UIElements.DynamicAtlasCustomFilter.New(object, method) end
---@param texture UnityEngine.Texture2D
---@param ref_filtersToApply UnityEngine.UIElements.DynamicAtlasFilters
---@return boolean,UnityEngine.UIElements.DynamicAtlasFilters
function UnityEngine.UIElements.DynamicAtlasCustomFilter:Invoke(texture, ref_filtersToApply) end
---@param texture UnityEngine.Texture2D
---@param ref_filtersToApply UnityEngine.UIElements.DynamicAtlasFilters
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,UnityEngine.UIElements.DynamicAtlasFilters
function UnityEngine.UIElements.DynamicAtlasCustomFilter:BeginInvoke(texture, ref_filtersToApply, callback, object) end
---@param ref_filtersToApply UnityEngine.UIElements.DynamicAtlasFilters
---@param result System.IAsyncResult
---@return boolean,UnityEngine.UIElements.DynamicAtlasFilters
function UnityEngine.UIElements.DynamicAtlasCustomFilter:EndInvoke(ref_filtersToApply, result) end

---@class UnityEngine.UIElements.DynamicAtlas : UnityEngine.UIElements.AtlasBase
---@field defaultFilters UnityEngine.UIElements.DynamicAtlasFilters
---@field minAtlasSize number
---@field maxAtlasSize number
---@field activeFilters UnityEngine.UIElements.DynamicAtlasFilters
---@field maxSubTextureSize number
---@field customFilter UnityEngine.UIElements.DynamicAtlasCustomFilter
UnityEngine.UIElements.DynamicAtlas = {}
---@alias CS.UnityEngine.UIElements.DynamicAtlas UnityEngine.UIElements.DynamicAtlas
CS.UnityEngine.UIElements.DynamicAtlas = UnityEngine.UIElements.DynamicAtlas

---@return UnityEngine.UIElements.DynamicAtlas
function UnityEngine.UIElements.DynamicAtlas.New() end
function UnityEngine.UIElements.DynamicAtlas:Reset() end
---@param ve UnityEngine.UIElements.VisualElement
---@param src UnityEngine.Texture2D
---@param out_atlas UnityEngine.UIElements.TextureId
---@param out_atlasRect UnityEngine.RectInt
---@return boolean,UnityEngine.UIElements.TextureId,UnityEngine.RectInt
function UnityEngine.UIElements.DynamicAtlas:TryGetAtlas(ve, src, out_atlas, out_atlasRect) end
---@param ve UnityEngine.UIElements.VisualElement
---@param src UnityEngine.Texture2D
---@param atlas UnityEngine.UIElements.TextureId
function UnityEngine.UIElements.DynamicAtlas:ReturnAtlas(ve, src, atlas) end
---@param texture UnityEngine.Texture2D
---@param atlasFilterMode UnityEngine.FilterMode
---@return boolean
function UnityEngine.UIElements.DynamicAtlas:IsTextureValid(texture, atlasFilterMode) end
---@param tex UnityEngine.Texture2D
function UnityEngine.UIElements.DynamicAtlas:SetDirty(tex) end

---@class UnityEngine.UIElements.DynamicAtlas.TextureInfo : UnityEngine.UIElements.UIR.LinkedPoolItem
---@field pool UnityEngine.UIElements.UIR.LinkedPool
---@field page UnityEngine.UIElements.DynamicAtlasPage
---@field counter number
---@field alloc UnityEngine.UIElements.UIR.Allocator2D.Alloc2D
---@field rect UnityEngine.RectInt
UnityEngine.UIElements.DynamicAtlas.TextureInfo = {}
---@alias CS.UnityEngine.UIElements.DynamicAtlas.TextureInfo UnityEngine.UIElements.DynamicAtlas.TextureInfo
CS.UnityEngine.UIElements.DynamicAtlas.TextureInfo = UnityEngine.UIElements.DynamicAtlas.TextureInfo

---@return UnityEngine.UIElements.DynamicAtlas.TextureInfo
function UnityEngine.UIElements.DynamicAtlas.TextureInfo.New() end

---@class UnityEngine.UIElements.BackgroundPosition : System.ValueType
---@field keyword UnityEngine.UIElements.BackgroundPositionKeyword
---@field offset UnityEngine.UIElements.Length
UnityEngine.UIElements.BackgroundPosition = {}
---@alias CS.UnityEngine.UIElements.BackgroundPosition UnityEngine.UIElements.BackgroundPosition
CS.UnityEngine.UIElements.BackgroundPosition = UnityEngine.UIElements.BackgroundPosition

---@overload fun(keyword: UnityEngine.UIElements.BackgroundPositionKeyword) : UnityEngine.UIElements.BackgroundPosition
---@param keyword UnityEngine.UIElements.BackgroundPositionKeyword
---@param offset UnityEngine.UIElements.Length
---@return UnityEngine.UIElements.BackgroundPosition
function UnityEngine.UIElements.BackgroundPosition.New(keyword, offset) end
---@overload fun(self: UnityEngine.UIElements.BackgroundPosition, obj: System.Object) : boolean
---@param other UnityEngine.UIElements.BackgroundPosition
---@return boolean
function UnityEngine.UIElements.BackgroundPosition:Equals(other) end
---@return number
function UnityEngine.UIElements.BackgroundPosition:GetHashCode() end
---@return string
function UnityEngine.UIElements.BackgroundPosition:ToString() end

---@class UnityEngine.UIElements.BackgroundPropertyHelper : System.Object
UnityEngine.UIElements.BackgroundPropertyHelper = {}
---@alias CS.UnityEngine.UIElements.BackgroundPropertyHelper UnityEngine.UIElements.BackgroundPropertyHelper
CS.UnityEngine.UIElements.BackgroundPropertyHelper = UnityEngine.UIElements.BackgroundPropertyHelper

---@param scaleMode UnityEngine.ScaleMode
---@return UnityEngine.UIElements.BackgroundPosition
function UnityEngine.UIElements.BackgroundPropertyHelper.ConvertScaleModeToBackgroundPosition(scaleMode) end
---@param scaleMode UnityEngine.ScaleMode
---@return UnityEngine.UIElements.BackgroundRepeat
function UnityEngine.UIElements.BackgroundPropertyHelper.ConvertScaleModeToBackgroundRepeat(scaleMode) end
---@param scaleMode UnityEngine.ScaleMode
---@return UnityEngine.UIElements.BackgroundSize
function UnityEngine.UIElements.BackgroundPropertyHelper.ConvertScaleModeToBackgroundSize(scaleMode) end
---@param backgroundPositionX UnityEngine.UIElements.BackgroundPosition
---@param backgroundPositionY UnityEngine.UIElements.BackgroundPosition
---@param backgroundRepeat UnityEngine.UIElements.BackgroundRepeat
---@param backgroundSize UnityEngine.UIElements.BackgroundSize
---@param out_valid boolean
---@return UnityEngine.ScaleMode,boolean
function UnityEngine.UIElements.BackgroundPropertyHelper.ResolveUnityBackgroundScaleMode(backgroundPositionX, backgroundPositionY, backgroundRepeat, backgroundSize, out_valid) end

---@class UnityEngine.UIElements.BackgroundRepeat : System.ValueType
---@field x UnityEngine.UIElements.Repeat
---@field y UnityEngine.UIElements.Repeat
UnityEngine.UIElements.BackgroundRepeat = {}
---@alias CS.UnityEngine.UIElements.BackgroundRepeat UnityEngine.UIElements.BackgroundRepeat
CS.UnityEngine.UIElements.BackgroundRepeat = UnityEngine.UIElements.BackgroundRepeat

---@param repeatX UnityEngine.UIElements.Repeat
---@param repeatY UnityEngine.UIElements.Repeat
---@return UnityEngine.UIElements.BackgroundRepeat
function UnityEngine.UIElements.BackgroundRepeat.New(repeatX, repeatY) end
---@overload fun(self: UnityEngine.UIElements.BackgroundRepeat, obj: System.Object) : boolean
---@param other UnityEngine.UIElements.BackgroundRepeat
---@return boolean
function UnityEngine.UIElements.BackgroundRepeat:Equals(other) end
---@return number
function UnityEngine.UIElements.BackgroundRepeat:GetHashCode() end
---@return string
function UnityEngine.UIElements.BackgroundRepeat:ToString() end

---@class UnityEngine.UIElements.BackgroundSize : System.ValueType
---@field sizeType UnityEngine.UIElements.BackgroundSizeType
---@field x UnityEngine.UIElements.Length
---@field y UnityEngine.UIElements.Length
UnityEngine.UIElements.BackgroundSize = {}
---@alias CS.UnityEngine.UIElements.BackgroundSize UnityEngine.UIElements.BackgroundSize
CS.UnityEngine.UIElements.BackgroundSize = UnityEngine.UIElements.BackgroundSize

---@overload fun(sizeX: UnityEngine.UIElements.Length, sizeY: UnityEngine.UIElements.Length) : UnityEngine.UIElements.BackgroundSize
---@param sizeType UnityEngine.UIElements.BackgroundSizeType
---@return UnityEngine.UIElements.BackgroundSize
function UnityEngine.UIElements.BackgroundSize.New(sizeType) end
---@overload fun(self: UnityEngine.UIElements.BackgroundSize, obj: System.Object) : boolean
---@param other UnityEngine.UIElements.BackgroundSize
---@return boolean
function UnityEngine.UIElements.BackgroundSize:Equals(other) end
---@return number
function UnityEngine.UIElements.BackgroundSize:GetHashCode() end
---@return string
function UnityEngine.UIElements.BackgroundSize:ToString() end

---@class UnityEngine.UIElements.BindableElement : UnityEngine.UIElements.VisualElement
---@field binding UnityEngine.UIElements.IBinding
---@field bindingPath string
UnityEngine.UIElements.BindableElement = {}
---@alias CS.UnityEngine.UIElements.BindableElement UnityEngine.UIElements.BindableElement
CS.UnityEngine.UIElements.BindableElement = UnityEngine.UIElements.BindableElement

---@return UnityEngine.UIElements.BindableElement
function UnityEngine.UIElements.BindableElement.New() end

---@class UnityEngine.UIElements.BindableElement.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.BindableElement.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.BindableElement.UxmlFactory UnityEngine.UIElements.BindableElement.UxmlFactory
CS.UnityEngine.UIElements.BindableElement.UxmlFactory = UnityEngine.UIElements.BindableElement.UxmlFactory

---@return UnityEngine.UIElements.BindableElement.UxmlFactory
function UnityEngine.UIElements.BindableElement.UxmlFactory.New() end

---@class UnityEngine.UIElements.BindableElement.UxmlTraits : UnityEngine.UIElements.VisualElement.UxmlTraits
UnityEngine.UIElements.BindableElement.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.BindableElement.UxmlTraits UnityEngine.UIElements.BindableElement.UxmlTraits
CS.UnityEngine.UIElements.BindableElement.UxmlTraits = UnityEngine.UIElements.BindableElement.UxmlTraits

---@return UnityEngine.UIElements.BindableElement.UxmlTraits
function UnityEngine.UIElements.BindableElement.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.BindableElement.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.IBindingRequest
UnityEngine.UIElements.IBindingRequest = {}
---@alias CS.UnityEngine.UIElements.IBindingRequest UnityEngine.UIElements.IBindingRequest
CS.UnityEngine.UIElements.IBindingRequest = UnityEngine.UIElements.IBindingRequest

---@param element UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.IBindingRequest:Bind(element) end
function UnityEngine.UIElements.IBindingRequest:Release() end

---@class UnityEngine.UIElements.VisualTreeBindingsUpdater : UnityEngine.UIElements.BaseVisualTreeHierarchyTrackerUpdater
---@field disableBindingsThrottling boolean
---@field profilerMarker Unity.Profiling.ProfilerMarker
---@field temporaryObjectCache System.Collections.Generic.Dictionary
UnityEngine.UIElements.VisualTreeBindingsUpdater = {}
---@alias CS.UnityEngine.UIElements.VisualTreeBindingsUpdater UnityEngine.UIElements.VisualTreeBindingsUpdater
CS.UnityEngine.UIElements.VisualTreeBindingsUpdater = UnityEngine.UIElements.VisualTreeBindingsUpdater

---@return UnityEngine.UIElements.VisualTreeBindingsUpdater
function UnityEngine.UIElements.VisualTreeBindingsUpdater.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param b UnityEngine.UIElements.IBinding
function UnityEngine.UIElements.VisualTreeBindingsUpdater.SetAdditionalBinding(ve, b) end
---@param ve UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.VisualTreeBindingsUpdater.ClearAdditionalBinding(ve) end
---@param ve UnityEngine.UIElements.VisualElement
---@return UnityEngine.UIElements.IBinding
function UnityEngine.UIElements.VisualTreeBindingsUpdater.GetAdditionalBinding(ve) end
---@param ve UnityEngine.UIElements.VisualElement
---@param req UnityEngine.UIElements.IBindingRequest
function UnityEngine.UIElements.VisualTreeBindingsUpdater.AddBindingRequest(ve, req) end
---@param ve UnityEngine.UIElements.VisualElement
---@param req UnityEngine.UIElements.IBindingRequest
function UnityEngine.UIElements.VisualTreeBindingsUpdater.RemoveBindingRequest(ve, req) end
---@param ve UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.VisualTreeBindingsUpdater.ClearBindingRequests(ve) end
---@param startTime number
---@return boolean
function UnityEngine.UIElements.VisualTreeBindingsUpdater.ShouldThrottle(startTime) end
---@param ve UnityEngine.UIElements.VisualElement
---@param versionChangeType UnityEngine.UIElements.VersionChangeType
function UnityEngine.UIElements.VisualTreeBindingsUpdater:OnVersionChanged(ve, versionChangeType) end
function UnityEngine.UIElements.VisualTreeBindingsUpdater:PerformTrackingOperations() end
function UnityEngine.UIElements.VisualTreeBindingsUpdater:Update() end

---@class UnityEngine.UIElements.VisualTreeBindingsUpdater.RequestObjectListPool : UnityEngine.UIElements.ObjectListPool
UnityEngine.UIElements.VisualTreeBindingsUpdater.RequestObjectListPool = {}
---@alias CS.UnityEngine.UIElements.VisualTreeBindingsUpdater.RequestObjectListPool UnityEngine.UIElements.VisualTreeBindingsUpdater.RequestObjectListPool
CS.UnityEngine.UIElements.VisualTreeBindingsUpdater.RequestObjectListPool = UnityEngine.UIElements.VisualTreeBindingsUpdater.RequestObjectListPool

---@return UnityEngine.UIElements.VisualTreeBindingsUpdater.RequestObjectListPool
function UnityEngine.UIElements.VisualTreeBindingsUpdater.RequestObjectListPool.New() end

---@class UnityEngine.UIElements.ClampedDragger : UnityEngine.UIElements.Clickable
---@field dragDirection UnityEngine.UIElements.ClampedDragger.DragDirection[T]
---@field startMousePosition UnityEngine.Vector2
---@field delta UnityEngine.Vector2
UnityEngine.UIElements.ClampedDragger = {}
---@alias CS.UnityEngine.UIElements.ClampedDragger UnityEngine.UIElements.ClampedDragger
CS.UnityEngine.UIElements.ClampedDragger = UnityEngine.UIElements.ClampedDragger

---@param slider UnityEngine.UIElements.BaseSlider[T]
---@param clickHandler System.Action
---@param dragHandler System.Action
---@return UnityEngine.UIElements.ClampedDragger
function UnityEngine.UIElements.ClampedDragger.New(slider, clickHandler, dragHandler) end

---@class UnityEngine.UIElements.ClampedDragger.DragDirection
---@field None UnityEngine.UIElements.ClampedDragger.DragDirection
---@field LowToHigh UnityEngine.UIElements.ClampedDragger.DragDirection
---@field HighToLow UnityEngine.UIElements.ClampedDragger.DragDirection
---@field Free UnityEngine.UIElements.ClampedDragger.DragDirection
UnityEngine.UIElements.ClampedDragger.DragDirection = {}
---@alias CS.UnityEngine.UIElements.ClampedDragger.DragDirection UnityEngine.UIElements.ClampedDragger.DragDirection
CS.UnityEngine.UIElements.ClampedDragger.DragDirection = UnityEngine.UIElements.ClampedDragger.DragDirection


---@class UnityEngine.UIElements.Clickable : UnityEngine.UIElements.PointerManipulator
---@field lastMousePosition UnityEngine.Vector2
UnityEngine.UIElements.Clickable = {}
---@alias CS.UnityEngine.UIElements.Clickable UnityEngine.UIElements.Clickable
CS.UnityEngine.UIElements.Clickable = UnityEngine.UIElements.Clickable

---@overload fun(handler: System.Action, delay: number, interval: number) : UnityEngine.UIElements.Clickable
---@overload fun(handler: System.Action) : UnityEngine.UIElements.Clickable
---@param handler System.Action
---@return UnityEngine.UIElements.Clickable
function UnityEngine.UIElements.Clickable.New(handler) end

---@class UnityEngine.UIElements.ClickDetector : System.Object
UnityEngine.UIElements.ClickDetector = {}
---@alias CS.UnityEngine.UIElements.ClickDetector UnityEngine.UIElements.ClickDetector
CS.UnityEngine.UIElements.ClickDetector = UnityEngine.UIElements.ClickDetector

---@return UnityEngine.UIElements.ClickDetector
function UnityEngine.UIElements.ClickDetector.New() end
---@param evt UnityEngine.UIElements.EventBase
function UnityEngine.UIElements.ClickDetector:ProcessEvent(evt) end

---@class UnityEngine.UIElements.ClickDetector.ButtonClickStatus : System.Object
---@field m_Target UnityEngine.UIElements.VisualElement
---@field m_PointerDownPosition UnityEngine.Vector3
---@field m_LastPointerDownTime number
---@field m_ClickCount number
UnityEngine.UIElements.ClickDetector.ButtonClickStatus = {}
---@alias CS.UnityEngine.UIElements.ClickDetector.ButtonClickStatus UnityEngine.UIElements.ClickDetector.ButtonClickStatus
CS.UnityEngine.UIElements.ClickDetector.ButtonClickStatus = UnityEngine.UIElements.ClickDetector.ButtonClickStatus

---@return UnityEngine.UIElements.ClickDetector.ButtonClickStatus
function UnityEngine.UIElements.ClickDetector.ButtonClickStatus.New() end
function UnityEngine.UIElements.ClickDetector.ButtonClickStatus:Reset() end

---@class UnityEngine.UIElements.BaseListViewController : UnityEngine.UIElements.CollectionViewController
UnityEngine.UIElements.BaseListViewController = {}
---@alias CS.UnityEngine.UIElements.BaseListViewController UnityEngine.UIElements.BaseListViewController
CS.UnityEngine.UIElements.BaseListViewController = UnityEngine.UIElements.BaseListViewController

---@param index number
---@return boolean
function UnityEngine.UIElements.BaseListViewController:NeedsDragHandle(index) end
---@param itemCount number
function UnityEngine.UIElements.BaseListViewController:AddItems(itemCount) end
---@param index number
---@param newIndex number
function UnityEngine.UIElements.BaseListViewController:Move(index, newIndex) end
---@param index number
function UnityEngine.UIElements.BaseListViewController:RemoveItem(index) end
---@param indices System.Collections.Generic.List
function UnityEngine.UIElements.BaseListViewController:RemoveItems(indices) end
function UnityEngine.UIElements.BaseListViewController:ClearItems() end

---@class UnityEngine.UIElements.BaseTreeViewController : UnityEngine.UIElements.CollectionViewController
---@field itemsSource System.Collections.IList
UnityEngine.UIElements.BaseTreeViewController = {}
---@alias CS.UnityEngine.UIElements.BaseTreeViewController UnityEngine.UIElements.BaseTreeViewController
CS.UnityEngine.UIElements.BaseTreeViewController = UnityEngine.UIElements.BaseTreeViewController

function UnityEngine.UIElements.BaseTreeViewController:RebuildTree() end
---@return System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.BaseTreeViewController:GetRootItemIds() end
---@param rootIds System.Collections.Generic.IEnumerable
---@return System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.BaseTreeViewController:GetAllItemIds(rootIds) end
---@param id number
---@return number
function UnityEngine.UIElements.BaseTreeViewController:GetParentId(id) end
---@param id number
---@return System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.BaseTreeViewController:GetChildrenIds(id) end
---@param id number
---@param newParentId number
---@param childIndex number
---@param rebuildTree boolean
function UnityEngine.UIElements.BaseTreeViewController:Move(id, newParentId, childIndex, rebuildTree) end
---@param id number
---@param rebuildTree boolean
---@return boolean
function UnityEngine.UIElements.BaseTreeViewController:TryRemoveItem(id, rebuildTree) end
---@return number
function UnityEngine.UIElements.BaseTreeViewController:GetTreeItemsCount() end
---@param id number
---@return number
function UnityEngine.UIElements.BaseTreeViewController:GetIndexForId(id) end
---@param index number
---@return number
function UnityEngine.UIElements.BaseTreeViewController:GetIdForIndex(index) end
---@param id number
---@return boolean
function UnityEngine.UIElements.BaseTreeViewController:HasChildren(id) end
---@param index number
---@return boolean
function UnityEngine.UIElements.BaseTreeViewController:HasChildrenByIndex(index) end
---@param index number
---@return System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.BaseTreeViewController:GetChildrenIdsByIndex(index) end
---@param id number
---@return number
function UnityEngine.UIElements.BaseTreeViewController:GetChildIndexForId(id) end
---@param id number
---@return boolean
function UnityEngine.UIElements.BaseTreeViewController:IsExpanded(id) end
---@param index number
---@return boolean
function UnityEngine.UIElements.BaseTreeViewController:IsExpandedByIndex(index) end
---@param index number
---@param expandAllChildren boolean
---@param refresh boolean
function UnityEngine.UIElements.BaseTreeViewController:ExpandItemByIndex(index, expandAllChildren, refresh) end
---@param id number
---@param expandAllChildren boolean
---@param refresh boolean
function UnityEngine.UIElements.BaseTreeViewController:ExpandItem(id, expandAllChildren, refresh) end
---@param index number
---@param collapseAllChildren boolean
function UnityEngine.UIElements.BaseTreeViewController:CollapseItemByIndex(index, collapseAllChildren) end
---@param id number
---@param collapseAllChildren boolean
function UnityEngine.UIElements.BaseTreeViewController:CollapseItem(id, collapseAllChildren) end
function UnityEngine.UIElements.BaseTreeViewController:ExpandAll() end
function UnityEngine.UIElements.BaseTreeViewController:CollapseAll() end

---@class UnityEngine.UIElements.CollectionViewController : System.Object
---@field itemsSource System.Collections.IList
UnityEngine.UIElements.CollectionViewController = {}
---@alias CS.UnityEngine.UIElements.CollectionViewController UnityEngine.UIElements.CollectionViewController
CS.UnityEngine.UIElements.CollectionViewController = UnityEngine.UIElements.CollectionViewController

---@param collectionView UnityEngine.UIElements.BaseVerticalCollectionView
function UnityEngine.UIElements.CollectionViewController:SetView(collectionView) end
function UnityEngine.UIElements.CollectionViewController:Dispose() end
---@return number
function UnityEngine.UIElements.CollectionViewController:GetItemsCount() end
---@param id number
---@return number
function UnityEngine.UIElements.CollectionViewController:GetIndexForId(id) end
---@param index number
---@return number
function UnityEngine.UIElements.CollectionViewController:GetIdForIndex(index) end
---@param index number
---@return System.Object
function UnityEngine.UIElements.CollectionViewController:GetItemForIndex(index) end

---@class UnityEngine.UIElements.DefaultMultiColumnTreeViewController : UnityEngine.UIElements.MultiColumnTreeViewController
---@field itemsSource System.Collections.IList
UnityEngine.UIElements.DefaultMultiColumnTreeViewController = {}
---@alias CS.UnityEngine.UIElements.DefaultMultiColumnTreeViewController UnityEngine.UIElements.DefaultMultiColumnTreeViewController
CS.UnityEngine.UIElements.DefaultMultiColumnTreeViewController = UnityEngine.UIElements.DefaultMultiColumnTreeViewController

---@param columns UnityEngine.UIElements.Columns
---@param sortDescriptions UnityEngine.UIElements.SortColumnDescriptions
---@param sortedColumns System.Collections.Generic.List
---@return UnityEngine.UIElements.DefaultMultiColumnTreeViewController
function UnityEngine.UIElements.DefaultMultiColumnTreeViewController.New(columns, sortDescriptions, sortedColumns) end
---@param items System.Collections.Generic.IList[UnityEngine.UIElements.TreeViewItemData[T]]
function UnityEngine.UIElements.DefaultMultiColumnTreeViewController:SetRootItems(items) end
---@param ref_item UnityEngine.UIElements.TreeViewItemData[T]
---@param parentId number
---@param childIndex number
---@param rebuildTree boolean
---@return ,UnityEngine.UIElements.TreeViewItemData[T]
function UnityEngine.UIElements.DefaultMultiColumnTreeViewController:AddItem(ref_item, parentId, childIndex, rebuildTree) end
---@param id number
---@return UnityEngine.UIElements.TreeViewItemData[T]
function UnityEngine.UIElements.DefaultMultiColumnTreeViewController:GetTreeViewItemDataForId(id) end
---@param index number
---@return UnityEngine.UIElements.TreeViewItemData[T]
function UnityEngine.UIElements.DefaultMultiColumnTreeViewController:GetTreeViewItemDataForIndex(index) end
---@param id number
---@param rebuildTree boolean
---@return boolean
function UnityEngine.UIElements.DefaultMultiColumnTreeViewController:TryRemoveItem(id, rebuildTree) end
---@param id number
---@return T
function UnityEngine.UIElements.DefaultMultiColumnTreeViewController:GetDataForId(id) end
---@param index number
---@return T
function UnityEngine.UIElements.DefaultMultiColumnTreeViewController:GetDataForIndex(index) end
---@param index number
---@return System.Object
function UnityEngine.UIElements.DefaultMultiColumnTreeViewController:GetItemForIndex(index) end
---@param id number
---@return number
function UnityEngine.UIElements.DefaultMultiColumnTreeViewController:GetParentId(id) end
---@param id number
---@return boolean
function UnityEngine.UIElements.DefaultMultiColumnTreeViewController:HasChildren(id) end
---@param id number
---@return System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.DefaultMultiColumnTreeViewController:GetChildrenIds(id) end
---@param id number
---@param newParentId number
---@param childIndex number
---@param rebuildTree boolean
function UnityEngine.UIElements.DefaultMultiColumnTreeViewController:Move(id, newParentId, childIndex, rebuildTree) end
---@param rootIds System.Collections.Generic.IEnumerable
---@return System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.DefaultMultiColumnTreeViewController:GetAllItemIds(rootIds) end

---@class UnityEngine.UIElements.DefaultTreeViewController : UnityEngine.UIElements.TreeViewController
---@field itemsSource System.Collections.IList
UnityEngine.UIElements.DefaultTreeViewController = {}
---@alias CS.UnityEngine.UIElements.DefaultTreeViewController UnityEngine.UIElements.DefaultTreeViewController
CS.UnityEngine.UIElements.DefaultTreeViewController = UnityEngine.UIElements.DefaultTreeViewController

---@return UnityEngine.UIElements.DefaultTreeViewController
function UnityEngine.UIElements.DefaultTreeViewController.New() end
---@param items System.Collections.Generic.IList[UnityEngine.UIElements.TreeViewItemData[T]]
function UnityEngine.UIElements.DefaultTreeViewController:SetRootItems(items) end
---@param ref_item UnityEngine.UIElements.TreeViewItemData[T]
---@param parentId number
---@param childIndex number
---@param rebuildTree boolean
---@return ,UnityEngine.UIElements.TreeViewItemData[T]
function UnityEngine.UIElements.DefaultTreeViewController:AddItem(ref_item, parentId, childIndex, rebuildTree) end
---@param id number
---@param rebuildTree boolean
---@return boolean
function UnityEngine.UIElements.DefaultTreeViewController:TryRemoveItem(id, rebuildTree) end
---@param id number
---@return System.Object
function UnityEngine.UIElements.DefaultTreeViewController:GetItemDataForId(id) end
---@param id number
---@return UnityEngine.UIElements.TreeViewItemData[T]
function UnityEngine.UIElements.DefaultTreeViewController:GetTreeViewItemDataForId(id) end
---@param index number
---@return UnityEngine.UIElements.TreeViewItemData[T]
function UnityEngine.UIElements.DefaultTreeViewController:GetTreeViewItemDataForIndex(index) end
---@param id number
---@return T
function UnityEngine.UIElements.DefaultTreeViewController:GetDataForId(id) end
---@param index number
---@return T
function UnityEngine.UIElements.DefaultTreeViewController:GetDataForIndex(index) end
---@param index number
---@return System.Object
function UnityEngine.UIElements.DefaultTreeViewController:GetItemForIndex(index) end
---@param id number
---@return number
function UnityEngine.UIElements.DefaultTreeViewController:GetParentId(id) end
---@param id number
---@return boolean
function UnityEngine.UIElements.DefaultTreeViewController:HasChildren(id) end
---@param id number
---@return System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.DefaultTreeViewController:GetChildrenIds(id) end
---@param id number
---@param newParentId number
---@param childIndex number
---@param rebuildTree boolean
function UnityEngine.UIElements.DefaultTreeViewController:Move(id, newParentId, childIndex, rebuildTree) end
---@param rootIds System.Collections.Generic.IEnumerable
---@return System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.DefaultTreeViewController:GetAllItemIds(rootIds) end

---@class UnityEngine.UIElements.IDefaultTreeViewController
UnityEngine.UIElements.IDefaultTreeViewController = {}
---@alias CS.UnityEngine.UIElements.IDefaultTreeViewController UnityEngine.UIElements.IDefaultTreeViewController
CS.UnityEngine.UIElements.IDefaultTreeViewController = UnityEngine.UIElements.IDefaultTreeViewController

---@param id number
---@return System.Object
function UnityEngine.UIElements.IDefaultTreeViewController:GetItemDataForId(id) end

---@class UnityEngine.UIElements.IDefaultTreeViewController
UnityEngine.UIElements.IDefaultTreeViewController = {}
---@alias CS.UnityEngine.UIElements.IDefaultTreeViewController UnityEngine.UIElements.IDefaultTreeViewController
CS.UnityEngine.UIElements.IDefaultTreeViewController = UnityEngine.UIElements.IDefaultTreeViewController

---@param items System.Collections.Generic.IList[UnityEngine.UIElements.TreeViewItemData[T]]
function UnityEngine.UIElements.IDefaultTreeViewController:SetRootItems(items) end
---@param ref_item UnityEngine.UIElements.TreeViewItemData[T]
---@param parentId number
---@param childIndex number
---@param rebuildTree boolean
---@return ,UnityEngine.UIElements.TreeViewItemData[T]
function UnityEngine.UIElements.IDefaultTreeViewController:AddItem(ref_item, parentId, childIndex, rebuildTree) end
---@param id number
---@return UnityEngine.UIElements.TreeViewItemData[T]
function UnityEngine.UIElements.IDefaultTreeViewController:GetTreeViewItemDataForId(id) end
---@param index number
---@return UnityEngine.UIElements.TreeViewItemData[T]
function UnityEngine.UIElements.IDefaultTreeViewController:GetTreeViewItemDataForIndex(index) end
---@param id number
---@return T
function UnityEngine.UIElements.IDefaultTreeViewController:GetDataForId(id) end
---@param index number
---@return T
function UnityEngine.UIElements.IDefaultTreeViewController:GetDataForIndex(index) end

---@class UnityEngine.UIElements.ListViewController : UnityEngine.UIElements.BaseListViewController
UnityEngine.UIElements.ListViewController = {}
---@alias CS.UnityEngine.UIElements.ListViewController UnityEngine.UIElements.ListViewController
CS.UnityEngine.UIElements.ListViewController = UnityEngine.UIElements.ListViewController

---@return UnityEngine.UIElements.ListViewController
function UnityEngine.UIElements.ListViewController.New() end

---@class UnityEngine.UIElements.MultiColumnListViewController : UnityEngine.UIElements.BaseListViewController
---@field columnController UnityEngine.UIElements.MultiColumnController
UnityEngine.UIElements.MultiColumnListViewController = {}
---@alias CS.UnityEngine.UIElements.MultiColumnListViewController UnityEngine.UIElements.MultiColumnListViewController
CS.UnityEngine.UIElements.MultiColumnListViewController = UnityEngine.UIElements.MultiColumnListViewController

---@param columns UnityEngine.UIElements.Columns
---@param sortDescriptions UnityEngine.UIElements.SortColumnDescriptions
---@param sortedColumns System.Collections.Generic.List
---@return UnityEngine.UIElements.MultiColumnListViewController
function UnityEngine.UIElements.MultiColumnListViewController.New(columns, sortDescriptions, sortedColumns) end
function UnityEngine.UIElements.MultiColumnListViewController:Dispose() end

---@class UnityEngine.UIElements.MultiColumnTreeViewController : UnityEngine.UIElements.BaseTreeViewController
---@field columnController UnityEngine.UIElements.MultiColumnController
UnityEngine.UIElements.MultiColumnTreeViewController = {}
---@alias CS.UnityEngine.UIElements.MultiColumnTreeViewController UnityEngine.UIElements.MultiColumnTreeViewController
CS.UnityEngine.UIElements.MultiColumnTreeViewController = UnityEngine.UIElements.MultiColumnTreeViewController

function UnityEngine.UIElements.MultiColumnTreeViewController:Dispose() end

---@class UnityEngine.UIElements.TreeDataController : System.Object
UnityEngine.UIElements.TreeDataController = {}
---@alias CS.UnityEngine.UIElements.TreeDataController UnityEngine.UIElements.TreeDataController
CS.UnityEngine.UIElements.TreeDataController = UnityEngine.UIElements.TreeDataController

---@return UnityEngine.UIElements.TreeDataController
function UnityEngine.UIElements.TreeDataController.New() end
---@param rootItems System.Collections.Generic.IList[UnityEngine.UIElements.TreeViewItemData[T]]
function UnityEngine.UIElements.TreeDataController:SetRootItems(rootItems) end
---@param ref_item UnityEngine.UIElements.TreeViewItemData[T]
---@param parentId number
---@param childIndex number
---@return ,UnityEngine.UIElements.TreeViewItemData[T]
function UnityEngine.UIElements.TreeDataController:AddItem(ref_item, parentId, childIndex) end
---@param id number
---@return boolean
function UnityEngine.UIElements.TreeDataController:TryRemoveItem(id) end
---@param id number
---@return UnityEngine.UIElements.TreeViewItemData[T]
function UnityEngine.UIElements.TreeDataController:GetTreeItemDataForId(id) end
---@param id number
---@return T
function UnityEngine.UIElements.TreeDataController:GetDataForId(id) end
---@param id number
---@return number
function UnityEngine.UIElements.TreeDataController:GetParentId(id) end
---@param id number
---@return boolean
function UnityEngine.UIElements.TreeDataController:HasChildren(id) end
---@param id number
---@return System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.TreeDataController:GetChildrenIds(id) end
---@param id number
---@param newParentId number
---@param childIndex number
function UnityEngine.UIElements.TreeDataController:Move(id, newParentId, childIndex) end
---@param childId number
---@param id number
---@return boolean
function UnityEngine.UIElements.TreeDataController:IsChildOf(childId, id) end
---@param rootIds System.Collections.Generic.IEnumerable
---@return System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.TreeDataController:GetAllItemIds(rootIds) end

---@class UnityEngine.UIElements.TreeViewController : UnityEngine.UIElements.BaseTreeViewController
UnityEngine.UIElements.TreeViewController = {}
---@alias CS.UnityEngine.UIElements.TreeViewController UnityEngine.UIElements.TreeViewController
CS.UnityEngine.UIElements.TreeViewController = UnityEngine.UIElements.TreeViewController


---@class UnityEngine.UIElements.CollectionVirtualizationController : System.Object
---@field firstVisibleIndex number
---@field visibleItemCount number
---@field activeItems System.Collections.Generic.IEnumerable
UnityEngine.UIElements.CollectionVirtualizationController = {}
---@alias CS.UnityEngine.UIElements.CollectionVirtualizationController UnityEngine.UIElements.CollectionVirtualizationController
CS.UnityEngine.UIElements.CollectionVirtualizationController = UnityEngine.UIElements.CollectionVirtualizationController

---@param rebuild boolean
function UnityEngine.UIElements.CollectionVirtualizationController:Refresh(rebuild) end
---@param id number
function UnityEngine.UIElements.CollectionVirtualizationController:ScrollToItem(id) end
---@param size UnityEngine.Vector2
function UnityEngine.UIElements.CollectionVirtualizationController:Resize(size) end
---@param offset UnityEngine.Vector2
function UnityEngine.UIElements.CollectionVirtualizationController:OnScroll(offset) end
---@param position UnityEngine.Vector2
---@return number
function UnityEngine.UIElements.CollectionVirtualizationController:GetIndexFromPosition(position) end
---@param index number
---@return number
function UnityEngine.UIElements.CollectionVirtualizationController:GetExpectedItemHeight(index) end
---@return number
function UnityEngine.UIElements.CollectionVirtualizationController:GetExpectedContentHeight() end
---@param leafTarget UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.CollectionVirtualizationController:OnFocus(leafTarget) end
---@param willFocus UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.CollectionVirtualizationController:OnBlur(willFocus) end
function UnityEngine.UIElements.CollectionVirtualizationController:UpdateBackground() end

---@class UnityEngine.UIElements.DynamicHeightVirtualizationController : UnityEngine.UIElements.VerticalVirtualizationController[T]
UnityEngine.UIElements.DynamicHeightVirtualizationController = {}
---@alias CS.UnityEngine.UIElements.DynamicHeightVirtualizationController UnityEngine.UIElements.DynamicHeightVirtualizationController
CS.UnityEngine.UIElements.DynamicHeightVirtualizationController = UnityEngine.UIElements.DynamicHeightVirtualizationController

---@param collectionView UnityEngine.UIElements.BaseVerticalCollectionView
---@return UnityEngine.UIElements.DynamicHeightVirtualizationController
function UnityEngine.UIElements.DynamicHeightVirtualizationController.New(collectionView) end
---@param rebuild boolean
function UnityEngine.UIElements.DynamicHeightVirtualizationController:Refresh(rebuild) end
---@param index number
function UnityEngine.UIElements.DynamicHeightVirtualizationController:ScrollToItem(index) end
---@param size UnityEngine.Vector2
function UnityEngine.UIElements.DynamicHeightVirtualizationController:Resize(size) end
---@param scrollOffset UnityEngine.Vector2
function UnityEngine.UIElements.DynamicHeightVirtualizationController:OnScroll(scrollOffset) end
---@param position UnityEngine.Vector2
---@return number
function UnityEngine.UIElements.DynamicHeightVirtualizationController:GetIndexFromPosition(position) end
---@param index number
---@return number
function UnityEngine.UIElements.DynamicHeightVirtualizationController:GetExpectedItemHeight(index) end
---@return number
function UnityEngine.UIElements.DynamicHeightVirtualizationController:GetExpectedContentHeight() end

---@class UnityEngine.UIElements.DynamicHeightVirtualizationController.ContentHeightCacheInfo : System.ValueType
---@field sum number
---@field count number
UnityEngine.UIElements.DynamicHeightVirtualizationController.ContentHeightCacheInfo = {}
---@alias CS.UnityEngine.UIElements.DynamicHeightVirtualizationController.ContentHeightCacheInfo UnityEngine.UIElements.DynamicHeightVirtualizationController.ContentHeightCacheInfo
CS.UnityEngine.UIElements.DynamicHeightVirtualizationController.ContentHeightCacheInfo = UnityEngine.UIElements.DynamicHeightVirtualizationController.ContentHeightCacheInfo

---@param sum number
---@param count number
---@return UnityEngine.UIElements.DynamicHeightVirtualizationController.ContentHeightCacheInfo
function UnityEngine.UIElements.DynamicHeightVirtualizationController.ContentHeightCacheInfo.New(sum, count) end

---@class UnityEngine.UIElements.DynamicHeightVirtualizationController.VirtualizationChange
---@field None UnityEngine.UIElements.DynamicHeightVirtualizationController.VirtualizationChange
---@field Resize UnityEngine.UIElements.DynamicHeightVirtualizationController.VirtualizationChange
---@field Scroll UnityEngine.UIElements.DynamicHeightVirtualizationController.VirtualizationChange
---@field ForcedScroll UnityEngine.UIElements.DynamicHeightVirtualizationController.VirtualizationChange
UnityEngine.UIElements.DynamicHeightVirtualizationController.VirtualizationChange = {}
---@alias CS.UnityEngine.UIElements.DynamicHeightVirtualizationController.VirtualizationChange UnityEngine.UIElements.DynamicHeightVirtualizationController.VirtualizationChange
CS.UnityEngine.UIElements.DynamicHeightVirtualizationController.VirtualizationChange = UnityEngine.UIElements.DynamicHeightVirtualizationController.VirtualizationChange


---@class UnityEngine.UIElements.DynamicHeightVirtualizationController.ScrollDirection
---@field Idle UnityEngine.UIElements.DynamicHeightVirtualizationController.ScrollDirection
---@field Up UnityEngine.UIElements.DynamicHeightVirtualizationController.ScrollDirection
---@field Down UnityEngine.UIElements.DynamicHeightVirtualizationController.ScrollDirection
UnityEngine.UIElements.DynamicHeightVirtualizationController.ScrollDirection = {}
---@alias CS.UnityEngine.UIElements.DynamicHeightVirtualizationController.ScrollDirection UnityEngine.UIElements.DynamicHeightVirtualizationController.ScrollDirection
CS.UnityEngine.UIElements.DynamicHeightVirtualizationController.ScrollDirection = UnityEngine.UIElements.DynamicHeightVirtualizationController.ScrollDirection


---@class UnityEngine.UIElements.FixedHeightVirtualizationController : UnityEngine.UIElements.VerticalVirtualizationController[T]
UnityEngine.UIElements.FixedHeightVirtualizationController = {}
---@alias CS.UnityEngine.UIElements.FixedHeightVirtualizationController UnityEngine.UIElements.FixedHeightVirtualizationController
CS.UnityEngine.UIElements.FixedHeightVirtualizationController = UnityEngine.UIElements.FixedHeightVirtualizationController

---@param collectionView UnityEngine.UIElements.BaseVerticalCollectionView
---@return UnityEngine.UIElements.FixedHeightVirtualizationController
function UnityEngine.UIElements.FixedHeightVirtualizationController.New(collectionView) end
---@param position UnityEngine.Vector2
---@return number
function UnityEngine.UIElements.FixedHeightVirtualizationController:GetIndexFromPosition(position) end
---@param index number
---@return number
function UnityEngine.UIElements.FixedHeightVirtualizationController:GetExpectedItemHeight(index) end
---@return number
function UnityEngine.UIElements.FixedHeightVirtualizationController:GetExpectedContentHeight() end
---@param index number
function UnityEngine.UIElements.FixedHeightVirtualizationController:ScrollToItem(index) end
---@param size UnityEngine.Vector2
function UnityEngine.UIElements.FixedHeightVirtualizationController:Resize(size) end
---@param scrollOffset UnityEngine.Vector2
function UnityEngine.UIElements.FixedHeightVirtualizationController:OnScroll(scrollOffset) end

---@class UnityEngine.UIElements.ReusableCollectionItem : System.Object
---@field UndefinedIndex number
---@field rootElement UnityEngine.UIElements.VisualElement
---@field bindableElement UnityEngine.UIElements.VisualElement
---@field animator UnityEngine.UIElements.Experimental.ValueAnimation
---@field index number
---@field id number
UnityEngine.UIElements.ReusableCollectionItem = {}
---@alias CS.UnityEngine.UIElements.ReusableCollectionItem UnityEngine.UIElements.ReusableCollectionItem
CS.UnityEngine.UIElements.ReusableCollectionItem = UnityEngine.UIElements.ReusableCollectionItem

---@return UnityEngine.UIElements.ReusableCollectionItem
function UnityEngine.UIElements.ReusableCollectionItem.New() end
---@param item UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.ReusableCollectionItem:Init(item) end
function UnityEngine.UIElements.ReusableCollectionItem:PreAttachElement() end
function UnityEngine.UIElements.ReusableCollectionItem:DetachElement() end
function UnityEngine.UIElements.ReusableCollectionItem:DestroyElement() end
---@param selected boolean
function UnityEngine.UIElements.ReusableCollectionItem:SetSelected(selected) end
---@param dragGhost boolean
function UnityEngine.UIElements.ReusableCollectionItem:SetDragGhost(dragGhost) end

---@class UnityEngine.UIElements.ReusableListViewItem : UnityEngine.UIElements.ReusableCollectionItem
---@field rootElement UnityEngine.UIElements.VisualElement
UnityEngine.UIElements.ReusableListViewItem = {}
---@alias CS.UnityEngine.UIElements.ReusableListViewItem UnityEngine.UIElements.ReusableListViewItem
CS.UnityEngine.UIElements.ReusableListViewItem = UnityEngine.UIElements.ReusableListViewItem

---@return UnityEngine.UIElements.ReusableListViewItem
function UnityEngine.UIElements.ReusableListViewItem.New() end
---@param item UnityEngine.UIElements.VisualElement
---@param usesAnimatedDragger boolean
function UnityEngine.UIElements.ReusableListViewItem:Init(item, usesAnimatedDragger) end
---@param needsDragHandle boolean
function UnityEngine.UIElements.ReusableListViewItem:UpdateDragHandle(needsDragHandle) end
function UnityEngine.UIElements.ReusableListViewItem:PreAttachElement() end
function UnityEngine.UIElements.ReusableListViewItem:DetachElement() end
---@param dragGhost boolean
function UnityEngine.UIElements.ReusableListViewItem:SetDragGhost(dragGhost) end

---@class UnityEngine.UIElements.ReusableMultiColumnListViewItem : UnityEngine.UIElements.ReusableListViewItem
---@field rootElement UnityEngine.UIElements.VisualElement
UnityEngine.UIElements.ReusableMultiColumnListViewItem = {}
---@alias CS.UnityEngine.UIElements.ReusableMultiColumnListViewItem UnityEngine.UIElements.ReusableMultiColumnListViewItem
CS.UnityEngine.UIElements.ReusableMultiColumnListViewItem = UnityEngine.UIElements.ReusableMultiColumnListViewItem

---@return UnityEngine.UIElements.ReusableMultiColumnListViewItem
function UnityEngine.UIElements.ReusableMultiColumnListViewItem.New() end
---@overload fun(self: UnityEngine.UIElements.ReusableMultiColumnListViewItem, item: UnityEngine.UIElements.VisualElement)
---@param container UnityEngine.UIElements.VisualElement
---@param columns UnityEngine.UIElements.Columns
---@param usesAnimatedDrag boolean
function UnityEngine.UIElements.ReusableMultiColumnListViewItem:Init(container, columns, usesAnimatedDrag) end

---@class UnityEngine.UIElements.ReusableMultiColumnTreeViewItem : UnityEngine.UIElements.ReusableTreeViewItem
---@field rootElement UnityEngine.UIElements.VisualElement
UnityEngine.UIElements.ReusableMultiColumnTreeViewItem = {}
---@alias CS.UnityEngine.UIElements.ReusableMultiColumnTreeViewItem UnityEngine.UIElements.ReusableMultiColumnTreeViewItem
CS.UnityEngine.UIElements.ReusableMultiColumnTreeViewItem = UnityEngine.UIElements.ReusableMultiColumnTreeViewItem

---@return UnityEngine.UIElements.ReusableMultiColumnTreeViewItem
function UnityEngine.UIElements.ReusableMultiColumnTreeViewItem.New() end
---@overload fun(self: UnityEngine.UIElements.ReusableMultiColumnTreeViewItem, item: UnityEngine.UIElements.VisualElement)
---@param container UnityEngine.UIElements.VisualElement
---@param columns UnityEngine.UIElements.Columns
function UnityEngine.UIElements.ReusableMultiColumnTreeViewItem:Init(container, columns) end

---@class UnityEngine.UIElements.ReusableTreeViewItem : UnityEngine.UIElements.ReusableCollectionItem
---@field rootElement UnityEngine.UIElements.VisualElement
UnityEngine.UIElements.ReusableTreeViewItem = {}
---@alias CS.UnityEngine.UIElements.ReusableTreeViewItem UnityEngine.UIElements.ReusableTreeViewItem
CS.UnityEngine.UIElements.ReusableTreeViewItem = UnityEngine.UIElements.ReusableTreeViewItem

---@return UnityEngine.UIElements.ReusableTreeViewItem
function UnityEngine.UIElements.ReusableTreeViewItem.New() end
---@param item UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.ReusableTreeViewItem:Init(item) end
function UnityEngine.UIElements.ReusableTreeViewItem:PreAttachElement() end
function UnityEngine.UIElements.ReusableTreeViewItem:DetachElement() end
---@param depth number
function UnityEngine.UIElements.ReusableTreeViewItem:Indent(depth) end
---@param expanded boolean
function UnityEngine.UIElements.ReusableTreeViewItem:SetExpandedWithoutNotify(expanded) end
---@param visible boolean
function UnityEngine.UIElements.ReusableTreeViewItem:SetToggleVisibility(visible) end

---@class UnityEngine.UIElements.VerticalVirtualizationController : UnityEngine.UIElements.CollectionVirtualizationController
---@field activeItems System.Collections.Generic.IEnumerable
---@field visibleItemCount number
---@field firstVisibleIndex number
UnityEngine.UIElements.VerticalVirtualizationController = {}
---@alias CS.UnityEngine.UIElements.VerticalVirtualizationController UnityEngine.UIElements.VerticalVirtualizationController
CS.UnityEngine.UIElements.VerticalVirtualizationController = UnityEngine.UIElements.VerticalVirtualizationController

---@param rebuild boolean
function UnityEngine.UIElements.VerticalVirtualizationController:Refresh(rebuild) end
---@param leafTarget UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.VerticalVirtualizationController:OnFocus(leafTarget) end
---@param willFocus UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.VerticalVirtualizationController:OnBlur(willFocus) end
function UnityEngine.UIElements.VerticalVirtualizationController:UpdateBackground() end

---@class UnityEngine.UIElements.ContextualMenuManager : System.Object
UnityEngine.UIElements.ContextualMenuManager = {}
---@alias CS.UnityEngine.UIElements.ContextualMenuManager UnityEngine.UIElements.ContextualMenuManager
CS.UnityEngine.UIElements.ContextualMenuManager = UnityEngine.UIElements.ContextualMenuManager

---@param evt UnityEngine.UIElements.EventBase
---@param eventHandler UnityEngine.UIElements.IEventHandler
function UnityEngine.UIElements.ContextualMenuManager:DisplayMenuIfEventMatches(evt, eventHandler) end
---@param triggerEvent UnityEngine.UIElements.EventBase
---@param target UnityEngine.UIElements.IEventHandler
function UnityEngine.UIElements.ContextualMenuManager:DisplayMenu(triggerEvent, target) end

---@class UnityEngine.UIElements.ContextualMenuManipulator : UnityEngine.UIElements.MouseManipulator
UnityEngine.UIElements.ContextualMenuManipulator = {}
---@alias CS.UnityEngine.UIElements.ContextualMenuManipulator UnityEngine.UIElements.ContextualMenuManipulator
CS.UnityEngine.UIElements.ContextualMenuManipulator = UnityEngine.UIElements.ContextualMenuManipulator

---@param menuBuilder System.Action
---@return UnityEngine.UIElements.ContextualMenuManipulator
function UnityEngine.UIElements.ContextualMenuManipulator.New(menuBuilder) end

---@class UnityEngine.UIElements.BaseBoolField : UnityEngine.UIElements.BaseField
---@field text string
---@field value UnityEngine.UIElements.BaseBoolField -- infered from UnityEngine.UIElements.BaseField`1[System.Boolean]
UnityEngine.UIElements.BaseBoolField = {}
---@alias CS.UnityEngine.UIElements.BaseBoolField UnityEngine.UIElements.BaseBoolField
CS.UnityEngine.UIElements.BaseBoolField = UnityEngine.UIElements.BaseBoolField

---@param label string
---@return UnityEngine.UIElements.BaseBoolField
function UnityEngine.UIElements.BaseBoolField.New(label) end
---@param newValue boolean
function UnityEngine.UIElements.BaseBoolField:SetValueWithoutNotify(newValue) end

---@class UnityEngine.UIElements.RegisterSerializedPropertyBindCallback : System.MulticastDelegate
UnityEngine.UIElements.RegisterSerializedPropertyBindCallback = {}
---@alias CS.UnityEngine.UIElements.RegisterSerializedPropertyBindCallback UnityEngine.UIElements.RegisterSerializedPropertyBindCallback
CS.UnityEngine.UIElements.RegisterSerializedPropertyBindCallback = UnityEngine.UIElements.RegisterSerializedPropertyBindCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.UIElements.RegisterSerializedPropertyBindCallback
function UnityEngine.UIElements.RegisterSerializedPropertyBindCallback.New(object, method) end
---@param compositeField UnityEngine.UIElements.BaseCompositeField[TValueType,TField,TFieldValue]
---@param field TField
function UnityEngine.UIElements.RegisterSerializedPropertyBindCallback:Invoke(compositeField, field) end
---@param compositeField UnityEngine.UIElements.BaseCompositeField[TValueType,TField,TFieldValue]
---@param field TField
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.UIElements.RegisterSerializedPropertyBindCallback:BeginInvoke(compositeField, field, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.UIElements.RegisterSerializedPropertyBindCallback:EndInvoke(result) end

---@class UnityEngine.UIElements.BaseCompositeField : UnityEngine.UIElements.BaseField[TValueType]
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field spacerUssClassName string
---@field multilineVariantUssClassName string
---@field fieldGroupUssClassName string
---@field fieldUssClassName string
---@field firstFieldVariantUssClassName string
---@field twoLinesVariantUssClassName string
UnityEngine.UIElements.BaseCompositeField = {}
---@alias CS.UnityEngine.UIElements.BaseCompositeField UnityEngine.UIElements.BaseCompositeField
CS.UnityEngine.UIElements.BaseCompositeField = UnityEngine.UIElements.BaseCompositeField

---@param newValue TValueType
function UnityEngine.UIElements.BaseCompositeField:SetValueWithoutNotify(newValue) end

---@class UnityEngine.UIElements.BaseCompositeField.FieldDescription : System.ValueType
UnityEngine.UIElements.BaseCompositeField.FieldDescription = {}
---@alias CS.UnityEngine.UIElements.BaseCompositeField.FieldDescription UnityEngine.UIElements.BaseCompositeField.FieldDescription
CS.UnityEngine.UIElements.BaseCompositeField.FieldDescription = UnityEngine.UIElements.BaseCompositeField.FieldDescription

---@param name string
---@param ussName string
---@param read System.Func[TValueType,TFieldValue]
---@param write UnityEngine.UIElements.BaseCompositeField.FieldDescription.WriteDelegate[TValueType,TField,TFieldValue]
---@return UnityEngine.UIElements.BaseCompositeField.FieldDescription
function UnityEngine.UIElements.BaseCompositeField.FieldDescription.New(name, ussName, read, write) end

---@class UnityEngine.UIElements.BaseCompositeField.FieldDescription.WriteDelegate : System.MulticastDelegate
UnityEngine.UIElements.BaseCompositeField.FieldDescription.WriteDelegate = {}
---@alias CS.UnityEngine.UIElements.BaseCompositeField.FieldDescription.WriteDelegate UnityEngine.UIElements.BaseCompositeField.FieldDescription.WriteDelegate
CS.UnityEngine.UIElements.BaseCompositeField.FieldDescription.WriteDelegate = UnityEngine.UIElements.BaseCompositeField.FieldDescription.WriteDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.UIElements.BaseCompositeField.FieldDescription.WriteDelegate
function UnityEngine.UIElements.BaseCompositeField.FieldDescription.WriteDelegate.New(object, method) end
---@param ref_val TValueType
---@param fieldValue TFieldValue
---@return ,TValueType
function UnityEngine.UIElements.BaseCompositeField.FieldDescription.WriteDelegate:Invoke(ref_val, fieldValue) end
---@param ref_val TValueType
---@param fieldValue TFieldValue
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,TValueType
function UnityEngine.UIElements.BaseCompositeField.FieldDescription.WriteDelegate:BeginInvoke(ref_val, fieldValue, callback, object) end
---@param ref_val TValueType
---@param result System.IAsyncResult
---@return ,TValueType
function UnityEngine.UIElements.BaseCompositeField.FieldDescription.WriteDelegate:EndInvoke(ref_val, result) end

---@class UnityEngine.UIElements.ListViewReorderMode
---@field Simple UnityEngine.UIElements.ListViewReorderMode
---@field Animated UnityEngine.UIElements.ListViewReorderMode
UnityEngine.UIElements.ListViewReorderMode = {}
---@alias CS.UnityEngine.UIElements.ListViewReorderMode UnityEngine.UIElements.ListViewReorderMode
CS.UnityEngine.UIElements.ListViewReorderMode = UnityEngine.UIElements.ListViewReorderMode


---@class UnityEngine.UIElements.BaseListView : UnityEngine.UIElements.BaseVerticalCollectionView
---@field ussClassName string
---@field itemUssClassName string
---@field emptyLabelUssClassName string
---@field overMaxMultiEditLimitClassName string
---@field reorderableUssClassName string
---@field reorderableItemUssClassName string
---@field reorderableItemContainerUssClassName string
---@field reorderableItemHandleUssClassName string
---@field reorderableItemHandleBarUssClassName string
---@field footerUssClassName string
---@field foldoutHeaderUssClassName string
---@field arraySizeFieldUssClassName string
---@field arraySizeFieldWithHeaderUssClassName string
---@field arraySizeFieldWithFooterUssClassName string
---@field listViewWithHeaderUssClassName string
---@field listViewWithFooterUssClassName string
---@field scrollViewWithFooterUssClassName string
---@field footerAddButtonName string
---@field footerRemoveButtonName string
---@field showBoundCollectionSize boolean
---@field showFoldoutHeader boolean
---@field headerTitle string
---@field showAddRemoveFooter boolean
---@field viewController UnityEngine.UIElements.BaseListViewController
---@field reorderMode UnityEngine.UIElements.ListViewReorderMode
UnityEngine.UIElements.BaseListView = {}
---@alias CS.UnityEngine.UIElements.BaseListView UnityEngine.UIElements.BaseListView
CS.UnityEngine.UIElements.BaseListView = UnityEngine.UIElements.BaseListView

---@overload fun() : UnityEngine.UIElements.BaseListView
---@param itemsSource System.Collections.IList
---@param itemHeight number
---@return UnityEngine.UIElements.BaseListView
function UnityEngine.UIElements.BaseListView.New(itemsSource, itemHeight) end
---@param controller UnityEngine.UIElements.CollectionViewController
function UnityEngine.UIElements.BaseListView:SetViewController(controller) end

---@class UnityEngine.UIElements.BaseListView.UxmlTraits : UnityEngine.UIElements.BaseVerticalCollectionView.UxmlTraits
---@field uxmlChildElementsDescription System.Collections.Generic.IEnumerable
UnityEngine.UIElements.BaseListView.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.BaseListView.UxmlTraits UnityEngine.UIElements.BaseListView.UxmlTraits
CS.UnityEngine.UIElements.BaseListView.UxmlTraits = UnityEngine.UIElements.BaseListView.UxmlTraits

---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.BaseListView.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.BasePopupField : UnityEngine.UIElements.BaseField[TValueType]
---@field ussClassName string
---@field textUssClassName string
---@field arrowUssClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field choices System.Collections.Generic.List[TValueChoice]
---@field text string
UnityEngine.UIElements.BasePopupField = {}
---@alias CS.UnityEngine.UIElements.BasePopupField UnityEngine.UIElements.BasePopupField
CS.UnityEngine.UIElements.BasePopupField = UnityEngine.UIElements.BasePopupField

---@param newValue TValueType
function UnityEngine.UIElements.BasePopupField:SetValueWithoutNotify(newValue) end

---@class UnityEngine.UIElements.BasePopupField.PopupTextElement : UnityEngine.UIElements.TextElement
UnityEngine.UIElements.BasePopupField.PopupTextElement = {}
---@alias CS.UnityEngine.UIElements.BasePopupField.PopupTextElement UnityEngine.UIElements.BasePopupField.PopupTextElement
CS.UnityEngine.UIElements.BasePopupField.PopupTextElement = UnityEngine.UIElements.BasePopupField.PopupTextElement

---@return UnityEngine.UIElements.BasePopupField.PopupTextElement
function UnityEngine.UIElements.BasePopupField.PopupTextElement.New() end

---@class UnityEngine.UIElements.SliderDirection
---@field Horizontal UnityEngine.UIElements.SliderDirection
---@field Vertical UnityEngine.UIElements.SliderDirection
UnityEngine.UIElements.SliderDirection = {}
---@alias CS.UnityEngine.UIElements.SliderDirection UnityEngine.UIElements.SliderDirection
CS.UnityEngine.UIElements.SliderDirection = UnityEngine.UIElements.SliderDirection


---@class UnityEngine.UIElements.BaseSlider : UnityEngine.UIElements.BaseField[TValueType]
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field horizontalVariantUssClassName string
---@field verticalVariantUssClassName string
---@field dragContainerUssClassName string
---@field trackerUssClassName string
---@field draggerUssClassName string
---@field draggerBorderUssClassName string
---@field textFieldClassName string
---@field lowValue TValueType
---@field highValue TValueType
---@field range TValueType
---@field pageSize number
---@field showInputField boolean
---@field value TValueType
---@field direction UnityEngine.UIElements.SliderDirection
---@field inverted boolean
UnityEngine.UIElements.BaseSlider = {}
---@alias CS.UnityEngine.UIElements.BaseSlider UnityEngine.UIElements.BaseSlider
CS.UnityEngine.UIElements.BaseSlider = UnityEngine.UIElements.BaseSlider

---@param delta UnityEngine.Vector3
---@param speed UnityEngine.UIElements.DeltaSpeed
---@param startValue TValueType
function UnityEngine.UIElements.BaseSlider:ApplyInputDeviceDelta(delta, speed, startValue) end
---@param newValue TValueType
function UnityEngine.UIElements.BaseSlider:SetValueWithoutNotify(newValue) end
---@param factor number
function UnityEngine.UIElements.BaseSlider:AdjustDragElement(factor) end

---@class UnityEngine.UIElements.BaseSlider.UxmlTraits : UnityEngine.UIElements.BaseField.UxmlTraits[TValueType]
UnityEngine.UIElements.BaseSlider.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.BaseSlider.UxmlTraits UnityEngine.UIElements.BaseSlider.UxmlTraits
CS.UnityEngine.UIElements.BaseSlider.UxmlTraits = UnityEngine.UIElements.BaseSlider.UxmlTraits

---@return UnityEngine.UIElements.BaseSlider.UxmlTraits
function UnityEngine.UIElements.BaseSlider.UxmlTraits.New() end

---@class UnityEngine.UIElements.BaseSlider.SliderKey
---@field None UnityEngine.UIElements.BaseSlider.SliderKey
---@field Lowest UnityEngine.UIElements.BaseSlider.SliderKey
---@field LowerPage UnityEngine.UIElements.BaseSlider.SliderKey
---@field Lower UnityEngine.UIElements.BaseSlider.SliderKey
---@field Higher UnityEngine.UIElements.BaseSlider.SliderKey
---@field HigherPage UnityEngine.UIElements.BaseSlider.SliderKey
---@field Highest UnityEngine.UIElements.BaseSlider.SliderKey
UnityEngine.UIElements.BaseSlider.SliderKey = {}
---@alias CS.UnityEngine.UIElements.BaseSlider.SliderKey UnityEngine.UIElements.BaseSlider.SliderKey
CS.UnityEngine.UIElements.BaseSlider.SliderKey = UnityEngine.UIElements.BaseSlider.SliderKey


---@class UnityEngine.UIElements.BaseTreeView : UnityEngine.UIElements.BaseVerticalCollectionView
---@field ussClassName string
---@field itemUssClassName string
---@field itemToggleUssClassName string
---@field itemIndentsContainerUssClassName string
---@field itemIndentUssClassName string
---@field itemContentContainerUssClassName string
---@field itemsSource System.Collections.IList
---@field viewController UnityEngine.UIElements.BaseTreeViewController
---@field autoExpand boolean
UnityEngine.UIElements.BaseTreeView = {}
---@alias CS.UnityEngine.UIElements.BaseTreeView UnityEngine.UIElements.BaseTreeView
CS.UnityEngine.UIElements.BaseTreeView = UnityEngine.UIElements.BaseTreeView

---@overload fun() : UnityEngine.UIElements.BaseTreeView
---@param itemHeight number
---@return UnityEngine.UIElements.BaseTreeView
function UnityEngine.UIElements.BaseTreeView.New(itemHeight) end
---@return System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.BaseTreeView:GetRootIds() end
---@return number
function UnityEngine.UIElements.BaseTreeView:GetTreeCount() end
---@param controller UnityEngine.UIElements.CollectionViewController
function UnityEngine.UIElements.BaseTreeView:SetViewController(controller) end
---@param index number
---@return number
function UnityEngine.UIElements.BaseTreeView:GetIdForIndex(index) end
---@param index number
---@return number
function UnityEngine.UIElements.BaseTreeView:GetParentIdForIndex(index) end
---@param index number
---@return System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.BaseTreeView:GetChildrenIdsForIndex(index) end
---@param id number
---@return boolean
function UnityEngine.UIElements.BaseTreeView:TryRemoveItem(id) end
---@overload fun(self: UnityEngine.UIElements.BaseTreeView, id: number)
---@param ids System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.BaseTreeView:SetSelectionById(ids) end
---@param ids System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.BaseTreeView:SetSelectionByIdWithoutNotify(ids) end
---@param id number
function UnityEngine.UIElements.BaseTreeView:AddToSelectionById(id) end
---@param id number
function UnityEngine.UIElements.BaseTreeView:RemoveFromSelectionById(id) end
---@param id number
---@return boolean
function UnityEngine.UIElements.BaseTreeView:IsExpanded(id) end
---@param id number
---@param collapseAllChildren boolean
function UnityEngine.UIElements.BaseTreeView:CollapseItem(id, collapseAllChildren) end
---@param id number
---@param expandAllChildren boolean
function UnityEngine.UIElements.BaseTreeView:ExpandItem(id, expandAllChildren) end
function UnityEngine.UIElements.BaseTreeView:ExpandRootItems() end
function UnityEngine.UIElements.BaseTreeView:ExpandAll() end
function UnityEngine.UIElements.BaseTreeView:CollapseAll() end

---@class UnityEngine.UIElements.BaseTreeView.UxmlTraits : UnityEngine.UIElements.BaseVerticalCollectionView.UxmlTraits
---@field uxmlChildElementsDescription System.Collections.Generic.IEnumerable
UnityEngine.UIElements.BaseTreeView.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.BaseTreeView.UxmlTraits UnityEngine.UIElements.BaseTreeView.UxmlTraits
CS.UnityEngine.UIElements.BaseTreeView.UxmlTraits = UnityEngine.UIElements.BaseTreeView.UxmlTraits

---@return UnityEngine.UIElements.BaseTreeView.UxmlTraits
function UnityEngine.UIElements.BaseTreeView.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.BaseTreeView.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.AlternatingRowBackground
---@field None UnityEngine.UIElements.AlternatingRowBackground
---@field ContentOnly UnityEngine.UIElements.AlternatingRowBackground
---@field All UnityEngine.UIElements.AlternatingRowBackground
UnityEngine.UIElements.AlternatingRowBackground = {}
---@alias CS.UnityEngine.UIElements.AlternatingRowBackground UnityEngine.UIElements.AlternatingRowBackground
CS.UnityEngine.UIElements.AlternatingRowBackground = UnityEngine.UIElements.AlternatingRowBackground


---@class UnityEngine.UIElements.CollectionVirtualizationMethod
---@field FixedHeight UnityEngine.UIElements.CollectionVirtualizationMethod
---@field DynamicHeight UnityEngine.UIElements.CollectionVirtualizationMethod
UnityEngine.UIElements.CollectionVirtualizationMethod = {}
---@alias CS.UnityEngine.UIElements.CollectionVirtualizationMethod UnityEngine.UIElements.CollectionVirtualizationMethod
CS.UnityEngine.UIElements.CollectionVirtualizationMethod = UnityEngine.UIElements.CollectionVirtualizationMethod


---@class UnityEngine.UIElements.SerializedVirtualizationData : System.Object
---@field scrollOffset UnityEngine.Vector2
---@field firstVisibleIndex number
---@field contentPadding number
---@field contentHeight number
---@field anchoredItemIndex number
---@field anchorOffset number
UnityEngine.UIElements.SerializedVirtualizationData = {}
---@alias CS.UnityEngine.UIElements.SerializedVirtualizationData UnityEngine.UIElements.SerializedVirtualizationData
CS.UnityEngine.UIElements.SerializedVirtualizationData = UnityEngine.UIElements.SerializedVirtualizationData

---@return UnityEngine.UIElements.SerializedVirtualizationData
function UnityEngine.UIElements.SerializedVirtualizationData.New() end

---@class UnityEngine.UIElements.BaseVerticalCollectionView : UnityEngine.UIElements.BindableElement
---@field ussClassName string
---@field borderUssClassName string
---@field itemUssClassName string
---@field dragHoverBarUssClassName string
---@field dragHoverMarkerUssClassName string
---@field itemDragHoverUssClassName string
---@field itemSelectedVariantUssClassName string
---@field itemAlternativeBackgroundUssClassName string
---@field listScrollViewUssClassName string
---@field itemsSource System.Collections.IList
---@field contentContainer UnityEngine.UIElements.VisualElement
---@field selectionType UnityEngine.UIElements.SelectionType
---@field selectedItem System.Object
---@field selectedItems System.Collections.Generic.IEnumerable
---@field selectedIndex number
---@field selectedIndices System.Collections.Generic.IEnumerable
---@field viewController UnityEngine.UIElements.CollectionViewController
---@field showBorder boolean
---@field reorderable boolean
---@field horizontalScrollingEnabled boolean
---@field showAlternatingRowBackgrounds UnityEngine.UIElements.AlternatingRowBackground
---@field virtualizationMethod UnityEngine.UIElements.CollectionVirtualizationMethod
---@field fixedItemHeight number
UnityEngine.UIElements.BaseVerticalCollectionView = {}
---@alias CS.UnityEngine.UIElements.BaseVerticalCollectionView UnityEngine.UIElements.BaseVerticalCollectionView
CS.UnityEngine.UIElements.BaseVerticalCollectionView = UnityEngine.UIElements.BaseVerticalCollectionView

---@overload fun() : UnityEngine.UIElements.BaseVerticalCollectionView
---@overload fun(itemsSource: System.Collections.IList, itemHeight: number) : UnityEngine.UIElements.BaseVerticalCollectionView
---@param itemsSource System.Collections.IList
---@param itemHeight number
---@param makeItem System.Func
---@param bindItem System.Action
---@return UnityEngine.UIElements.BaseVerticalCollectionView
function UnityEngine.UIElements.BaseVerticalCollectionView.New(itemsSource, itemHeight, makeItem, bindItem) end
---@param controller UnityEngine.UIElements.CollectionViewController
function UnityEngine.UIElements.BaseVerticalCollectionView:SetViewController(controller) end
---@param id number
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.BaseVerticalCollectionView:GetRootElementForId(id) end
---@param index number
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.BaseVerticalCollectionView:GetRootElementForIndex(index) end
---@param index number
function UnityEngine.UIElements.BaseVerticalCollectionView:RefreshItem(index) end
function UnityEngine.UIElements.BaseVerticalCollectionView:RefreshItems() end
function UnityEngine.UIElements.BaseVerticalCollectionView:Rebuild() end
---@param visualElement UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.BaseVerticalCollectionView:ScrollTo(visualElement) end
---@param index number
function UnityEngine.UIElements.BaseVerticalCollectionView:ScrollToItem(index) end
---@param id number
function UnityEngine.UIElements.BaseVerticalCollectionView:ScrollToItemById(id) end
---@param index number
function UnityEngine.UIElements.BaseVerticalCollectionView:AddToSelection(index) end
---@param index number
function UnityEngine.UIElements.BaseVerticalCollectionView:RemoveFromSelection(index) end
---@overload fun(self: UnityEngine.UIElements.BaseVerticalCollectionView, index: number)
---@param indices System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.BaseVerticalCollectionView:SetSelection(indices) end
---@param indices System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.BaseVerticalCollectionView:SetSelectionWithoutNotify(indices) end
function UnityEngine.UIElements.BaseVerticalCollectionView:ClearSelection() end
---@param id number
---@return UnityEngine.UIElements.ReusableCollectionItem
function UnityEngine.UIElements.BaseVerticalCollectionView:GetRecycledItemFromId(id) end
---@param index number
---@return UnityEngine.UIElements.ReusableCollectionItem
function UnityEngine.UIElements.BaseVerticalCollectionView:GetRecycledItemFromIndex(index) end

---@class UnityEngine.UIElements.BaseVerticalCollectionView.UxmlTraits : UnityEngine.UIElements.BindableElement.UxmlTraits
---@field uxmlChildElementsDescription System.Collections.Generic.IEnumerable
UnityEngine.UIElements.BaseVerticalCollectionView.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.BaseVerticalCollectionView.UxmlTraits UnityEngine.UIElements.BaseVerticalCollectionView.UxmlTraits
CS.UnityEngine.UIElements.BaseVerticalCollectionView.UxmlTraits = UnityEngine.UIElements.BaseVerticalCollectionView.UxmlTraits

---@return UnityEngine.UIElements.BaseVerticalCollectionView.UxmlTraits
function UnityEngine.UIElements.BaseVerticalCollectionView.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.BaseVerticalCollectionView.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.BaseVerticalCollectionView.Selection : System.Object
---@field indices System.Collections.Generic.List
---@field items System.Collections.Generic.Dictionary
---@field selectedIds System.Collections.Generic.List
---@field indexCount number
---@field idCount number
---@field minIndex number
---@field maxIndex number
---@field capacity number
UnityEngine.UIElements.BaseVerticalCollectionView.Selection = {}
---@alias CS.UnityEngine.UIElements.BaseVerticalCollectionView.Selection UnityEngine.UIElements.BaseVerticalCollectionView.Selection
CS.UnityEngine.UIElements.BaseVerticalCollectionView.Selection = UnityEngine.UIElements.BaseVerticalCollectionView.Selection

---@return UnityEngine.UIElements.BaseVerticalCollectionView.Selection
function UnityEngine.UIElements.BaseVerticalCollectionView.Selection.New() end
---@return number
function UnityEngine.UIElements.BaseVerticalCollectionView.Selection:FirstIndex() end
---@return System.Object
function UnityEngine.UIElements.BaseVerticalCollectionView.Selection:FirstObject() end
---@param index number
---@return boolean
function UnityEngine.UIElements.BaseVerticalCollectionView.Selection:ContainsIndex(index) end
---@param id number
---@return boolean
function UnityEngine.UIElements.BaseVerticalCollectionView.Selection:ContainsId(id) end
---@param id number
function UnityEngine.UIElements.BaseVerticalCollectionView.Selection:AddId(id) end
---@param index number
---@param obj System.Object
function UnityEngine.UIElements.BaseVerticalCollectionView.Selection:AddIndex(index, obj) end
---@param index number
---@return boolean
function UnityEngine.UIElements.BaseVerticalCollectionView.Selection:TryRemove(index) end
---@param id number
function UnityEngine.UIElements.BaseVerticalCollectionView.Selection:RemoveId(id) end
function UnityEngine.UIElements.BaseVerticalCollectionView.Selection:ClearItems() end
function UnityEngine.UIElements.BaseVerticalCollectionView.Selection:ClearIds() end
function UnityEngine.UIElements.BaseVerticalCollectionView.Selection:ClearIndices() end
function UnityEngine.UIElements.BaseVerticalCollectionView.Selection:Clear() end

---@class UnityEngine.UIElements.IBindable
---@field binding UnityEngine.UIElements.IBinding
---@field bindingPath string
UnityEngine.UIElements.IBindable = {}
---@alias CS.UnityEngine.UIElements.IBindable UnityEngine.UIElements.IBindable
CS.UnityEngine.UIElements.IBindable = UnityEngine.UIElements.IBindable

---@return boolean
function UnityEngine.UIElements.IBindable:IsBound() end

---@class UnityEngine.UIElements.IBinding
UnityEngine.UIElements.IBinding = {}
---@alias CS.UnityEngine.UIElements.IBinding UnityEngine.UIElements.IBinding
CS.UnityEngine.UIElements.IBinding = UnityEngine.UIElements.IBinding

function UnityEngine.UIElements.IBinding:PreUpdate() end
function UnityEngine.UIElements.IBinding:Update() end
function UnityEngine.UIElements.IBinding:Release() end

---@class UnityEngine.UIElements.IBindingExtensions : System.Object
UnityEngine.UIElements.IBindingExtensions = {}
---@alias CS.UnityEngine.UIElements.IBindingExtensions UnityEngine.UIElements.IBindingExtensions
CS.UnityEngine.UIElements.IBindingExtensions = UnityEngine.UIElements.IBindingExtensions

---@param control UnityEngine.UIElements.IBindable
---@return boolean
function UnityEngine.UIElements.IBindingExtensions.IsBound(control) end

---@class UnityEngine.UIElements.BoundsField : UnityEngine.UIElements.BaseField
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field centerFieldUssClassName string
---@field extentsFieldUssClassName string
---@field value UnityEngine.UIElements.BoundsField -- infered from UnityEngine.UIElements.BaseField`1[UnityEngine.Bounds]
UnityEngine.UIElements.BoundsField = {}
---@alias CS.UnityEngine.UIElements.BoundsField UnityEngine.UIElements.BoundsField
CS.UnityEngine.UIElements.BoundsField = UnityEngine.UIElements.BoundsField

---@overload fun() : UnityEngine.UIElements.BoundsField
---@param label string
---@return UnityEngine.UIElements.BoundsField
function UnityEngine.UIElements.BoundsField.New(label) end
---@param newValue UnityEngine.Bounds
function UnityEngine.UIElements.BoundsField:SetValueWithoutNotify(newValue) end

---@class UnityEngine.UIElements.BoundsField.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.BoundsField.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.BoundsField.UxmlFactory UnityEngine.UIElements.BoundsField.UxmlFactory
CS.UnityEngine.UIElements.BoundsField.UxmlFactory = UnityEngine.UIElements.BoundsField.UxmlFactory

---@return UnityEngine.UIElements.BoundsField.UxmlFactory
function UnityEngine.UIElements.BoundsField.UxmlFactory.New() end

---@class UnityEngine.UIElements.BoundsField.UxmlTraits : UnityEngine.UIElements.BaseField.UxmlTraits
UnityEngine.UIElements.BoundsField.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.BoundsField.UxmlTraits UnityEngine.UIElements.BoundsField.UxmlTraits
CS.UnityEngine.UIElements.BoundsField.UxmlTraits = UnityEngine.UIElements.BoundsField.UxmlTraits

---@return UnityEngine.UIElements.BoundsField.UxmlTraits
function UnityEngine.UIElements.BoundsField.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.BoundsField.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.BoundsIntField : UnityEngine.UIElements.BaseField
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field positionUssClassName string
---@field sizeUssClassName string
---@field value UnityEngine.UIElements.BoundsIntField -- infered from UnityEngine.UIElements.BaseField`1[UnityEngine.BoundsInt]
UnityEngine.UIElements.BoundsIntField = {}
---@alias CS.UnityEngine.UIElements.BoundsIntField UnityEngine.UIElements.BoundsIntField
CS.UnityEngine.UIElements.BoundsIntField = UnityEngine.UIElements.BoundsIntField

---@overload fun() : UnityEngine.UIElements.BoundsIntField
---@param label string
---@return UnityEngine.UIElements.BoundsIntField
function UnityEngine.UIElements.BoundsIntField.New(label) end
---@param newValue UnityEngine.BoundsInt
function UnityEngine.UIElements.BoundsIntField:SetValueWithoutNotify(newValue) end

---@class UnityEngine.UIElements.BoundsIntField.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.BoundsIntField.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.BoundsIntField.UxmlFactory UnityEngine.UIElements.BoundsIntField.UxmlFactory
CS.UnityEngine.UIElements.BoundsIntField.UxmlFactory = UnityEngine.UIElements.BoundsIntField.UxmlFactory

---@return UnityEngine.UIElements.BoundsIntField.UxmlFactory
function UnityEngine.UIElements.BoundsIntField.UxmlFactory.New() end

---@class UnityEngine.UIElements.BoundsIntField.UxmlTraits : UnityEngine.UIElements.BaseField.UxmlTraits
UnityEngine.UIElements.BoundsIntField.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.BoundsIntField.UxmlTraits UnityEngine.UIElements.BoundsIntField.UxmlTraits
CS.UnityEngine.UIElements.BoundsIntField.UxmlTraits = UnityEngine.UIElements.BoundsIntField.UxmlTraits

---@return UnityEngine.UIElements.BoundsIntField.UxmlTraits
function UnityEngine.UIElements.BoundsIntField.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.BoundsIntField.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.Box : UnityEngine.UIElements.VisualElement
---@field ussClassName string
UnityEngine.UIElements.Box = {}
---@alias CS.UnityEngine.UIElements.Box UnityEngine.UIElements.Box
CS.UnityEngine.UIElements.Box = UnityEngine.UIElements.Box

---@return UnityEngine.UIElements.Box
function UnityEngine.UIElements.Box.New() end

---@class UnityEngine.UIElements.Box.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.Box.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.Box.UxmlFactory UnityEngine.UIElements.Box.UxmlFactory
CS.UnityEngine.UIElements.Box.UxmlFactory = UnityEngine.UIElements.Box.UxmlFactory

---@return UnityEngine.UIElements.Box.UxmlFactory
function UnityEngine.UIElements.Box.UxmlFactory.New() end

---@class UnityEngine.UIElements.Button : UnityEngine.UIElements.TextElement
---@field ussClassName string
---@field clickable UnityEngine.UIElements.Clickable
UnityEngine.UIElements.Button = {}
---@alias CS.UnityEngine.UIElements.Button UnityEngine.UIElements.Button
CS.UnityEngine.UIElements.Button = UnityEngine.UIElements.Button

---@overload fun() : UnityEngine.UIElements.Button
---@param clickEvent System.Action
---@return UnityEngine.UIElements.Button
function UnityEngine.UIElements.Button.New(clickEvent) end

---@class UnityEngine.UIElements.Button.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.Button.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.Button.UxmlFactory UnityEngine.UIElements.Button.UxmlFactory
CS.UnityEngine.UIElements.Button.UxmlFactory = UnityEngine.UIElements.Button.UxmlFactory

---@return UnityEngine.UIElements.Button.UxmlFactory
function UnityEngine.UIElements.Button.UxmlFactory.New() end

---@class UnityEngine.UIElements.Button.UxmlTraits : UnityEngine.UIElements.TextElement.UxmlTraits
UnityEngine.UIElements.Button.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.Button.UxmlTraits UnityEngine.UIElements.Button.UxmlTraits
CS.UnityEngine.UIElements.Button.UxmlTraits = UnityEngine.UIElements.Button.UxmlTraits

---@return UnityEngine.UIElements.Button.UxmlTraits
function UnityEngine.UIElements.Button.UxmlTraits.New() end

---@class UnityEngine.UIElements.ButtonStripField : UnityEngine.UIElements.BaseField
---@field className string
---@field value UnityEngine.UIElements.ButtonStripField -- infered from UnityEngine.UIElements.BaseField`1[System.Int32]
UnityEngine.UIElements.ButtonStripField = {}
---@alias CS.UnityEngine.UIElements.ButtonStripField UnityEngine.UIElements.ButtonStripField
CS.UnityEngine.UIElements.ButtonStripField = UnityEngine.UIElements.ButtonStripField

---@overload fun() : UnityEngine.UIElements.ButtonStripField
---@param label string
---@return UnityEngine.UIElements.ButtonStripField
function UnityEngine.UIElements.ButtonStripField.New(label) end
---@overload fun(self: UnityEngine.UIElements.ButtonStripField, text: string, name: string)
---@param icon UnityEngine.UIElements.Background
---@param name string
function UnityEngine.UIElements.ButtonStripField:AddButton(icon, name) end
---@param newValue number
function UnityEngine.UIElements.ButtonStripField:SetValueWithoutNotify(newValue) end

---@class UnityEngine.UIElements.ButtonStripField.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.ButtonStripField.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.ButtonStripField.UxmlFactory UnityEngine.UIElements.ButtonStripField.UxmlFactory
CS.UnityEngine.UIElements.ButtonStripField.UxmlFactory = UnityEngine.UIElements.ButtonStripField.UxmlFactory

---@return UnityEngine.UIElements.ButtonStripField.UxmlFactory
function UnityEngine.UIElements.ButtonStripField.UxmlFactory.New() end

---@class UnityEngine.UIElements.ButtonStripField.UxmlTraits : UnityEngine.UIElements.BaseField.UxmlTraits
UnityEngine.UIElements.ButtonStripField.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.ButtonStripField.UxmlTraits UnityEngine.UIElements.ButtonStripField.UxmlTraits
CS.UnityEngine.UIElements.ButtonStripField.UxmlTraits = UnityEngine.UIElements.ButtonStripField.UxmlTraits

---@return UnityEngine.UIElements.ButtonStripField.UxmlTraits
function UnityEngine.UIElements.ButtonStripField.UxmlTraits.New() end

---@class UnityEngine.UIElements.RectField : UnityEngine.UIElements.BaseCompositeField
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
UnityEngine.UIElements.RectField = {}
---@alias CS.UnityEngine.UIElements.RectField UnityEngine.UIElements.RectField
CS.UnityEngine.UIElements.RectField = UnityEngine.UIElements.RectField

---@overload fun() : UnityEngine.UIElements.RectField
---@param label string
---@return UnityEngine.UIElements.RectField
function UnityEngine.UIElements.RectField.New(label) end

---@class UnityEngine.UIElements.RectField.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.RectField.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.RectField.UxmlFactory UnityEngine.UIElements.RectField.UxmlFactory
CS.UnityEngine.UIElements.RectField.UxmlFactory = UnityEngine.UIElements.RectField.UxmlFactory

---@return UnityEngine.UIElements.RectField.UxmlFactory
function UnityEngine.UIElements.RectField.UxmlFactory.New() end

---@class UnityEngine.UIElements.RectField.UxmlTraits : UnityEngine.UIElements.BaseField.UxmlTraits
UnityEngine.UIElements.RectField.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.RectField.UxmlTraits UnityEngine.UIElements.RectField.UxmlTraits
CS.UnityEngine.UIElements.RectField.UxmlTraits = UnityEngine.UIElements.RectField.UxmlTraits

---@return UnityEngine.UIElements.RectField.UxmlTraits
function UnityEngine.UIElements.RectField.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.RectField.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.RectIntField : UnityEngine.UIElements.BaseCompositeField
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
UnityEngine.UIElements.RectIntField = {}
---@alias CS.UnityEngine.UIElements.RectIntField UnityEngine.UIElements.RectIntField
CS.UnityEngine.UIElements.RectIntField = UnityEngine.UIElements.RectIntField

---@overload fun() : UnityEngine.UIElements.RectIntField
---@param label string
---@return UnityEngine.UIElements.RectIntField
function UnityEngine.UIElements.RectIntField.New(label) end

---@class UnityEngine.UIElements.RectIntField.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.RectIntField.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.RectIntField.UxmlFactory UnityEngine.UIElements.RectIntField.UxmlFactory
CS.UnityEngine.UIElements.RectIntField.UxmlFactory = UnityEngine.UIElements.RectIntField.UxmlFactory

---@return UnityEngine.UIElements.RectIntField.UxmlFactory
function UnityEngine.UIElements.RectIntField.UxmlFactory.New() end

---@class UnityEngine.UIElements.RectIntField.UxmlTraits : UnityEngine.UIElements.BaseField.UxmlTraits
UnityEngine.UIElements.RectIntField.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.RectIntField.UxmlTraits UnityEngine.UIElements.RectIntField.UxmlTraits
CS.UnityEngine.UIElements.RectIntField.UxmlTraits = UnityEngine.UIElements.RectIntField.UxmlTraits

---@return UnityEngine.UIElements.RectIntField.UxmlTraits
function UnityEngine.UIElements.RectIntField.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.RectIntField.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.Vector2Field : UnityEngine.UIElements.BaseCompositeField
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
UnityEngine.UIElements.Vector2Field = {}
---@alias CS.UnityEngine.UIElements.Vector2Field UnityEngine.UIElements.Vector2Field
CS.UnityEngine.UIElements.Vector2Field = UnityEngine.UIElements.Vector2Field

---@overload fun() : UnityEngine.UIElements.Vector2Field
---@param label string
---@return UnityEngine.UIElements.Vector2Field
function UnityEngine.UIElements.Vector2Field.New(label) end

---@class UnityEngine.UIElements.Vector2Field.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.Vector2Field.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.Vector2Field.UxmlFactory UnityEngine.UIElements.Vector2Field.UxmlFactory
CS.UnityEngine.UIElements.Vector2Field.UxmlFactory = UnityEngine.UIElements.Vector2Field.UxmlFactory

---@return UnityEngine.UIElements.Vector2Field.UxmlFactory
function UnityEngine.UIElements.Vector2Field.UxmlFactory.New() end

---@class UnityEngine.UIElements.Vector2Field.UxmlTraits : UnityEngine.UIElements.BaseField.UxmlTraits
UnityEngine.UIElements.Vector2Field.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.Vector2Field.UxmlTraits UnityEngine.UIElements.Vector2Field.UxmlTraits
CS.UnityEngine.UIElements.Vector2Field.UxmlTraits = UnityEngine.UIElements.Vector2Field.UxmlTraits

---@return UnityEngine.UIElements.Vector2Field.UxmlTraits
function UnityEngine.UIElements.Vector2Field.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.Vector2Field.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.Vector3Field : UnityEngine.UIElements.BaseCompositeField
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
UnityEngine.UIElements.Vector3Field = {}
---@alias CS.UnityEngine.UIElements.Vector3Field UnityEngine.UIElements.Vector3Field
CS.UnityEngine.UIElements.Vector3Field = UnityEngine.UIElements.Vector3Field

---@overload fun() : UnityEngine.UIElements.Vector3Field
---@param label string
---@return UnityEngine.UIElements.Vector3Field
function UnityEngine.UIElements.Vector3Field.New(label) end

---@class UnityEngine.UIElements.Vector3Field.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.Vector3Field.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.Vector3Field.UxmlFactory UnityEngine.UIElements.Vector3Field.UxmlFactory
CS.UnityEngine.UIElements.Vector3Field.UxmlFactory = UnityEngine.UIElements.Vector3Field.UxmlFactory

---@return UnityEngine.UIElements.Vector3Field.UxmlFactory
function UnityEngine.UIElements.Vector3Field.UxmlFactory.New() end

---@class UnityEngine.UIElements.Vector3Field.UxmlTraits : UnityEngine.UIElements.BaseField.UxmlTraits
UnityEngine.UIElements.Vector3Field.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.Vector3Field.UxmlTraits UnityEngine.UIElements.Vector3Field.UxmlTraits
CS.UnityEngine.UIElements.Vector3Field.UxmlTraits = UnityEngine.UIElements.Vector3Field.UxmlTraits

---@return UnityEngine.UIElements.Vector3Field.UxmlTraits
function UnityEngine.UIElements.Vector3Field.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.Vector3Field.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.Vector4Field : UnityEngine.UIElements.BaseCompositeField
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
UnityEngine.UIElements.Vector4Field = {}
---@alias CS.UnityEngine.UIElements.Vector4Field UnityEngine.UIElements.Vector4Field
CS.UnityEngine.UIElements.Vector4Field = UnityEngine.UIElements.Vector4Field

---@overload fun() : UnityEngine.UIElements.Vector4Field
---@param label string
---@return UnityEngine.UIElements.Vector4Field
function UnityEngine.UIElements.Vector4Field.New(label) end

---@class UnityEngine.UIElements.Vector4Field.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.Vector4Field.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.Vector4Field.UxmlFactory UnityEngine.UIElements.Vector4Field.UxmlFactory
CS.UnityEngine.UIElements.Vector4Field.UxmlFactory = UnityEngine.UIElements.Vector4Field.UxmlFactory

---@return UnityEngine.UIElements.Vector4Field.UxmlFactory
function UnityEngine.UIElements.Vector4Field.UxmlFactory.New() end

---@class UnityEngine.UIElements.Vector4Field.UxmlTraits : UnityEngine.UIElements.BaseField.UxmlTraits
UnityEngine.UIElements.Vector4Field.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.Vector4Field.UxmlTraits UnityEngine.UIElements.Vector4Field.UxmlTraits
CS.UnityEngine.UIElements.Vector4Field.UxmlTraits = UnityEngine.UIElements.Vector4Field.UxmlTraits

---@return UnityEngine.UIElements.Vector4Field.UxmlTraits
function UnityEngine.UIElements.Vector4Field.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.Vector4Field.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.Vector2IntField : UnityEngine.UIElements.BaseCompositeField
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
UnityEngine.UIElements.Vector2IntField = {}
---@alias CS.UnityEngine.UIElements.Vector2IntField UnityEngine.UIElements.Vector2IntField
CS.UnityEngine.UIElements.Vector2IntField = UnityEngine.UIElements.Vector2IntField

---@overload fun() : UnityEngine.UIElements.Vector2IntField
---@param label string
---@return UnityEngine.UIElements.Vector2IntField
function UnityEngine.UIElements.Vector2IntField.New(label) end

---@class UnityEngine.UIElements.Vector2IntField.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.Vector2IntField.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.Vector2IntField.UxmlFactory UnityEngine.UIElements.Vector2IntField.UxmlFactory
CS.UnityEngine.UIElements.Vector2IntField.UxmlFactory = UnityEngine.UIElements.Vector2IntField.UxmlFactory

---@return UnityEngine.UIElements.Vector2IntField.UxmlFactory
function UnityEngine.UIElements.Vector2IntField.UxmlFactory.New() end

---@class UnityEngine.UIElements.Vector2IntField.UxmlTraits : UnityEngine.UIElements.BaseField.UxmlTraits
UnityEngine.UIElements.Vector2IntField.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.Vector2IntField.UxmlTraits UnityEngine.UIElements.Vector2IntField.UxmlTraits
CS.UnityEngine.UIElements.Vector2IntField.UxmlTraits = UnityEngine.UIElements.Vector2IntField.UxmlTraits

---@return UnityEngine.UIElements.Vector2IntField.UxmlTraits
function UnityEngine.UIElements.Vector2IntField.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.Vector2IntField.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.Vector3IntField : UnityEngine.UIElements.BaseCompositeField
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
UnityEngine.UIElements.Vector3IntField = {}
---@alias CS.UnityEngine.UIElements.Vector3IntField UnityEngine.UIElements.Vector3IntField
CS.UnityEngine.UIElements.Vector3IntField = UnityEngine.UIElements.Vector3IntField

---@overload fun() : UnityEngine.UIElements.Vector3IntField
---@param label string
---@return UnityEngine.UIElements.Vector3IntField
function UnityEngine.UIElements.Vector3IntField.New(label) end

---@class UnityEngine.UIElements.Vector3IntField.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.Vector3IntField.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.Vector3IntField.UxmlFactory UnityEngine.UIElements.Vector3IntField.UxmlFactory
CS.UnityEngine.UIElements.Vector3IntField.UxmlFactory = UnityEngine.UIElements.Vector3IntField.UxmlFactory

---@return UnityEngine.UIElements.Vector3IntField.UxmlFactory
function UnityEngine.UIElements.Vector3IntField.UxmlFactory.New() end

---@class UnityEngine.UIElements.Vector3IntField.UxmlTraits : UnityEngine.UIElements.BaseField.UxmlTraits
UnityEngine.UIElements.Vector3IntField.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.Vector3IntField.UxmlTraits UnityEngine.UIElements.Vector3IntField.UxmlTraits
CS.UnityEngine.UIElements.Vector3IntField.UxmlTraits = UnityEngine.UIElements.Vector3IntField.UxmlTraits

---@return UnityEngine.UIElements.Vector3IntField.UxmlTraits
function UnityEngine.UIElements.Vector3IntField.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.Vector3IntField.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.DoubleField : UnityEngine.UIElements.TextValueField
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field value UnityEngine.UIElements.DoubleField -- infered from UnityEngine.UIElements.TextValueField`1[System.Double]
UnityEngine.UIElements.DoubleField = {}
---@alias CS.UnityEngine.UIElements.DoubleField UnityEngine.UIElements.DoubleField
CS.UnityEngine.UIElements.DoubleField = UnityEngine.UIElements.DoubleField

---@overload fun() : UnityEngine.UIElements.DoubleField
---@overload fun(maxLength: number) : UnityEngine.UIElements.DoubleField
---@param label string
---@param maxLength number
---@return UnityEngine.UIElements.DoubleField
function UnityEngine.UIElements.DoubleField.New(label, maxLength) end
---@param delta UnityEngine.Vector3
---@param speed UnityEngine.UIElements.DeltaSpeed
---@param startValue number
function UnityEngine.UIElements.DoubleField:ApplyInputDeviceDelta(delta, speed, startValue) end

---@class UnityEngine.UIElements.DoubleField.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.DoubleField.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.DoubleField.UxmlFactory UnityEngine.UIElements.DoubleField.UxmlFactory
CS.UnityEngine.UIElements.DoubleField.UxmlFactory = UnityEngine.UIElements.DoubleField.UxmlFactory

---@return UnityEngine.UIElements.DoubleField.UxmlFactory
function UnityEngine.UIElements.DoubleField.UxmlFactory.New() end

---@class UnityEngine.UIElements.DoubleField.UxmlTraits : UnityEngine.UIElements.TextValueFieldTraits
UnityEngine.UIElements.DoubleField.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.DoubleField.UxmlTraits UnityEngine.UIElements.DoubleField.UxmlTraits
CS.UnityEngine.UIElements.DoubleField.UxmlTraits = UnityEngine.UIElements.DoubleField.UxmlTraits

---@return UnityEngine.UIElements.DoubleField.UxmlTraits
function UnityEngine.UIElements.DoubleField.UxmlTraits.New() end

---@class UnityEngine.UIElements.DoubleField.DoubleInput : UnityEngine.UIElements.TextValueField.TextValueInput
UnityEngine.UIElements.DoubleField.DoubleInput = {}
---@alias CS.UnityEngine.UIElements.DoubleField.DoubleInput UnityEngine.UIElements.DoubleField.DoubleInput
CS.UnityEngine.UIElements.DoubleField.DoubleInput = UnityEngine.UIElements.DoubleField.DoubleInput

---@param delta UnityEngine.Vector3
---@param speed UnityEngine.UIElements.DeltaSpeed
---@param startValue number
function UnityEngine.UIElements.DoubleField.DoubleInput:ApplyInputDeviceDelta(delta, speed, startValue) end

---@class UnityEngine.UIElements.DropdownField : UnityEngine.UIElements.PopupField
---@field value UnityEngine.UIElements.DropdownField -- infered from UnityEngine.UIElements.PopupField`1[System.String]
UnityEngine.UIElements.DropdownField = {}
---@alias CS.UnityEngine.UIElements.DropdownField UnityEngine.UIElements.DropdownField
CS.UnityEngine.UIElements.DropdownField = UnityEngine.UIElements.DropdownField

---@overload fun() : UnityEngine.UIElements.DropdownField
---@overload fun(label: string) : UnityEngine.UIElements.DropdownField
---@overload fun(choices: System.Collections.Generic.List, defaultValue: string, formatSelectedValueCallback: System.Func, formatListItemCallback: System.Func) : UnityEngine.UIElements.DropdownField
---@overload fun(label: string, choices: System.Collections.Generic.List, defaultValue: string, formatSelectedValueCallback: System.Func, formatListItemCallback: System.Func) : UnityEngine.UIElements.DropdownField
---@overload fun(choices: System.Collections.Generic.List, defaultIndex: number, formatSelectedValueCallback: System.Func, formatListItemCallback: System.Func) : UnityEngine.UIElements.DropdownField
---@param label string
---@param choices System.Collections.Generic.List
---@param defaultIndex number
---@param formatSelectedValueCallback System.Func
---@param formatListItemCallback System.Func
---@return UnityEngine.UIElements.DropdownField
function UnityEngine.UIElements.DropdownField.New(label, choices, defaultIndex, formatSelectedValueCallback, formatListItemCallback) end

---@class UnityEngine.UIElements.DropdownField.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.DropdownField.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.DropdownField.UxmlFactory UnityEngine.UIElements.DropdownField.UxmlFactory
CS.UnityEngine.UIElements.DropdownField.UxmlFactory = UnityEngine.UIElements.DropdownField.UxmlFactory

---@return UnityEngine.UIElements.DropdownField.UxmlFactory
function UnityEngine.UIElements.DropdownField.UxmlFactory.New() end

---@class UnityEngine.UIElements.DropdownField.UxmlTraits : UnityEngine.UIElements.BaseField.UxmlTraits
UnityEngine.UIElements.DropdownField.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.DropdownField.UxmlTraits UnityEngine.UIElements.DropdownField.UxmlTraits
CS.UnityEngine.UIElements.DropdownField.UxmlTraits = UnityEngine.UIElements.DropdownField.UxmlTraits

---@return UnityEngine.UIElements.DropdownField.UxmlTraits
function UnityEngine.UIElements.DropdownField.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.DropdownField.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.EnumFieldHelpers : System.Object
UnityEngine.UIElements.EnumFieldHelpers = {}
---@alias CS.UnityEngine.UIElements.EnumFieldHelpers UnityEngine.UIElements.EnumFieldHelpers
CS.UnityEngine.UIElements.EnumFieldHelpers = UnityEngine.UIElements.EnumFieldHelpers


---@class UnityEngine.UIElements.EnumField : UnityEngine.UIElements.BaseField
---@field ussClassName string
---@field textUssClassName string
---@field arrowUssClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field text string
---@field value UnityEngine.UIElements.EnumField -- infered from UnityEngine.UIElements.BaseField`1[System.Enum]
UnityEngine.UIElements.EnumField = {}
---@alias CS.UnityEngine.UIElements.EnumField UnityEngine.UIElements.EnumField
CS.UnityEngine.UIElements.EnumField = UnityEngine.UIElements.EnumField

---@overload fun() : UnityEngine.UIElements.EnumField
---@overload fun(defaultValue: System.Enum) : UnityEngine.UIElements.EnumField
---@param label string
---@param defaultValue System.Enum
---@return UnityEngine.UIElements.EnumField
function UnityEngine.UIElements.EnumField.New(label, defaultValue) end
---@overload fun(self: UnityEngine.UIElements.EnumField, defaultValue: System.Enum)
---@param defaultValue System.Enum
---@param includeObsoleteValues boolean
function UnityEngine.UIElements.EnumField:Init(defaultValue, includeObsoleteValues) end
---@param newValue System.Enum
function UnityEngine.UIElements.EnumField:SetValueWithoutNotify(newValue) end

---@class UnityEngine.UIElements.EnumField.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.EnumField.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.EnumField.UxmlFactory UnityEngine.UIElements.EnumField.UxmlFactory
CS.UnityEngine.UIElements.EnumField.UxmlFactory = UnityEngine.UIElements.EnumField.UxmlFactory

---@return UnityEngine.UIElements.EnumField.UxmlFactory
function UnityEngine.UIElements.EnumField.UxmlFactory.New() end

---@class UnityEngine.UIElements.EnumField.UxmlTraits : UnityEngine.UIElements.BaseField.UxmlTraits
UnityEngine.UIElements.EnumField.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.EnumField.UxmlTraits UnityEngine.UIElements.EnumField.UxmlTraits
CS.UnityEngine.UIElements.EnumField.UxmlTraits = UnityEngine.UIElements.EnumField.UxmlTraits

---@return UnityEngine.UIElements.EnumField.UxmlTraits
function UnityEngine.UIElements.EnumField.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.EnumField.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.FloatField : UnityEngine.UIElements.TextValueField
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field value UnityEngine.UIElements.FloatField -- infered from UnityEngine.UIElements.TextValueField`1[System.Single]
UnityEngine.UIElements.FloatField = {}
---@alias CS.UnityEngine.UIElements.FloatField UnityEngine.UIElements.FloatField
CS.UnityEngine.UIElements.FloatField = UnityEngine.UIElements.FloatField

---@overload fun() : UnityEngine.UIElements.FloatField
---@overload fun(maxLength: number) : UnityEngine.UIElements.FloatField
---@param label string
---@param maxLength number
---@return UnityEngine.UIElements.FloatField
function UnityEngine.UIElements.FloatField.New(label, maxLength) end
---@param delta UnityEngine.Vector3
---@param speed UnityEngine.UIElements.DeltaSpeed
---@param startValue number
function UnityEngine.UIElements.FloatField:ApplyInputDeviceDelta(delta, speed, startValue) end

---@class UnityEngine.UIElements.FloatField.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.FloatField.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.FloatField.UxmlFactory UnityEngine.UIElements.FloatField.UxmlFactory
CS.UnityEngine.UIElements.FloatField.UxmlFactory = UnityEngine.UIElements.FloatField.UxmlFactory

---@return UnityEngine.UIElements.FloatField.UxmlFactory
function UnityEngine.UIElements.FloatField.UxmlFactory.New() end

---@class UnityEngine.UIElements.FloatField.UxmlTraits : UnityEngine.UIElements.TextValueFieldTraits
UnityEngine.UIElements.FloatField.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.FloatField.UxmlTraits UnityEngine.UIElements.FloatField.UxmlTraits
CS.UnityEngine.UIElements.FloatField.UxmlTraits = UnityEngine.UIElements.FloatField.UxmlTraits

---@return UnityEngine.UIElements.FloatField.UxmlTraits
function UnityEngine.UIElements.FloatField.UxmlTraits.New() end

---@class UnityEngine.UIElements.FloatField.FloatInput : UnityEngine.UIElements.TextValueField.TextValueInput
UnityEngine.UIElements.FloatField.FloatInput = {}
---@alias CS.UnityEngine.UIElements.FloatField.FloatInput UnityEngine.UIElements.FloatField.FloatInput
CS.UnityEngine.UIElements.FloatField.FloatInput = UnityEngine.UIElements.FloatField.FloatInput

---@param delta UnityEngine.Vector3
---@param speed UnityEngine.UIElements.DeltaSpeed
---@param startValue number
function UnityEngine.UIElements.FloatField.FloatInput:ApplyInputDeviceDelta(delta, speed, startValue) end

---@class UnityEngine.UIElements.Foldout : UnityEngine.UIElements.BindableElement
---@field ussClassName string
---@field toggleUssClassName string
---@field contentUssClassName string
---@field inputUssClassName string
---@field checkmarkUssClassName string
---@field textUssClassName string
---@field contentContainer UnityEngine.UIElements.VisualElement
---@field text string
---@field value boolean
UnityEngine.UIElements.Foldout = {}
---@alias CS.UnityEngine.UIElements.Foldout UnityEngine.UIElements.Foldout
CS.UnityEngine.UIElements.Foldout = UnityEngine.UIElements.Foldout

---@return UnityEngine.UIElements.Foldout
function UnityEngine.UIElements.Foldout.New() end
---@param newValue boolean
function UnityEngine.UIElements.Foldout:SetValueWithoutNotify(newValue) end

---@class UnityEngine.UIElements.Foldout.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.Foldout.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.Foldout.UxmlFactory UnityEngine.UIElements.Foldout.UxmlFactory
CS.UnityEngine.UIElements.Foldout.UxmlFactory = UnityEngine.UIElements.Foldout.UxmlFactory

---@return UnityEngine.UIElements.Foldout.UxmlFactory
function UnityEngine.UIElements.Foldout.UxmlFactory.New() end

---@class UnityEngine.UIElements.Foldout.UxmlTraits : UnityEngine.UIElements.BindableElement.UxmlTraits
UnityEngine.UIElements.Foldout.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.Foldout.UxmlTraits UnityEngine.UIElements.Foldout.UxmlTraits
CS.UnityEngine.UIElements.Foldout.UxmlTraits = UnityEngine.UIElements.Foldout.UxmlTraits

---@return UnityEngine.UIElements.Foldout.UxmlTraits
function UnityEngine.UIElements.Foldout.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.Foldout.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.IGenericMenu
UnityEngine.UIElements.IGenericMenu = {}
---@alias CS.UnityEngine.UIElements.IGenericMenu UnityEngine.UIElements.IGenericMenu
CS.UnityEngine.UIElements.IGenericMenu = UnityEngine.UIElements.IGenericMenu

---@overload fun(self: UnityEngine.UIElements.IGenericMenu, itemName: string, isChecked: boolean, action: System.Action)
---@param itemName string
---@param isChecked boolean
---@param action System.Action
---@param data System.Object
function UnityEngine.UIElements.IGenericMenu:AddItem(itemName, isChecked, action, data) end
---@param itemName string
---@param isChecked boolean
function UnityEngine.UIElements.IGenericMenu:AddDisabledItem(itemName, isChecked) end
---@param path string
function UnityEngine.UIElements.IGenericMenu:AddSeparator(path) end
---@param position UnityEngine.Rect
---@param targetElement UnityEngine.UIElements.VisualElement
---@param anchored boolean
function UnityEngine.UIElements.IGenericMenu:DropDown(position, targetElement, anchored) end

---@class UnityEngine.UIElements.GenericDropdownMenu : System.Object
---@field ussClassName string
---@field itemUssClassName string
---@field labelUssClassName string
---@field containerInnerUssClassName string
---@field containerOuterUssClassName string
---@field checkmarkUssClassName string
---@field separatorUssClassName string
---@field contentContainer UnityEngine.UIElements.VisualElement
UnityEngine.UIElements.GenericDropdownMenu = {}
---@alias CS.UnityEngine.UIElements.GenericDropdownMenu UnityEngine.UIElements.GenericDropdownMenu
CS.UnityEngine.UIElements.GenericDropdownMenu = UnityEngine.UIElements.GenericDropdownMenu

---@return UnityEngine.UIElements.GenericDropdownMenu
function UnityEngine.UIElements.GenericDropdownMenu.New() end
---@overload fun(self: UnityEngine.UIElements.GenericDropdownMenu, itemName: string, isChecked: boolean, action: System.Action)
---@param itemName string
---@param isChecked boolean
---@param action System.Action
---@param data System.Object
function UnityEngine.UIElements.GenericDropdownMenu:AddItem(itemName, isChecked, action, data) end
---@param itemName string
---@param isChecked boolean
function UnityEngine.UIElements.GenericDropdownMenu:AddDisabledItem(itemName, isChecked) end
---@param path string
function UnityEngine.UIElements.GenericDropdownMenu:AddSeparator(path) end
---@param position UnityEngine.Rect
---@param targetElement UnityEngine.UIElements.VisualElement
---@param anchored boolean
function UnityEngine.UIElements.GenericDropdownMenu:DropDown(position, targetElement, anchored) end

---@class UnityEngine.UIElements.GenericDropdownMenu.MenuItem : System.Object
---@field name string
---@field element UnityEngine.UIElements.VisualElement
---@field action System.Action
---@field actionUserData System.Action
UnityEngine.UIElements.GenericDropdownMenu.MenuItem = {}
---@alias CS.UnityEngine.UIElements.GenericDropdownMenu.MenuItem UnityEngine.UIElements.GenericDropdownMenu.MenuItem
CS.UnityEngine.UIElements.GenericDropdownMenu.MenuItem = UnityEngine.UIElements.GenericDropdownMenu.MenuItem

---@return UnityEngine.UIElements.GenericDropdownMenu.MenuItem
function UnityEngine.UIElements.GenericDropdownMenu.MenuItem.New() end

---@class UnityEngine.UIElements.GroupBox : UnityEngine.UIElements.BindableElement
---@field ussClassName string
---@field labelUssClassName string
---@field text string
UnityEngine.UIElements.GroupBox = {}
---@alias CS.UnityEngine.UIElements.GroupBox UnityEngine.UIElements.GroupBox
CS.UnityEngine.UIElements.GroupBox = UnityEngine.UIElements.GroupBox

---@overload fun() : UnityEngine.UIElements.GroupBox
---@param text string
---@return UnityEngine.UIElements.GroupBox
function UnityEngine.UIElements.GroupBox.New(text) end

---@class UnityEngine.UIElements.GroupBox.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.GroupBox.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.GroupBox.UxmlFactory UnityEngine.UIElements.GroupBox.UxmlFactory
CS.UnityEngine.UIElements.GroupBox.UxmlFactory = UnityEngine.UIElements.GroupBox.UxmlFactory

---@return UnityEngine.UIElements.GroupBox.UxmlFactory
function UnityEngine.UIElements.GroupBox.UxmlFactory.New() end

---@class UnityEngine.UIElements.GroupBox.UxmlTraits : UnityEngine.UIElements.BindableElement.UxmlTraits
UnityEngine.UIElements.GroupBox.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.GroupBox.UxmlTraits UnityEngine.UIElements.GroupBox.UxmlTraits
CS.UnityEngine.UIElements.GroupBox.UxmlTraits = UnityEngine.UIElements.GroupBox.UxmlTraits

---@return UnityEngine.UIElements.GroupBox.UxmlTraits
function UnityEngine.UIElements.GroupBox.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.GroupBox.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.Hash128Field : UnityEngine.UIElements.TextInputBaseField
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field value UnityEngine.Hash128
---@field value UnityEngine.UIElements.Hash128Field -- infered from UnityEngine.UIElements.TextInputBaseField`1[UnityEngine.Hash128]
UnityEngine.UIElements.Hash128Field = {}
---@alias CS.UnityEngine.UIElements.Hash128Field UnityEngine.UIElements.Hash128Field
CS.UnityEngine.UIElements.Hash128Field = UnityEngine.UIElements.Hash128Field

---@overload fun() : UnityEngine.UIElements.Hash128Field
---@overload fun(maxLength: number) : UnityEngine.UIElements.Hash128Field
---@param label string
---@param maxLength number
---@return UnityEngine.UIElements.Hash128Field
function UnityEngine.UIElements.Hash128Field.New(label, maxLength) end
---@param newValue UnityEngine.Hash128
function UnityEngine.UIElements.Hash128Field:SetValueWithoutNotify(newValue) end

---@class UnityEngine.UIElements.Hash128Field.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.Hash128Field.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.Hash128Field.UxmlFactory UnityEngine.UIElements.Hash128Field.UxmlFactory
CS.UnityEngine.UIElements.Hash128Field.UxmlFactory = UnityEngine.UIElements.Hash128Field.UxmlFactory

---@return UnityEngine.UIElements.Hash128Field.UxmlFactory
function UnityEngine.UIElements.Hash128Field.UxmlFactory.New() end

---@class UnityEngine.UIElements.Hash128Field.UxmlTraits : UnityEngine.UIElements.TextValueFieldTraits
UnityEngine.UIElements.Hash128Field.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.Hash128Field.UxmlTraits UnityEngine.UIElements.Hash128Field.UxmlTraits
CS.UnityEngine.UIElements.Hash128Field.UxmlTraits = UnityEngine.UIElements.Hash128Field.UxmlTraits

---@return UnityEngine.UIElements.Hash128Field.UxmlTraits
function UnityEngine.UIElements.Hash128Field.UxmlTraits.New() end

---@class UnityEngine.UIElements.Hash128Field.Hash128Input : UnityEngine.UIElements.TextInputBaseField.TextInputBase
---@field formatString string
UnityEngine.UIElements.Hash128Field.Hash128Input = {}
---@alias CS.UnityEngine.UIElements.Hash128Field.Hash128Input UnityEngine.UIElements.Hash128Field.Hash128Input
CS.UnityEngine.UIElements.Hash128Field.Hash128Input = UnityEngine.UIElements.Hash128Field.Hash128Input


---@class UnityEngine.UIElements.HelpBoxMessageType
---@field None UnityEngine.UIElements.HelpBoxMessageType
---@field Info UnityEngine.UIElements.HelpBoxMessageType
---@field Warning UnityEngine.UIElements.HelpBoxMessageType
---@field Error UnityEngine.UIElements.HelpBoxMessageType
UnityEngine.UIElements.HelpBoxMessageType = {}
---@alias CS.UnityEngine.UIElements.HelpBoxMessageType UnityEngine.UIElements.HelpBoxMessageType
CS.UnityEngine.UIElements.HelpBoxMessageType = UnityEngine.UIElements.HelpBoxMessageType


---@class UnityEngine.UIElements.HelpBox : UnityEngine.UIElements.VisualElement
---@field ussClassName string
---@field labelUssClassName string
---@field iconUssClassName string
---@field iconInfoUssClassName string
---@field iconwarningUssClassName string
---@field iconErrorUssClassName string
---@field text string
---@field messageType UnityEngine.UIElements.HelpBoxMessageType
UnityEngine.UIElements.HelpBox = {}
---@alias CS.UnityEngine.UIElements.HelpBox UnityEngine.UIElements.HelpBox
CS.UnityEngine.UIElements.HelpBox = UnityEngine.UIElements.HelpBox

---@overload fun() : UnityEngine.UIElements.HelpBox
---@param text string
---@param messageType UnityEngine.UIElements.HelpBoxMessageType
---@return UnityEngine.UIElements.HelpBox
function UnityEngine.UIElements.HelpBox.New(text, messageType) end

---@class UnityEngine.UIElements.HelpBox.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.HelpBox.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.HelpBox.UxmlFactory UnityEngine.UIElements.HelpBox.UxmlFactory
CS.UnityEngine.UIElements.HelpBox.UxmlFactory = UnityEngine.UIElements.HelpBox.UxmlFactory

---@return UnityEngine.UIElements.HelpBox.UxmlFactory
function UnityEngine.UIElements.HelpBox.UxmlFactory.New() end

---@class UnityEngine.UIElements.HelpBox.UxmlTraits : UnityEngine.UIElements.VisualElement.UxmlTraits
UnityEngine.UIElements.HelpBox.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.HelpBox.UxmlTraits UnityEngine.UIElements.HelpBox.UxmlTraits
CS.UnityEngine.UIElements.HelpBox.UxmlTraits = UnityEngine.UIElements.HelpBox.UxmlTraits

---@return UnityEngine.UIElements.HelpBox.UxmlTraits
function UnityEngine.UIElements.HelpBox.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.HelpBox.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.Image : UnityEngine.UIElements.VisualElement
---@field ussClassName string
---@field image UnityEngine.Texture
---@field sprite UnityEngine.Sprite
---@field vectorImage UnityEngine.UIElements.VectorImage
---@field sourceRect UnityEngine.Rect
---@field uv UnityEngine.Rect
---@field scaleMode UnityEngine.ScaleMode
---@field tintColor UnityEngine.Color
UnityEngine.UIElements.Image = {}
---@alias CS.UnityEngine.UIElements.Image UnityEngine.UIElements.Image
CS.UnityEngine.UIElements.Image = UnityEngine.UIElements.Image

---@return UnityEngine.UIElements.Image
function UnityEngine.UIElements.Image.New() end

---@class UnityEngine.UIElements.Image.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.Image.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.Image.UxmlFactory UnityEngine.UIElements.Image.UxmlFactory
CS.UnityEngine.UIElements.Image.UxmlFactory = UnityEngine.UIElements.Image.UxmlFactory

---@return UnityEngine.UIElements.Image.UxmlFactory
function UnityEngine.UIElements.Image.UxmlFactory.New() end

---@class UnityEngine.UIElements.Image.UxmlTraits : UnityEngine.UIElements.VisualElement.UxmlTraits
---@field uxmlChildElementsDescription System.Collections.Generic.IEnumerable
UnityEngine.UIElements.Image.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.Image.UxmlTraits UnityEngine.UIElements.Image.UxmlTraits
CS.UnityEngine.UIElements.Image.UxmlTraits = UnityEngine.UIElements.Image.UxmlTraits

---@return UnityEngine.UIElements.Image.UxmlTraits
function UnityEngine.UIElements.Image.UxmlTraits.New() end

---@class UnityEngine.UIElements.IMixedValueSupport
---@field showMixedValue boolean
UnityEngine.UIElements.IMixedValueSupport = {}
---@alias CS.UnityEngine.UIElements.IMixedValueSupport UnityEngine.UIElements.IMixedValueSupport
CS.UnityEngine.UIElements.IMixedValueSupport = UnityEngine.UIElements.IMixedValueSupport


---@class UnityEngine.UIElements.INotifyValueChanged
---@field value T
UnityEngine.UIElements.INotifyValueChanged = {}
---@alias CS.UnityEngine.UIElements.INotifyValueChanged UnityEngine.UIElements.INotifyValueChanged
CS.UnityEngine.UIElements.INotifyValueChanged = UnityEngine.UIElements.INotifyValueChanged

---@param newValue T
function UnityEngine.UIElements.INotifyValueChanged:SetValueWithoutNotify(newValue) end

---@class UnityEngine.UIElements.INotifyValueChangedExtensions : System.Object
UnityEngine.UIElements.INotifyValueChangedExtensions = {}
---@alias CS.UnityEngine.UIElements.INotifyValueChangedExtensions UnityEngine.UIElements.INotifyValueChangedExtensions
CS.UnityEngine.UIElements.INotifyValueChangedExtensions = UnityEngine.UIElements.INotifyValueChangedExtensions


---@class UnityEngine.UIElements.IPrefixLabel
---@field label string
---@field labelElement UnityEngine.UIElements.Label
UnityEngine.UIElements.IPrefixLabel = {}
---@alias CS.UnityEngine.UIElements.IPrefixLabel UnityEngine.UIElements.IPrefixLabel
CS.UnityEngine.UIElements.IPrefixLabel = UnityEngine.UIElements.IPrefixLabel


---@class UnityEngine.UIElements.IEditableElement
UnityEngine.UIElements.IEditableElement = {}
---@alias CS.UnityEngine.UIElements.IEditableElement UnityEngine.UIElements.IEditableElement
CS.UnityEngine.UIElements.IEditableElement = UnityEngine.UIElements.IEditableElement


---@class UnityEngine.UIElements.BaseField : UnityEngine.UIElements.BindableElement
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field noLabelVariantUssClassName string
---@field labelDraggerVariantUssClassName string
---@field mixedValueLabelUssClassName string
---@field alignedFieldUssClassName string
---@field value TValueType
---@field labelElement UnityEngine.UIElements.Label
---@field label string
---@field showMixedValue boolean
UnityEngine.UIElements.BaseField = {}
---@alias CS.UnityEngine.UIElements.BaseField UnityEngine.UIElements.BaseField
CS.UnityEngine.UIElements.BaseField = UnityEngine.UIElements.BaseField

---@param newValue TValueType
function UnityEngine.UIElements.BaseField:SetValueWithoutNotify(newValue) end

---@class UnityEngine.UIElements.BaseField.UxmlTraits : UnityEngine.UIElements.BindableElement.UxmlTraits
UnityEngine.UIElements.BaseField.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.BaseField.UxmlTraits UnityEngine.UIElements.BaseField.UxmlTraits
CS.UnityEngine.UIElements.BaseField.UxmlTraits = UnityEngine.UIElements.BaseField.UxmlTraits

---@return UnityEngine.UIElements.BaseField.UxmlTraits
function UnityEngine.UIElements.BaseField.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.BaseField.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.BaseFieldTraits : UnityEngine.UIElements.BaseField.UxmlTraits[TValueType]
UnityEngine.UIElements.BaseFieldTraits = {}
---@alias CS.UnityEngine.UIElements.BaseFieldTraits UnityEngine.UIElements.BaseFieldTraits
CS.UnityEngine.UIElements.BaseFieldTraits = UnityEngine.UIElements.BaseFieldTraits

---@return UnityEngine.UIElements.BaseFieldTraits
function UnityEngine.UIElements.BaseFieldTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.BaseFieldTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.KeyboardTextEditorEventHandler : UnityEngine.UIElements.TextEditorEventHandler
UnityEngine.UIElements.KeyboardTextEditorEventHandler = {}
---@alias CS.UnityEngine.UIElements.KeyboardTextEditorEventHandler UnityEngine.UIElements.KeyboardTextEditorEventHandler
CS.UnityEngine.UIElements.KeyboardTextEditorEventHandler = UnityEngine.UIElements.KeyboardTextEditorEventHandler

---@param textElement UnityEngine.UIElements.TextElement
---@param editingUtilities UnityEngine.TextEditingUtilities
---@return UnityEngine.UIElements.KeyboardTextEditorEventHandler
function UnityEngine.UIElements.KeyboardTextEditorEventHandler.New(textElement, editingUtilities) end
---@param evt UnityEngine.UIElements.EventBase
function UnityEngine.UIElements.KeyboardTextEditorEventHandler:ExecuteDefaultActionAtTarget(evt) end

---@class UnityEngine.UIElements.TextEditorEventHandler : System.Object
UnityEngine.UIElements.TextEditorEventHandler = {}
---@alias CS.UnityEngine.UIElements.TextEditorEventHandler UnityEngine.UIElements.TextEditorEventHandler
CS.UnityEngine.UIElements.TextEditorEventHandler = UnityEngine.UIElements.TextEditorEventHandler

---@param evt UnityEngine.UIElements.EventBase
function UnityEngine.UIElements.TextEditorEventHandler:ExecuteDefaultActionAtTarget(evt) end

---@class UnityEngine.UIElements.TextField : UnityEngine.UIElements.TextInputBaseField
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field multiline boolean
---@field value string
---@field value UnityEngine.UIElements.TextField -- infered from UnityEngine.UIElements.TextInputBaseField`1[System.String]
UnityEngine.UIElements.TextField = {}
---@alias CS.UnityEngine.UIElements.TextField UnityEngine.UIElements.TextField
CS.UnityEngine.UIElements.TextField = UnityEngine.UIElements.TextField

---@overload fun() : UnityEngine.UIElements.TextField
---@overload fun(maxLength: number, multiline: boolean, isPasswordField: boolean, maskChar: System.Char) : UnityEngine.UIElements.TextField
---@overload fun(label: string) : UnityEngine.UIElements.TextField
---@param label string
---@param maxLength number
---@param multiline boolean
---@param isPasswordField boolean
---@param maskChar System.Char
---@return UnityEngine.UIElements.TextField
function UnityEngine.UIElements.TextField.New(label, maxLength, multiline, isPasswordField, maskChar) end
---@param newValue string
function UnityEngine.UIElements.TextField:SetValueWithoutNotify(newValue) end

---@class UnityEngine.UIElements.TextField.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.TextField.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.TextField.UxmlFactory UnityEngine.UIElements.TextField.UxmlFactory
CS.UnityEngine.UIElements.TextField.UxmlFactory = UnityEngine.UIElements.TextField.UxmlFactory

---@return UnityEngine.UIElements.TextField.UxmlFactory
function UnityEngine.UIElements.TextField.UxmlFactory.New() end

---@class UnityEngine.UIElements.TextField.UxmlTraits : UnityEngine.UIElements.TextInputBaseField.UxmlTraits
UnityEngine.UIElements.TextField.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.TextField.UxmlTraits UnityEngine.UIElements.TextField.UxmlTraits
CS.UnityEngine.UIElements.TextField.UxmlTraits = UnityEngine.UIElements.TextField.UxmlTraits

---@return UnityEngine.UIElements.TextField.UxmlTraits
function UnityEngine.UIElements.TextField.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.TextField.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.TextField.TextInput : UnityEngine.UIElements.TextInputBaseField.TextInputBase
---@field multiline boolean
---@field isPasswordField boolean
UnityEngine.UIElements.TextField.TextInput = {}
---@alias CS.UnityEngine.UIElements.TextField.TextInput UnityEngine.UIElements.TextField.TextInput
CS.UnityEngine.UIElements.TextField.TextInput = UnityEngine.UIElements.TextField.TextInput

---@return UnityEngine.UIElements.TextField.TextInput
function UnityEngine.UIElements.TextField.TextInput.New() end

---@class UnityEngine.UIElements.TextInputBaseField : UnityEngine.UIElements.BaseField[TValueType]
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field singleLineInputUssClassName string
---@field multilineInputUssClassName string
---@field textInputUssName string
---@field text string
---@field isReadOnly boolean
---@field isPasswordField boolean
---@field autoCorrection boolean
---@field hideMobileInput boolean
---@field keyboardType UnityEngine.TouchScreenKeyboardType
---@field touchScreenKeyboard UnityEngine.TouchScreenKeyboard
---@field textSelection UnityEngine.UIElements.ITextSelection
---@field textEdition UnityEngine.UIElements.ITextEdition
---@field selectionColor UnityEngine.Color
---@field cursorColor UnityEngine.Color
---@field cursorIndex number
---@field cursorPosition UnityEngine.Vector2
---@field selectIndex number
---@field selectAllOnFocus boolean
---@field selectAllOnMouseUp boolean
---@field maxLength number
---@field doubleClickSelectsWord boolean
---@field tripleClickSelectsLine boolean
---@field isDelayed boolean
---@field maskChar System.Char
UnityEngine.UIElements.TextInputBaseField = {}
---@alias CS.UnityEngine.UIElements.TextInputBaseField UnityEngine.UIElements.TextInputBaseField
CS.UnityEngine.UIElements.TextInputBaseField = UnityEngine.UIElements.TextInputBaseField

function UnityEngine.UIElements.TextInputBaseField:SelectAll() end
function UnityEngine.UIElements.TextInputBaseField:SelectNone() end
---@param cursorIndex number
---@param selectionIndex number
function UnityEngine.UIElements.TextInputBaseField:SelectRange(cursorIndex, selectionIndex) end
---@param sv UnityEngine.UIElements.ScrollerVisibility
---@return boolean
function UnityEngine.UIElements.TextInputBaseField:SetVerticalScrollerVisibility(sv) end
---@param textToMeasure string
---@param width number
---@param widthMode UnityEngine.UIElements.VisualElement.MeasureMode
---@param height number
---@param heightMode UnityEngine.UIElements.VisualElement.MeasureMode
---@return UnityEngine.Vector2
function UnityEngine.UIElements.TextInputBaseField:MeasureTextSize(textToMeasure, width, widthMode, height, heightMode) end

---@class UnityEngine.UIElements.TextInputBaseField.UxmlTraits : UnityEngine.UIElements.BaseFieldTraits
UnityEngine.UIElements.TextInputBaseField.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.TextInputBaseField.UxmlTraits UnityEngine.UIElements.TextInputBaseField.UxmlTraits
CS.UnityEngine.UIElements.TextInputBaseField.UxmlTraits = UnityEngine.UIElements.TextInputBaseField.UxmlTraits

---@return UnityEngine.UIElements.TextInputBaseField.UxmlTraits
function UnityEngine.UIElements.TextInputBaseField.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.TextInputBaseField.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.TextInputBaseField.TextInputBase : UnityEngine.UIElements.VisualElement
---@field innerComponentsModifierName string
---@field innerTextElementUssClassName string
---@field horizontalVariantInnerTextElementUssClassName string
---@field verticalVariantInnerTextElementUssClassName string
---@field verticalHorizontalVariantInnerTextElementUssClassName string
---@field innerScrollviewUssClassName string
---@field innerViewportUssClassName string
---@field innerContentContainerUssClassName string
---@field textSelection UnityEngine.UIElements.ITextSelection
---@field textEdition UnityEngine.UIElements.ITextEdition
---@field isReadOnly boolean
---@field maxLength number
---@field maskChar System.Char
---@field isPasswordField boolean
---@field selectionColor UnityEngine.Color
---@field cursorColor UnityEngine.Color
---@field cursorIndex number
---@field selectIndex number
---@field doubleClickSelectsWord boolean
---@field tripleClickSelectsLine boolean
---@field text string
UnityEngine.UIElements.TextInputBaseField.TextInputBase = {}
---@alias CS.UnityEngine.UIElements.TextInputBaseField.TextInputBase UnityEngine.UIElements.TextInputBaseField.TextInputBase
CS.UnityEngine.UIElements.TextInputBaseField.TextInputBase = UnityEngine.UIElements.TextInputBaseField.TextInputBase

function UnityEngine.UIElements.TextInputBaseField.TextInputBase:SelectAll() end
function UnityEngine.UIElements.TextInputBaseField.TextInputBase:ResetValueAndText() end

---@class UnityEngine.UIElements.TouchScreenTextEditorEventHandler : UnityEngine.UIElements.TextEditorEventHandler
UnityEngine.UIElements.TouchScreenTextEditorEventHandler = {}
---@alias CS.UnityEngine.UIElements.TouchScreenTextEditorEventHandler UnityEngine.UIElements.TouchScreenTextEditorEventHandler
CS.UnityEngine.UIElements.TouchScreenTextEditorEventHandler = UnityEngine.UIElements.TouchScreenTextEditorEventHandler

---@param textElement UnityEngine.UIElements.TextElement
---@param editingUtilities UnityEngine.TextEditingUtilities
---@return UnityEngine.UIElements.TouchScreenTextEditorEventHandler
function UnityEngine.UIElements.TouchScreenTextEditorEventHandler.New(textElement, editingUtilities) end
---@param evt UnityEngine.UIElements.EventBase
function UnityEngine.UIElements.TouchScreenTextEditorEventHandler:ExecuteDefaultActionAtTarget(evt) end

---@class UnityEngine.UIElements.IntegerField : UnityEngine.UIElements.TextValueField
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field value UnityEngine.UIElements.IntegerField -- infered from UnityEngine.UIElements.TextValueField`1[System.Int32]
UnityEngine.UIElements.IntegerField = {}
---@alias CS.UnityEngine.UIElements.IntegerField UnityEngine.UIElements.IntegerField
CS.UnityEngine.UIElements.IntegerField = UnityEngine.UIElements.IntegerField

---@overload fun() : UnityEngine.UIElements.IntegerField
---@overload fun(maxLength: number) : UnityEngine.UIElements.IntegerField
---@param label string
---@param maxLength number
---@return UnityEngine.UIElements.IntegerField
function UnityEngine.UIElements.IntegerField.New(label, maxLength) end
---@param delta UnityEngine.Vector3
---@param speed UnityEngine.UIElements.DeltaSpeed
---@param startValue number
function UnityEngine.UIElements.IntegerField:ApplyInputDeviceDelta(delta, speed, startValue) end

---@class UnityEngine.UIElements.IntegerField.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.IntegerField.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.IntegerField.UxmlFactory UnityEngine.UIElements.IntegerField.UxmlFactory
CS.UnityEngine.UIElements.IntegerField.UxmlFactory = UnityEngine.UIElements.IntegerField.UxmlFactory

---@return UnityEngine.UIElements.IntegerField.UxmlFactory
function UnityEngine.UIElements.IntegerField.UxmlFactory.New() end

---@class UnityEngine.UIElements.IntegerField.UxmlTraits : UnityEngine.UIElements.TextValueFieldTraits
UnityEngine.UIElements.IntegerField.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.IntegerField.UxmlTraits UnityEngine.UIElements.IntegerField.UxmlTraits
CS.UnityEngine.UIElements.IntegerField.UxmlTraits = UnityEngine.UIElements.IntegerField.UxmlTraits

---@return UnityEngine.UIElements.IntegerField.UxmlTraits
function UnityEngine.UIElements.IntegerField.UxmlTraits.New() end

---@class UnityEngine.UIElements.IntegerField.IntegerInput : UnityEngine.UIElements.TextValueField.TextValueInput
UnityEngine.UIElements.IntegerField.IntegerInput = {}
---@alias CS.UnityEngine.UIElements.IntegerField.IntegerInput UnityEngine.UIElements.IntegerField.IntegerInput
CS.UnityEngine.UIElements.IntegerField.IntegerInput = UnityEngine.UIElements.IntegerField.IntegerInput

---@param delta UnityEngine.Vector3
---@param speed UnityEngine.UIElements.DeltaSpeed
---@param startValue number
function UnityEngine.UIElements.IntegerField.IntegerInput:ApplyInputDeviceDelta(delta, speed, startValue) end

---@class UnityEngine.UIElements.Label : UnityEngine.UIElements.TextElement
---@field ussClassName string
UnityEngine.UIElements.Label = {}
---@alias CS.UnityEngine.UIElements.Label UnityEngine.UIElements.Label
CS.UnityEngine.UIElements.Label = UnityEngine.UIElements.Label

---@overload fun() : UnityEngine.UIElements.Label
---@param text string
---@return UnityEngine.UIElements.Label
function UnityEngine.UIElements.Label.New(text) end

---@class UnityEngine.UIElements.Label.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.Label.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.Label.UxmlFactory UnityEngine.UIElements.Label.UxmlFactory
CS.UnityEngine.UIElements.Label.UxmlFactory = UnityEngine.UIElements.Label.UxmlFactory

---@return UnityEngine.UIElements.Label.UxmlFactory
function UnityEngine.UIElements.Label.UxmlFactory.New() end

---@class UnityEngine.UIElements.Label.UxmlTraits : UnityEngine.UIElements.TextElement.UxmlTraits
UnityEngine.UIElements.Label.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.Label.UxmlTraits UnityEngine.UIElements.Label.UxmlTraits
CS.UnityEngine.UIElements.Label.UxmlTraits = UnityEngine.UIElements.Label.UxmlTraits

---@return UnityEngine.UIElements.Label.UxmlTraits
function UnityEngine.UIElements.Label.UxmlTraits.New() end

---@class UnityEngine.UIElements.ListView : UnityEngine.UIElements.BaseListView
---@field makeItem System.Func
---@field bindItem System.Action
---@field unbindItem System.Action
---@field destroyItem System.Action
UnityEngine.UIElements.ListView = {}
---@alias CS.UnityEngine.UIElements.ListView UnityEngine.UIElements.ListView
CS.UnityEngine.UIElements.ListView = UnityEngine.UIElements.ListView

---@overload fun() : UnityEngine.UIElements.ListView
---@param itemsSource System.Collections.IList
---@param itemHeight number
---@param makeItem System.Func
---@param bindItem System.Action
---@return UnityEngine.UIElements.ListView
function UnityEngine.UIElements.ListView.New(itemsSource, itemHeight, makeItem, bindItem) end

---@class UnityEngine.UIElements.ListView.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.ListView.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.ListView.UxmlFactory UnityEngine.UIElements.ListView.UxmlFactory
CS.UnityEngine.UIElements.ListView.UxmlFactory = UnityEngine.UIElements.ListView.UxmlFactory

---@return UnityEngine.UIElements.ListView.UxmlFactory
function UnityEngine.UIElements.ListView.UxmlFactory.New() end

---@class UnityEngine.UIElements.ListView.UxmlTraits : UnityEngine.UIElements.BaseListView.UxmlTraits
UnityEngine.UIElements.ListView.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.ListView.UxmlTraits UnityEngine.UIElements.ListView.UxmlTraits
CS.UnityEngine.UIElements.ListView.UxmlTraits = UnityEngine.UIElements.ListView.UxmlTraits

---@return UnityEngine.UIElements.ListView.UxmlTraits
function UnityEngine.UIElements.ListView.UxmlTraits.New() end

---@class UnityEngine.UIElements.LongField : UnityEngine.UIElements.TextValueField
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field value UnityEngine.UIElements.LongField -- infered from UnityEngine.UIElements.TextValueField`1[System.Int64]
UnityEngine.UIElements.LongField = {}
---@alias CS.UnityEngine.UIElements.LongField UnityEngine.UIElements.LongField
CS.UnityEngine.UIElements.LongField = UnityEngine.UIElements.LongField

---@overload fun() : UnityEngine.UIElements.LongField
---@overload fun(maxLength: number) : UnityEngine.UIElements.LongField
---@param label string
---@param maxLength number
---@return UnityEngine.UIElements.LongField
function UnityEngine.UIElements.LongField.New(label, maxLength) end
---@param delta UnityEngine.Vector3
---@param speed UnityEngine.UIElements.DeltaSpeed
---@param startValue number
function UnityEngine.UIElements.LongField:ApplyInputDeviceDelta(delta, speed, startValue) end

---@class UnityEngine.UIElements.LongField.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.LongField.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.LongField.UxmlFactory UnityEngine.UIElements.LongField.UxmlFactory
CS.UnityEngine.UIElements.LongField.UxmlFactory = UnityEngine.UIElements.LongField.UxmlFactory

---@return UnityEngine.UIElements.LongField.UxmlFactory
function UnityEngine.UIElements.LongField.UxmlFactory.New() end

---@class UnityEngine.UIElements.LongField.UxmlTraits : UnityEngine.UIElements.TextValueFieldTraits
UnityEngine.UIElements.LongField.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.LongField.UxmlTraits UnityEngine.UIElements.LongField.UxmlTraits
CS.UnityEngine.UIElements.LongField.UxmlTraits = UnityEngine.UIElements.LongField.UxmlTraits

---@return UnityEngine.UIElements.LongField.UxmlTraits
function UnityEngine.UIElements.LongField.UxmlTraits.New() end

---@class UnityEngine.UIElements.LongField.LongInput : UnityEngine.UIElements.TextValueField.TextValueInput
UnityEngine.UIElements.LongField.LongInput = {}
---@alias CS.UnityEngine.UIElements.LongField.LongInput UnityEngine.UIElements.LongField.LongInput
CS.UnityEngine.UIElements.LongField.LongInput = UnityEngine.UIElements.LongField.LongInput

---@param delta UnityEngine.Vector3
---@param speed UnityEngine.UIElements.DeltaSpeed
---@param startValue number
function UnityEngine.UIElements.LongField.LongInput:ApplyInputDeviceDelta(delta, speed, startValue) end

---@class UnityEngine.UIElements.MinMaxSlider : UnityEngine.UIElements.BaseField
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field trackerUssClassName string
---@field draggerUssClassName string
---@field minThumbUssClassName string
---@field maxThumbUssClassName string
---@field minValue number
---@field maxValue number
---@field value UnityEngine.Vector2
---@field range number
---@field lowLimit number
---@field highLimit number
---@field value UnityEngine.UIElements.MinMaxSlider -- infered from UnityEngine.UIElements.BaseField`1[UnityEngine.Vector2]
UnityEngine.UIElements.MinMaxSlider = {}
---@alias CS.UnityEngine.UIElements.MinMaxSlider UnityEngine.UIElements.MinMaxSlider
CS.UnityEngine.UIElements.MinMaxSlider = UnityEngine.UIElements.MinMaxSlider

---@overload fun() : UnityEngine.UIElements.MinMaxSlider
---@overload fun(minValue: number, maxValue: number, minLimit: number, maxLimit: number) : UnityEngine.UIElements.MinMaxSlider
---@param label string
---@param minValue number
---@param maxValue number
---@param minLimit number
---@param maxLimit number
---@return UnityEngine.UIElements.MinMaxSlider
function UnityEngine.UIElements.MinMaxSlider.New(label, minValue, maxValue, minLimit, maxLimit) end
---@param newValue UnityEngine.Vector2
function UnityEngine.UIElements.MinMaxSlider:SetValueWithoutNotify(newValue) end

---@class UnityEngine.UIElements.MinMaxSlider.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.MinMaxSlider.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.MinMaxSlider.UxmlFactory UnityEngine.UIElements.MinMaxSlider.UxmlFactory
CS.UnityEngine.UIElements.MinMaxSlider.UxmlFactory = UnityEngine.UIElements.MinMaxSlider.UxmlFactory

---@return UnityEngine.UIElements.MinMaxSlider.UxmlFactory
function UnityEngine.UIElements.MinMaxSlider.UxmlFactory.New() end

---@class UnityEngine.UIElements.MinMaxSlider.UxmlTraits : UnityEngine.UIElements.BaseField.UxmlTraits
UnityEngine.UIElements.MinMaxSlider.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.MinMaxSlider.UxmlTraits UnityEngine.UIElements.MinMaxSlider.UxmlTraits
CS.UnityEngine.UIElements.MinMaxSlider.UxmlTraits = UnityEngine.UIElements.MinMaxSlider.UxmlTraits

---@return UnityEngine.UIElements.MinMaxSlider.UxmlTraits
function UnityEngine.UIElements.MinMaxSlider.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.MinMaxSlider.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.MinMaxSlider.DragState
---@field NoThumb UnityEngine.UIElements.MinMaxSlider.DragState
---@field MinThumb UnityEngine.UIElements.MinMaxSlider.DragState
---@field MiddleThumb UnityEngine.UIElements.MinMaxSlider.DragState
---@field MaxThumb UnityEngine.UIElements.MinMaxSlider.DragState
UnityEngine.UIElements.MinMaxSlider.DragState = {}
---@alias CS.UnityEngine.UIElements.MinMaxSlider.DragState UnityEngine.UIElements.MinMaxSlider.DragState
CS.UnityEngine.UIElements.MinMaxSlider.DragState = UnityEngine.UIElements.MinMaxSlider.DragState


---@class UnityEngine.UIElements.ColumnDataType
---@field Name UnityEngine.UIElements.ColumnDataType
---@field Title UnityEngine.UIElements.ColumnDataType
---@field Icon UnityEngine.UIElements.ColumnDataType
---@field Visibility UnityEngine.UIElements.ColumnDataType
---@field Width UnityEngine.UIElements.ColumnDataType
---@field MaxWidth UnityEngine.UIElements.ColumnDataType
---@field MinWidth UnityEngine.UIElements.ColumnDataType
---@field Stretchable UnityEngine.UIElements.ColumnDataType
---@field Sortable UnityEngine.UIElements.ColumnDataType
---@field Optional UnityEngine.UIElements.ColumnDataType
---@field Resizable UnityEngine.UIElements.ColumnDataType
---@field HeaderTemplate UnityEngine.UIElements.ColumnDataType
---@field CellTemplate UnityEngine.UIElements.ColumnDataType
UnityEngine.UIElements.ColumnDataType = {}
---@alias CS.UnityEngine.UIElements.ColumnDataType UnityEngine.UIElements.ColumnDataType
CS.UnityEngine.UIElements.ColumnDataType = UnityEngine.UIElements.ColumnDataType


---@class UnityEngine.UIElements.Column : System.Object
---@field name string
---@field title string
---@field icon UnityEngine.UIElements.Background
---@field visible boolean
---@field width UnityEngine.UIElements.Length
---@field minWidth UnityEngine.UIElements.Length
---@field maxWidth UnityEngine.UIElements.Length
---@field sortable boolean
---@field stretchable boolean
---@field optional boolean
---@field resizable boolean
---@field makeHeader System.Func
---@field bindHeader System.Action
---@field unbindHeader System.Action
---@field destroyHeader System.Action
---@field makeCell System.Func
---@field bindCell System.Action
---@field unbindCell System.Action
---@field destroyCell System.Action
---@field collection UnityEngine.UIElements.Columns
UnityEngine.UIElements.Column = {}
---@alias CS.UnityEngine.UIElements.Column UnityEngine.UIElements.Column
CS.UnityEngine.UIElements.Column = UnityEngine.UIElements.Column

---@return UnityEngine.UIElements.Column
function UnityEngine.UIElements.Column.New() end

---@class UnityEngine.UIElements.Column.UxmlObjectFactory : UnityEngine.UIElements.UxmlObjectFactory[T,UnityEngine.UIElements.Column.UxmlObjectTraits[T]]
UnityEngine.UIElements.Column.UxmlObjectFactory = {}
---@alias CS.UnityEngine.UIElements.Column.UxmlObjectFactory UnityEngine.UIElements.Column.UxmlObjectFactory
CS.UnityEngine.UIElements.Column.UxmlObjectFactory = UnityEngine.UIElements.Column.UxmlObjectFactory

---@return UnityEngine.UIElements.Column.UxmlObjectFactory
function UnityEngine.UIElements.Column.UxmlObjectFactory.New() end

---@class UnityEngine.UIElements.Column.UxmlObjectTraits : UnityEngine.UIElements.UxmlObjectTraits[T]
UnityEngine.UIElements.Column.UxmlObjectTraits = {}
---@alias CS.UnityEngine.UIElements.Column.UxmlObjectTraits UnityEngine.UIElements.Column.UxmlObjectTraits
CS.UnityEngine.UIElements.Column.UxmlObjectTraits = UnityEngine.UIElements.Column.UxmlObjectTraits

---@return UnityEngine.UIElements.Column.UxmlObjectTraits
function UnityEngine.UIElements.Column.UxmlObjectTraits.New() end
---@param ref_obj T
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return ,T
function UnityEngine.UIElements.Column.UxmlObjectTraits:Init(ref_obj, bag, cc) end

---@class UnityEngine.UIElements.ColumnLayout : System.Object
---@field columns UnityEngine.UIElements.Columns
---@field isDirty boolean
---@field columnsWidth number
---@field layoutWidth number
---@field minColumnsWidth number
---@field maxColumnsWidth number
---@field hasStretchableColumns boolean
---@field hasRelativeWidthColumns boolean
UnityEngine.UIElements.ColumnLayout = {}
---@alias CS.UnityEngine.UIElements.ColumnLayout UnityEngine.UIElements.ColumnLayout
CS.UnityEngine.UIElements.ColumnLayout = UnityEngine.UIElements.ColumnLayout

---@param columns UnityEngine.UIElements.Columns
---@return UnityEngine.UIElements.ColumnLayout
function UnityEngine.UIElements.ColumnLayout.New(columns) end
function UnityEngine.UIElements.ColumnLayout:Dirty() end
---@param width number
function UnityEngine.UIElements.ColumnLayout:DoLayout(width) end
---@param stretchableColumns System.Collections.Generic.List
---@param fixedColumns System.Collections.Generic.List
---@param relativeWidthColumns System.Collections.Generic.List
---@param ref_delta number
---@param resizeToFit boolean
---@param dragResize boolean
---@return ,number
function UnityEngine.UIElements.ColumnLayout:StretchResizeColumns(stretchableColumns, fixedColumns, relativeWidthColumns, ref_delta, resizeToFit, dragResize) end
---@param width number
function UnityEngine.UIElements.ColumnLayout:ResizeToFit(width) end
---@param column UnityEngine.UIElements.Column
---@return number
function UnityEngine.UIElements.ColumnLayout:GetDesiredPosition(column) end
---@param c UnityEngine.UIElements.Column
---@return number
function UnityEngine.UIElements.ColumnLayout:GetDesiredWidth(c) end
---@param column UnityEngine.UIElements.Column
---@param pos number
function UnityEngine.UIElements.ColumnLayout:DragResize(column, pos) end

---@class UnityEngine.UIElements.ColumnsDataType
---@field PrimaryColumn UnityEngine.UIElements.ColumnsDataType
---@field StretchMode UnityEngine.UIElements.ColumnsDataType
---@field Reorderable UnityEngine.UIElements.ColumnsDataType
---@field Resizable UnityEngine.UIElements.ColumnsDataType
---@field ResizePreview UnityEngine.UIElements.ColumnsDataType
UnityEngine.UIElements.ColumnsDataType = {}
---@alias CS.UnityEngine.UIElements.ColumnsDataType UnityEngine.UIElements.ColumnsDataType
CS.UnityEngine.UIElements.ColumnsDataType = UnityEngine.UIElements.ColumnsDataType


---@class UnityEngine.UIElements.Columns : System.Object
---@field primaryColumnName string
---@field reorderable boolean
---@field resizable boolean
---@field resizePreview boolean
---@field stretchMode UnityEngine.UIElements.Columns.StretchMode
---@field Count number
---@field IsReadOnly boolean
---@field Item UnityEngine.UIElements.Column
---@field Item UnityEngine.UIElements.Column
UnityEngine.UIElements.Columns = {}
---@alias CS.UnityEngine.UIElements.Columns UnityEngine.UIElements.Columns
CS.UnityEngine.UIElements.Columns = UnityEngine.UIElements.Columns

---@return UnityEngine.UIElements.Columns
function UnityEngine.UIElements.Columns.New() end
---@param column UnityEngine.UIElements.Column
---@return boolean
function UnityEngine.UIElements.Columns:IsPrimary(column) end
---@return System.Collections.Generic.IEnumerator
function UnityEngine.UIElements.Columns:GetEnumerator() end
---@param item UnityEngine.UIElements.Column
function UnityEngine.UIElements.Columns:Add(item) end
function UnityEngine.UIElements.Columns:Clear() end
---@overload fun(self: UnityEngine.UIElements.Columns, item: UnityEngine.UIElements.Column) : boolean
---@param name string
---@return boolean
function UnityEngine.UIElements.Columns:Contains(name) end
---@param array UnityEngine.UIElements.Column[]
---@param arrayIndex number
function UnityEngine.UIElements.Columns:CopyTo(array, arrayIndex) end
---@param column UnityEngine.UIElements.Column
---@return boolean
function UnityEngine.UIElements.Columns:Remove(column) end
---@param column UnityEngine.UIElements.Column
---@return number
function UnityEngine.UIElements.Columns:IndexOf(column) end
---@param index number
---@param column UnityEngine.UIElements.Column
function UnityEngine.UIElements.Columns:Insert(index, column) end
---@param index number
function UnityEngine.UIElements.Columns:RemoveAt(index) end
---@param from number
---@param to number
function UnityEngine.UIElements.Columns:ReorderDisplay(from, to) end

---@class UnityEngine.UIElements.Columns.StretchMode
---@field Grow UnityEngine.UIElements.Columns.StretchMode
---@field GrowAndFill UnityEngine.UIElements.Columns.StretchMode
UnityEngine.UIElements.Columns.StretchMode = {}
---@alias CS.UnityEngine.UIElements.Columns.StretchMode UnityEngine.UIElements.Columns.StretchMode
CS.UnityEngine.UIElements.Columns.StretchMode = UnityEngine.UIElements.Columns.StretchMode


---@class UnityEngine.UIElements.Columns.UxmlObjectFactory : UnityEngine.UIElements.UxmlObjectFactory[T,UnityEngine.UIElements.Columns.UxmlObjectTraits[T]]
UnityEngine.UIElements.Columns.UxmlObjectFactory = {}
---@alias CS.UnityEngine.UIElements.Columns.UxmlObjectFactory UnityEngine.UIElements.Columns.UxmlObjectFactory
CS.UnityEngine.UIElements.Columns.UxmlObjectFactory = UnityEngine.UIElements.Columns.UxmlObjectFactory

---@return UnityEngine.UIElements.Columns.UxmlObjectFactory
function UnityEngine.UIElements.Columns.UxmlObjectFactory.New() end

---@class UnityEngine.UIElements.Columns.UxmlObjectTraits : UnityEngine.UIElements.UxmlObjectTraits[T]
UnityEngine.UIElements.Columns.UxmlObjectTraits = {}
---@alias CS.UnityEngine.UIElements.Columns.UxmlObjectTraits UnityEngine.UIElements.Columns.UxmlObjectTraits
CS.UnityEngine.UIElements.Columns.UxmlObjectTraits = UnityEngine.UIElements.Columns.UxmlObjectTraits

---@return UnityEngine.UIElements.Columns.UxmlObjectTraits
function UnityEngine.UIElements.Columns.UxmlObjectTraits.New() end
---@param ref_obj T
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return ,T
function UnityEngine.UIElements.Columns.UxmlObjectTraits:Init(ref_obj, bag, cc) end

---@class UnityEngine.UIElements.MultiColumnController : System.Object
---@field headerContainerUssClassName string
---@field rowContainerUssClassName string
---@field cellUssClassName string
---@field cellLabelUssClassName string
UnityEngine.UIElements.MultiColumnController = {}
---@alias CS.UnityEngine.UIElements.MultiColumnController UnityEngine.UIElements.MultiColumnController
CS.UnityEngine.UIElements.MultiColumnController = UnityEngine.UIElements.MultiColumnController

---@param columns UnityEngine.UIElements.Columns
---@param sortDescriptions UnityEngine.UIElements.SortColumnDescriptions
---@param sortedColumns System.Collections.Generic.List
---@return UnityEngine.UIElements.MultiColumnController
function UnityEngine.UIElements.MultiColumnController.New(columns, sortDescriptions, sortedColumns) end
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.MultiColumnController:MakeItem() end
---@param element UnityEngine.UIElements.VisualElement
---@param index number
function UnityEngine.UIElements.MultiColumnController:UnbindItem(element, index) end
---@param element UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.MultiColumnController:DestroyItem(element) end
---@param collectionView UnityEngine.UIElements.BaseVerticalCollectionView
function UnityEngine.UIElements.MultiColumnController:PrepareView(collectionView) end
function UnityEngine.UIElements.MultiColumnController:Dispose() end

---@class UnityEngine.UIElements.MultiColumnListView : UnityEngine.UIElements.BaseListView
---@field viewController UnityEngine.UIElements.MultiColumnListViewController
---@field sortedColumns System.Collections.Generic.IEnumerable
---@field columns UnityEngine.UIElements.Columns
---@field sortColumnDescriptions UnityEngine.UIElements.SortColumnDescriptions
---@field sortingEnabled boolean
UnityEngine.UIElements.MultiColumnListView = {}
---@alias CS.UnityEngine.UIElements.MultiColumnListView UnityEngine.UIElements.MultiColumnListView
CS.UnityEngine.UIElements.MultiColumnListView = UnityEngine.UIElements.MultiColumnListView

---@overload fun() : UnityEngine.UIElements.MultiColumnListView
---@param columns UnityEngine.UIElements.Columns
---@return UnityEngine.UIElements.MultiColumnListView
function UnityEngine.UIElements.MultiColumnListView.New(columns) end
---@param controller UnityEngine.UIElements.CollectionViewController
function UnityEngine.UIElements.MultiColumnListView:SetViewController(controller) end

---@class UnityEngine.UIElements.MultiColumnListView.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.MultiColumnListView.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.MultiColumnListView.UxmlFactory UnityEngine.UIElements.MultiColumnListView.UxmlFactory
CS.UnityEngine.UIElements.MultiColumnListView.UxmlFactory = UnityEngine.UIElements.MultiColumnListView.UxmlFactory

---@return UnityEngine.UIElements.MultiColumnListView.UxmlFactory
function UnityEngine.UIElements.MultiColumnListView.UxmlFactory.New() end

---@class UnityEngine.UIElements.MultiColumnListView.UxmlTraits : UnityEngine.UIElements.BaseListView.UxmlTraits
UnityEngine.UIElements.MultiColumnListView.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.MultiColumnListView.UxmlTraits UnityEngine.UIElements.MultiColumnListView.UxmlTraits
CS.UnityEngine.UIElements.MultiColumnListView.UxmlTraits = UnityEngine.UIElements.MultiColumnListView.UxmlTraits

---@return UnityEngine.UIElements.MultiColumnListView.UxmlTraits
function UnityEngine.UIElements.MultiColumnListView.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.MultiColumnListView.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.MultiColumnTreeView : UnityEngine.UIElements.BaseTreeView
---@field viewController UnityEngine.UIElements.MultiColumnTreeViewController
---@field sortedColumns System.Collections.Generic.IEnumerable
---@field columns UnityEngine.UIElements.Columns
---@field sortColumnDescriptions UnityEngine.UIElements.SortColumnDescriptions
---@field sortingEnabled boolean
UnityEngine.UIElements.MultiColumnTreeView = {}
---@alias CS.UnityEngine.UIElements.MultiColumnTreeView UnityEngine.UIElements.MultiColumnTreeView
CS.UnityEngine.UIElements.MultiColumnTreeView = UnityEngine.UIElements.MultiColumnTreeView

---@overload fun() : UnityEngine.UIElements.MultiColumnTreeView
---@param columns UnityEngine.UIElements.Columns
---@return UnityEngine.UIElements.MultiColumnTreeView
function UnityEngine.UIElements.MultiColumnTreeView.New(columns) end
---@param controller UnityEngine.UIElements.CollectionViewController
function UnityEngine.UIElements.MultiColumnTreeView:SetViewController(controller) end

---@class UnityEngine.UIElements.MultiColumnTreeView.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.MultiColumnTreeView.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.MultiColumnTreeView.UxmlFactory UnityEngine.UIElements.MultiColumnTreeView.UxmlFactory
CS.UnityEngine.UIElements.MultiColumnTreeView.UxmlFactory = UnityEngine.UIElements.MultiColumnTreeView.UxmlFactory

---@return UnityEngine.UIElements.MultiColumnTreeView.UxmlFactory
function UnityEngine.UIElements.MultiColumnTreeView.UxmlFactory.New() end

---@class UnityEngine.UIElements.MultiColumnTreeView.UxmlTraits : UnityEngine.UIElements.BaseTreeView.UxmlTraits
UnityEngine.UIElements.MultiColumnTreeView.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.MultiColumnTreeView.UxmlTraits UnityEngine.UIElements.MultiColumnTreeView.UxmlTraits
CS.UnityEngine.UIElements.MultiColumnTreeView.UxmlTraits = UnityEngine.UIElements.MultiColumnTreeView.UxmlTraits

---@return UnityEngine.UIElements.MultiColumnTreeView.UxmlTraits
function UnityEngine.UIElements.MultiColumnTreeView.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.MultiColumnTreeView.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.SortDirection
---@field Ascending UnityEngine.UIElements.SortDirection
---@field Descending UnityEngine.UIElements.SortDirection
UnityEngine.UIElements.SortDirection = {}
---@alias CS.UnityEngine.UIElements.SortDirection UnityEngine.UIElements.SortDirection
CS.UnityEngine.UIElements.SortDirection = UnityEngine.UIElements.SortDirection


---@class UnityEngine.UIElements.SortColumnDescription : System.Object
---@field columnName string
---@field columnIndex number
---@field column UnityEngine.UIElements.Column
---@field direction UnityEngine.UIElements.SortDirection
UnityEngine.UIElements.SortColumnDescription = {}
---@alias CS.UnityEngine.UIElements.SortColumnDescription UnityEngine.UIElements.SortColumnDescription
CS.UnityEngine.UIElements.SortColumnDescription = UnityEngine.UIElements.SortColumnDescription

---@overload fun() : UnityEngine.UIElements.SortColumnDescription
---@overload fun(columnIndex: number, direction: UnityEngine.UIElements.SortDirection) : UnityEngine.UIElements.SortColumnDescription
---@param columnName string
---@param direction UnityEngine.UIElements.SortDirection
---@return UnityEngine.UIElements.SortColumnDescription
function UnityEngine.UIElements.SortColumnDescription.New(columnName, direction) end

---@class UnityEngine.UIElements.SortColumnDescription.UxmlObjectFactory : UnityEngine.UIElements.UxmlObjectFactory[T,UnityEngine.UIElements.SortColumnDescription.UxmlObjectTraits[T]]
UnityEngine.UIElements.SortColumnDescription.UxmlObjectFactory = {}
---@alias CS.UnityEngine.UIElements.SortColumnDescription.UxmlObjectFactory UnityEngine.UIElements.SortColumnDescription.UxmlObjectFactory
CS.UnityEngine.UIElements.SortColumnDescription.UxmlObjectFactory = UnityEngine.UIElements.SortColumnDescription.UxmlObjectFactory

---@return UnityEngine.UIElements.SortColumnDescription.UxmlObjectFactory
function UnityEngine.UIElements.SortColumnDescription.UxmlObjectFactory.New() end

---@class UnityEngine.UIElements.SortColumnDescription.UxmlObjectTraits : UnityEngine.UIElements.UxmlObjectTraits[T]
UnityEngine.UIElements.SortColumnDescription.UxmlObjectTraits = {}
---@alias CS.UnityEngine.UIElements.SortColumnDescription.UxmlObjectTraits UnityEngine.UIElements.SortColumnDescription.UxmlObjectTraits
CS.UnityEngine.UIElements.SortColumnDescription.UxmlObjectTraits = UnityEngine.UIElements.SortColumnDescription.UxmlObjectTraits

---@return UnityEngine.UIElements.SortColumnDescription.UxmlObjectTraits
function UnityEngine.UIElements.SortColumnDescription.UxmlObjectTraits.New() end
---@param ref_obj T
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return ,T
function UnityEngine.UIElements.SortColumnDescription.UxmlObjectTraits:Init(ref_obj, bag, cc) end

---@class UnityEngine.UIElements.SortColumnDescriptions : System.Object
---@field Count number
---@field IsReadOnly boolean
---@field Item UnityEngine.UIElements.SortColumnDescription
UnityEngine.UIElements.SortColumnDescriptions = {}
---@alias CS.UnityEngine.UIElements.SortColumnDescriptions UnityEngine.UIElements.SortColumnDescriptions
CS.UnityEngine.UIElements.SortColumnDescriptions = UnityEngine.UIElements.SortColumnDescriptions

---@return UnityEngine.UIElements.SortColumnDescriptions
function UnityEngine.UIElements.SortColumnDescriptions.New() end
---@return System.Collections.Generic.IEnumerator
function UnityEngine.UIElements.SortColumnDescriptions:GetEnumerator() end
---@param item UnityEngine.UIElements.SortColumnDescription
function UnityEngine.UIElements.SortColumnDescriptions:Add(item) end
function UnityEngine.UIElements.SortColumnDescriptions:Clear() end
---@param item UnityEngine.UIElements.SortColumnDescription
---@return boolean
function UnityEngine.UIElements.SortColumnDescriptions:Contains(item) end
---@param array UnityEngine.UIElements.SortColumnDescription[]
---@param arrayIndex number
function UnityEngine.UIElements.SortColumnDescriptions:CopyTo(array, arrayIndex) end
---@param desc UnityEngine.UIElements.SortColumnDescription
---@return boolean
function UnityEngine.UIElements.SortColumnDescriptions:Remove(desc) end
---@param desc UnityEngine.UIElements.SortColumnDescription
---@return number
function UnityEngine.UIElements.SortColumnDescriptions:IndexOf(desc) end
---@param index number
---@param desc UnityEngine.UIElements.SortColumnDescription
function UnityEngine.UIElements.SortColumnDescriptions:Insert(index, desc) end
---@param index number
function UnityEngine.UIElements.SortColumnDescriptions:RemoveAt(index) end

---@class UnityEngine.UIElements.SortColumnDescriptions.UxmlObjectFactory : UnityEngine.UIElements.UxmlObjectFactory[T,UnityEngine.UIElements.SortColumnDescriptions.UxmlObjectTraits[T]]
UnityEngine.UIElements.SortColumnDescriptions.UxmlObjectFactory = {}
---@alias CS.UnityEngine.UIElements.SortColumnDescriptions.UxmlObjectFactory UnityEngine.UIElements.SortColumnDescriptions.UxmlObjectFactory
CS.UnityEngine.UIElements.SortColumnDescriptions.UxmlObjectFactory = UnityEngine.UIElements.SortColumnDescriptions.UxmlObjectFactory

---@return UnityEngine.UIElements.SortColumnDescriptions.UxmlObjectFactory
function UnityEngine.UIElements.SortColumnDescriptions.UxmlObjectFactory.New() end

---@class UnityEngine.UIElements.SortColumnDescriptions.UxmlObjectTraits : UnityEngine.UIElements.UxmlObjectTraits[T]
UnityEngine.UIElements.SortColumnDescriptions.UxmlObjectTraits = {}
---@alias CS.UnityEngine.UIElements.SortColumnDescriptions.UxmlObjectTraits UnityEngine.UIElements.SortColumnDescriptions.UxmlObjectTraits
CS.UnityEngine.UIElements.SortColumnDescriptions.UxmlObjectTraits = UnityEngine.UIElements.SortColumnDescriptions.UxmlObjectTraits

---@return UnityEngine.UIElements.SortColumnDescriptions.UxmlObjectTraits
function UnityEngine.UIElements.SortColumnDescriptions.UxmlObjectTraits.New() end
---@param ref_obj T
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return ,T
function UnityEngine.UIElements.SortColumnDescriptions.UxmlObjectTraits:Init(ref_obj, bag, cc) end

---@class UnityEngine.UIElements.PopupField : UnityEngine.UIElements.BasePopupField[T,T]
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field formatSelectedValueCallback System.Func[T,System.String]
---@field formatListItemCallback System.Func[T,System.String]
---@field value T
---@field index number
UnityEngine.UIElements.PopupField = {}
---@alias CS.UnityEngine.UIElements.PopupField UnityEngine.UIElements.PopupField
CS.UnityEngine.UIElements.PopupField = UnityEngine.UIElements.PopupField

---@overload fun() : UnityEngine.UIElements.PopupField
---@overload fun(label: string) : UnityEngine.UIElements.PopupField
---@overload fun(choices: System.Collections.Generic.List[T], defaultValue: T, formatSelectedValueCallback: System.Func[T,System.String], formatListItemCallback: System.Func[T,System.String]) : UnityEngine.UIElements.PopupField
---@overload fun(label: string, choices: System.Collections.Generic.List[T], defaultValue: T, formatSelectedValueCallback: System.Func[T,System.String], formatListItemCallback: System.Func[T,System.String]) : UnityEngine.UIElements.PopupField
---@overload fun(choices: System.Collections.Generic.List[T], defaultIndex: number, formatSelectedValueCallback: System.Func[T,System.String], formatListItemCallback: System.Func[T,System.String]) : UnityEngine.UIElements.PopupField
---@param label string
---@param choices System.Collections.Generic.List[T]
---@param defaultIndex number
---@param formatSelectedValueCallback System.Func[T,System.String]
---@param formatListItemCallback System.Func[T,System.String]
---@return UnityEngine.UIElements.PopupField
function UnityEngine.UIElements.PopupField.New(label, choices, defaultIndex, formatSelectedValueCallback, formatListItemCallback) end
---@param newValue T
function UnityEngine.UIElements.PopupField:SetValueWithoutNotify(newValue) end

---@class UnityEngine.UIElements.PopupWindow : UnityEngine.UIElements.TextElement
---@field ussClassName string
---@field contentUssClassName string
---@field contentContainer UnityEngine.UIElements.VisualElement
UnityEngine.UIElements.PopupWindow = {}
---@alias CS.UnityEngine.UIElements.PopupWindow UnityEngine.UIElements.PopupWindow
CS.UnityEngine.UIElements.PopupWindow = UnityEngine.UIElements.PopupWindow

---@return UnityEngine.UIElements.PopupWindow
function UnityEngine.UIElements.PopupWindow.New() end

---@class UnityEngine.UIElements.PopupWindow.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.PopupWindow.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.PopupWindow.UxmlFactory UnityEngine.UIElements.PopupWindow.UxmlFactory
CS.UnityEngine.UIElements.PopupWindow.UxmlFactory = UnityEngine.UIElements.PopupWindow.UxmlFactory

---@return UnityEngine.UIElements.PopupWindow.UxmlFactory
function UnityEngine.UIElements.PopupWindow.UxmlFactory.New() end

---@class UnityEngine.UIElements.PopupWindow.UxmlTraits : UnityEngine.UIElements.TextElement.UxmlTraits
---@field uxmlChildElementsDescription System.Collections.Generic.IEnumerable
UnityEngine.UIElements.PopupWindow.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.PopupWindow.UxmlTraits UnityEngine.UIElements.PopupWindow.UxmlTraits
CS.UnityEngine.UIElements.PopupWindow.UxmlTraits = UnityEngine.UIElements.PopupWindow.UxmlTraits

---@return UnityEngine.UIElements.PopupWindow.UxmlTraits
function UnityEngine.UIElements.PopupWindow.UxmlTraits.New() end

---@class UnityEngine.UIElements.AbstractProgressBar : UnityEngine.UIElements.BindableElement
---@field ussClassName string
---@field containerUssClassName string
---@field titleUssClassName string
---@field titleContainerUssClassName string
---@field progressUssClassName string
---@field backgroundUssClassName string
---@field title string
---@field lowValue number
---@field highValue number
---@field value number
UnityEngine.UIElements.AbstractProgressBar = {}
---@alias CS.UnityEngine.UIElements.AbstractProgressBar UnityEngine.UIElements.AbstractProgressBar
CS.UnityEngine.UIElements.AbstractProgressBar = UnityEngine.UIElements.AbstractProgressBar

---@return UnityEngine.UIElements.AbstractProgressBar
function UnityEngine.UIElements.AbstractProgressBar.New() end
---@param newValue number
function UnityEngine.UIElements.AbstractProgressBar:SetValueWithoutNotify(newValue) end

---@class UnityEngine.UIElements.AbstractProgressBar.UxmlTraits : UnityEngine.UIElements.BindableElement.UxmlTraits
UnityEngine.UIElements.AbstractProgressBar.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.AbstractProgressBar.UxmlTraits UnityEngine.UIElements.AbstractProgressBar.UxmlTraits
CS.UnityEngine.UIElements.AbstractProgressBar.UxmlTraits = UnityEngine.UIElements.AbstractProgressBar.UxmlTraits

---@return UnityEngine.UIElements.AbstractProgressBar.UxmlTraits
function UnityEngine.UIElements.AbstractProgressBar.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.AbstractProgressBar.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.ProgressBar : UnityEngine.UIElements.AbstractProgressBar
UnityEngine.UIElements.ProgressBar = {}
---@alias CS.UnityEngine.UIElements.ProgressBar UnityEngine.UIElements.ProgressBar
CS.UnityEngine.UIElements.ProgressBar = UnityEngine.UIElements.ProgressBar

---@return UnityEngine.UIElements.ProgressBar
function UnityEngine.UIElements.ProgressBar.New() end

---@class UnityEngine.UIElements.ProgressBar.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.ProgressBar.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.ProgressBar.UxmlFactory UnityEngine.UIElements.ProgressBar.UxmlFactory
CS.UnityEngine.UIElements.ProgressBar.UxmlFactory = UnityEngine.UIElements.ProgressBar.UxmlFactory

---@return UnityEngine.UIElements.ProgressBar.UxmlFactory
function UnityEngine.UIElements.ProgressBar.UxmlFactory.New() end

---@class UnityEngine.UIElements.RadioButton : UnityEngine.UIElements.BaseBoolField
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field checkmarkBackgroundUssClassName string
---@field checkmarkUssClassName string
---@field textUssClassName string
---@field value boolean
UnityEngine.UIElements.RadioButton = {}
---@alias CS.UnityEngine.UIElements.RadioButton UnityEngine.UIElements.RadioButton
CS.UnityEngine.UIElements.RadioButton = UnityEngine.UIElements.RadioButton

---@overload fun() : UnityEngine.UIElements.RadioButton
---@param label string
---@return UnityEngine.UIElements.RadioButton
function UnityEngine.UIElements.RadioButton.New(label) end
---@param newValue boolean
function UnityEngine.UIElements.RadioButton:SetValueWithoutNotify(newValue) end

---@class UnityEngine.UIElements.RadioButton.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.RadioButton.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.RadioButton.UxmlFactory UnityEngine.UIElements.RadioButton.UxmlFactory
CS.UnityEngine.UIElements.RadioButton.UxmlFactory = UnityEngine.UIElements.RadioButton.UxmlFactory

---@return UnityEngine.UIElements.RadioButton.UxmlFactory
function UnityEngine.UIElements.RadioButton.UxmlFactory.New() end

---@class UnityEngine.UIElements.RadioButton.UxmlTraits : UnityEngine.UIElements.BaseFieldTraits
UnityEngine.UIElements.RadioButton.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.RadioButton.UxmlTraits UnityEngine.UIElements.RadioButton.UxmlTraits
CS.UnityEngine.UIElements.RadioButton.UxmlTraits = UnityEngine.UIElements.RadioButton.UxmlTraits

---@return UnityEngine.UIElements.RadioButton.UxmlTraits
function UnityEngine.UIElements.RadioButton.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.RadioButton.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.RadioButtonGroup : UnityEngine.UIElements.BaseField
---@field ussClassName string
---@field containerUssClassName string
---@field choices System.Collections.Generic.IEnumerable
---@field contentContainer UnityEngine.UIElements.VisualElement
---@field value UnityEngine.UIElements.RadioButtonGroup -- infered from UnityEngine.UIElements.BaseField`1[System.Int32]
UnityEngine.UIElements.RadioButtonGroup = {}
---@alias CS.UnityEngine.UIElements.RadioButtonGroup UnityEngine.UIElements.RadioButtonGroup
CS.UnityEngine.UIElements.RadioButtonGroup = UnityEngine.UIElements.RadioButtonGroup

---@overload fun() : UnityEngine.UIElements.RadioButtonGroup
---@param label string
---@param radioButtonChoices System.Collections.Generic.List
---@return UnityEngine.UIElements.RadioButtonGroup
function UnityEngine.UIElements.RadioButtonGroup.New(label, radioButtonChoices) end
---@param newValue number
function UnityEngine.UIElements.RadioButtonGroup:SetValueWithoutNotify(newValue) end

---@class UnityEngine.UIElements.RadioButtonGroup.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.RadioButtonGroup.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.RadioButtonGroup.UxmlFactory UnityEngine.UIElements.RadioButtonGroup.UxmlFactory
CS.UnityEngine.UIElements.RadioButtonGroup.UxmlFactory = UnityEngine.UIElements.RadioButtonGroup.UxmlFactory

---@return UnityEngine.UIElements.RadioButtonGroup.UxmlFactory
function UnityEngine.UIElements.RadioButtonGroup.UxmlFactory.New() end

---@class UnityEngine.UIElements.RadioButtonGroup.UxmlTraits : UnityEngine.UIElements.BaseFieldTraits
UnityEngine.UIElements.RadioButtonGroup.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.RadioButtonGroup.UxmlTraits UnityEngine.UIElements.RadioButtonGroup.UxmlTraits
CS.UnityEngine.UIElements.RadioButtonGroup.UxmlTraits = UnityEngine.UIElements.RadioButtonGroup.UxmlTraits

---@return UnityEngine.UIElements.RadioButtonGroup.UxmlTraits
function UnityEngine.UIElements.RadioButtonGroup.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.RadioButtonGroup.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.RepeatButton : UnityEngine.UIElements.TextElement
---@field ussClassName string
UnityEngine.UIElements.RepeatButton = {}
---@alias CS.UnityEngine.UIElements.RepeatButton UnityEngine.UIElements.RepeatButton
CS.UnityEngine.UIElements.RepeatButton = UnityEngine.UIElements.RepeatButton

---@overload fun() : UnityEngine.UIElements.RepeatButton
---@param clickEvent System.Action
---@param delay number
---@param interval number
---@return UnityEngine.UIElements.RepeatButton
function UnityEngine.UIElements.RepeatButton.New(clickEvent, delay, interval) end
---@param clickEvent System.Action
---@param delay number
---@param interval number
function UnityEngine.UIElements.RepeatButton:SetAction(clickEvent, delay, interval) end

---@class UnityEngine.UIElements.RepeatButton.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.RepeatButton.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.RepeatButton.UxmlFactory UnityEngine.UIElements.RepeatButton.UxmlFactory
CS.UnityEngine.UIElements.RepeatButton.UxmlFactory = UnityEngine.UIElements.RepeatButton.UxmlFactory

---@return UnityEngine.UIElements.RepeatButton.UxmlFactory
function UnityEngine.UIElements.RepeatButton.UxmlFactory.New() end

---@class UnityEngine.UIElements.RepeatButton.UxmlTraits : UnityEngine.UIElements.TextElement.UxmlTraits
UnityEngine.UIElements.RepeatButton.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.RepeatButton.UxmlTraits UnityEngine.UIElements.RepeatButton.UxmlTraits
CS.UnityEngine.UIElements.RepeatButton.UxmlTraits = UnityEngine.UIElements.RepeatButton.UxmlTraits

---@return UnityEngine.UIElements.RepeatButton.UxmlTraits
function UnityEngine.UIElements.RepeatButton.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.RepeatButton.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.Scroller : UnityEngine.UIElements.VisualElement
---@field ussClassName string
---@field horizontalVariantUssClassName string
---@field verticalVariantUssClassName string
---@field sliderUssClassName string
---@field lowButtonUssClassName string
---@field highButtonUssClassName string
---@field slider UnityEngine.UIElements.Slider
---@field lowButton UnityEngine.UIElements.RepeatButton
---@field highButton UnityEngine.UIElements.RepeatButton
---@field value number
---@field lowValue number
---@field highValue number
---@field direction UnityEngine.UIElements.SliderDirection
UnityEngine.UIElements.Scroller = {}
---@alias CS.UnityEngine.UIElements.Scroller UnityEngine.UIElements.Scroller
CS.UnityEngine.UIElements.Scroller = UnityEngine.UIElements.Scroller

---@overload fun() : UnityEngine.UIElements.Scroller
---@param lowValue number
---@param highValue number
---@param valueChanged System.Action
---@param direction UnityEngine.UIElements.SliderDirection
---@return UnityEngine.UIElements.Scroller
function UnityEngine.UIElements.Scroller.New(lowValue, highValue, valueChanged, direction) end
---@param factor number
function UnityEngine.UIElements.Scroller:Adjust(factor) end
---@overload fun()
---@param factor number
function UnityEngine.UIElements.Scroller:ScrollPageUp(factor) end
---@overload fun()
---@param factor number
function UnityEngine.UIElements.Scroller:ScrollPageDown(factor) end

---@class UnityEngine.UIElements.Scroller.ScrollerSlider : UnityEngine.UIElements.Slider
UnityEngine.UIElements.Scroller.ScrollerSlider = {}
---@alias CS.UnityEngine.UIElements.Scroller.ScrollerSlider UnityEngine.UIElements.Scroller.ScrollerSlider
CS.UnityEngine.UIElements.Scroller.ScrollerSlider = UnityEngine.UIElements.Scroller.ScrollerSlider

---@param start number
---@param _end number
---@param direction UnityEngine.UIElements.SliderDirection
---@param pageSize number
---@return UnityEngine.UIElements.Scroller.ScrollerSlider
function UnityEngine.UIElements.Scroller.ScrollerSlider.New(start, _end, direction, pageSize) end

---@class UnityEngine.UIElements.Scroller.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.Scroller.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.Scroller.UxmlFactory UnityEngine.UIElements.Scroller.UxmlFactory
CS.UnityEngine.UIElements.Scroller.UxmlFactory = UnityEngine.UIElements.Scroller.UxmlFactory

---@return UnityEngine.UIElements.Scroller.UxmlFactory
function UnityEngine.UIElements.Scroller.UxmlFactory.New() end

---@class UnityEngine.UIElements.Scroller.UxmlTraits : UnityEngine.UIElements.VisualElement.UxmlTraits
---@field uxmlChildElementsDescription System.Collections.Generic.IEnumerable
UnityEngine.UIElements.Scroller.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.Scroller.UxmlTraits UnityEngine.UIElements.Scroller.UxmlTraits
CS.UnityEngine.UIElements.Scroller.UxmlTraits = UnityEngine.UIElements.Scroller.UxmlTraits

---@return UnityEngine.UIElements.Scroller.UxmlTraits
function UnityEngine.UIElements.Scroller.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.Scroller.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.ScrollViewMode
---@field Vertical UnityEngine.UIElements.ScrollViewMode
---@field Horizontal UnityEngine.UIElements.ScrollViewMode
---@field VerticalAndHorizontal UnityEngine.UIElements.ScrollViewMode
UnityEngine.UIElements.ScrollViewMode = {}
---@alias CS.UnityEngine.UIElements.ScrollViewMode UnityEngine.UIElements.ScrollViewMode
CS.UnityEngine.UIElements.ScrollViewMode = UnityEngine.UIElements.ScrollViewMode


---@class UnityEngine.UIElements.ScrollerVisibility
---@field Auto UnityEngine.UIElements.ScrollerVisibility
---@field AlwaysVisible UnityEngine.UIElements.ScrollerVisibility
---@field Hidden UnityEngine.UIElements.ScrollerVisibility
UnityEngine.UIElements.ScrollerVisibility = {}
---@alias CS.UnityEngine.UIElements.ScrollerVisibility UnityEngine.UIElements.ScrollerVisibility
CS.UnityEngine.UIElements.ScrollerVisibility = UnityEngine.UIElements.ScrollerVisibility


---@class UnityEngine.UIElements.ScrollView : UnityEngine.UIElements.VisualElement
---@field ussClassName string
---@field viewportUssClassName string
---@field horizontalVariantViewportUssClassName string
---@field verticalVariantViewportUssClassName string
---@field verticalHorizontalVariantViewportUssClassName string
---@field contentAndVerticalScrollUssClassName string
---@field contentUssClassName string
---@field horizontalVariantContentUssClassName string
---@field verticalVariantContentUssClassName string
---@field verticalHorizontalVariantContentUssClassName string
---@field hScrollerUssClassName string
---@field vScrollerUssClassName string
---@field horizontalVariantUssClassName string
---@field verticalVariantUssClassName string
---@field verticalHorizontalVariantUssClassName string
---@field scrollVariantUssClassName string
---@field horizontalScrollerVisibility UnityEngine.UIElements.ScrollerVisibility
---@field verticalScrollerVisibility UnityEngine.UIElements.ScrollerVisibility
---@field scrollOffset UnityEngine.Vector2
---@field horizontalPageSize number
---@field verticalPageSize number
---@field mouseWheelScrollSize number
---@field scrollDecelerationRate number
---@field elasticity number
---@field touchScrollBehavior UnityEngine.UIElements.ScrollView.TouchScrollBehavior
---@field nestedInteractionKind UnityEngine.UIElements.ScrollView.NestedInteractionKind
---@field elasticAnimationIntervalMs number
---@field contentViewport UnityEngine.UIElements.VisualElement
---@field horizontalScroller UnityEngine.UIElements.Scroller
---@field verticalScroller UnityEngine.UIElements.Scroller
---@field contentContainer UnityEngine.UIElements.VisualElement
---@field mode UnityEngine.UIElements.ScrollViewMode
UnityEngine.UIElements.ScrollView = {}
---@alias CS.UnityEngine.UIElements.ScrollView UnityEngine.UIElements.ScrollView
CS.UnityEngine.UIElements.ScrollView = UnityEngine.UIElements.ScrollView

---@overload fun() : UnityEngine.UIElements.ScrollView
---@param scrollViewMode UnityEngine.UIElements.ScrollViewMode
---@return UnityEngine.UIElements.ScrollView
function UnityEngine.UIElements.ScrollView.New(scrollViewMode) end
---@param child UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.ScrollView:ScrollTo(child) end

---@class UnityEngine.UIElements.ScrollView.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.ScrollView.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.ScrollView.UxmlFactory UnityEngine.UIElements.ScrollView.UxmlFactory
CS.UnityEngine.UIElements.ScrollView.UxmlFactory = UnityEngine.UIElements.ScrollView.UxmlFactory

---@return UnityEngine.UIElements.ScrollView.UxmlFactory
function UnityEngine.UIElements.ScrollView.UxmlFactory.New() end

---@class UnityEngine.UIElements.ScrollView.UxmlTraits : UnityEngine.UIElements.VisualElement.UxmlTraits
UnityEngine.UIElements.ScrollView.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.ScrollView.UxmlTraits UnityEngine.UIElements.ScrollView.UxmlTraits
CS.UnityEngine.UIElements.ScrollView.UxmlTraits = UnityEngine.UIElements.ScrollView.UxmlTraits

---@return UnityEngine.UIElements.ScrollView.UxmlTraits
function UnityEngine.UIElements.ScrollView.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.ScrollView.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.ScrollView.TouchScrollBehavior
---@field Unrestricted UnityEngine.UIElements.ScrollView.TouchScrollBehavior
---@field Elastic UnityEngine.UIElements.ScrollView.TouchScrollBehavior
---@field Clamped UnityEngine.UIElements.ScrollView.TouchScrollBehavior
UnityEngine.UIElements.ScrollView.TouchScrollBehavior = {}
---@alias CS.UnityEngine.UIElements.ScrollView.TouchScrollBehavior UnityEngine.UIElements.ScrollView.TouchScrollBehavior
CS.UnityEngine.UIElements.ScrollView.TouchScrollBehavior = UnityEngine.UIElements.ScrollView.TouchScrollBehavior


---@class UnityEngine.UIElements.ScrollView.NestedInteractionKind
---@field Default UnityEngine.UIElements.ScrollView.NestedInteractionKind
---@field StopScrolling UnityEngine.UIElements.ScrollView.NestedInteractionKind
---@field ForwardScrolling UnityEngine.UIElements.ScrollView.NestedInteractionKind
UnityEngine.UIElements.ScrollView.NestedInteractionKind = {}
---@alias CS.UnityEngine.UIElements.ScrollView.NestedInteractionKind UnityEngine.UIElements.ScrollView.NestedInteractionKind
CS.UnityEngine.UIElements.ScrollView.NestedInteractionKind = UnityEngine.UIElements.ScrollView.NestedInteractionKind


---@class UnityEngine.UIElements.ScrollView.TouchScrollingResult
---@field Apply UnityEngine.UIElements.ScrollView.TouchScrollingResult
---@field Forward UnityEngine.UIElements.ScrollView.TouchScrollingResult
---@field Block UnityEngine.UIElements.ScrollView.TouchScrollingResult
UnityEngine.UIElements.ScrollView.TouchScrollingResult = {}
---@alias CS.UnityEngine.UIElements.ScrollView.TouchScrollingResult UnityEngine.UIElements.ScrollView.TouchScrollingResult
CS.UnityEngine.UIElements.ScrollView.TouchScrollingResult = UnityEngine.UIElements.ScrollView.TouchScrollingResult


---@class UnityEngine.UIElements.Slider : UnityEngine.UIElements.BaseSlider
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field lowValue UnityEngine.UIElements.Slider -- infered from UnityEngine.UIElements.BaseSlider`1[System.Single]
---@field highValue UnityEngine.UIElements.Slider -- infered from UnityEngine.UIElements.BaseSlider`1[System.Single]
---@field range UnityEngine.UIElements.Slider -- infered from UnityEngine.UIElements.BaseSlider`1[System.Single]
---@field value UnityEngine.UIElements.Slider -- infered from UnityEngine.UIElements.BaseSlider`1[System.Single]
UnityEngine.UIElements.Slider = {}
---@alias CS.UnityEngine.UIElements.Slider UnityEngine.UIElements.Slider
CS.UnityEngine.UIElements.Slider = UnityEngine.UIElements.Slider

---@overload fun() : UnityEngine.UIElements.Slider
---@overload fun(start: number, _end: number, direction: UnityEngine.UIElements.SliderDirection, pageSize: number) : UnityEngine.UIElements.Slider
---@param label string
---@param start number
---@param _end number
---@param direction UnityEngine.UIElements.SliderDirection
---@param pageSize number
---@return UnityEngine.UIElements.Slider
function UnityEngine.UIElements.Slider.New(label, start, _end, direction, pageSize) end
---@param delta UnityEngine.Vector3
---@param speed UnityEngine.UIElements.DeltaSpeed
---@param startValue number
function UnityEngine.UIElements.Slider:ApplyInputDeviceDelta(delta, speed, startValue) end

---@class UnityEngine.UIElements.Slider.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.Slider.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.Slider.UxmlFactory UnityEngine.UIElements.Slider.UxmlFactory
CS.UnityEngine.UIElements.Slider.UxmlFactory = UnityEngine.UIElements.Slider.UxmlFactory

---@return UnityEngine.UIElements.Slider.UxmlFactory
function UnityEngine.UIElements.Slider.UxmlFactory.New() end

---@class UnityEngine.UIElements.Slider.UxmlTraits : UnityEngine.UIElements.BaseSlider.UxmlTraits
UnityEngine.UIElements.Slider.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.Slider.UxmlTraits UnityEngine.UIElements.Slider.UxmlTraits
CS.UnityEngine.UIElements.Slider.UxmlTraits = UnityEngine.UIElements.Slider.UxmlTraits

---@return UnityEngine.UIElements.Slider.UxmlTraits
function UnityEngine.UIElements.Slider.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.Slider.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.SliderInt : UnityEngine.UIElements.BaseSlider
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field pageSize number
---@field lowValue UnityEngine.UIElements.SliderInt -- infered from UnityEngine.UIElements.BaseSlider`1[System.Int32]
---@field highValue UnityEngine.UIElements.SliderInt -- infered from UnityEngine.UIElements.BaseSlider`1[System.Int32]
---@field range UnityEngine.UIElements.SliderInt -- infered from UnityEngine.UIElements.BaseSlider`1[System.Int32]
---@field value UnityEngine.UIElements.SliderInt -- infered from UnityEngine.UIElements.BaseSlider`1[System.Int32]
UnityEngine.UIElements.SliderInt = {}
---@alias CS.UnityEngine.UIElements.SliderInt UnityEngine.UIElements.SliderInt
CS.UnityEngine.UIElements.SliderInt = UnityEngine.UIElements.SliderInt

---@overload fun() : UnityEngine.UIElements.SliderInt
---@overload fun(start: number, _end: number, direction: UnityEngine.UIElements.SliderDirection, pageSize: number) : UnityEngine.UIElements.SliderInt
---@param label string
---@param start number
---@param _end number
---@param direction UnityEngine.UIElements.SliderDirection
---@param pageSize number
---@return UnityEngine.UIElements.SliderInt
function UnityEngine.UIElements.SliderInt.New(label, start, _end, direction, pageSize) end
---@param delta UnityEngine.Vector3
---@param speed UnityEngine.UIElements.DeltaSpeed
---@param startValue number
function UnityEngine.UIElements.SliderInt:ApplyInputDeviceDelta(delta, speed, startValue) end

---@class UnityEngine.UIElements.SliderInt.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.SliderInt.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.SliderInt.UxmlFactory UnityEngine.UIElements.SliderInt.UxmlFactory
CS.UnityEngine.UIElements.SliderInt.UxmlFactory = UnityEngine.UIElements.SliderInt.UxmlFactory

---@return UnityEngine.UIElements.SliderInt.UxmlFactory
function UnityEngine.UIElements.SliderInt.UxmlFactory.New() end

---@class UnityEngine.UIElements.SliderInt.UxmlTraits : UnityEngine.UIElements.BaseSlider.UxmlTraits
UnityEngine.UIElements.SliderInt.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.SliderInt.UxmlTraits UnityEngine.UIElements.SliderInt.UxmlTraits
CS.UnityEngine.UIElements.SliderInt.UxmlTraits = UnityEngine.UIElements.SliderInt.UxmlTraits

---@return UnityEngine.UIElements.SliderInt.UxmlTraits
function UnityEngine.UIElements.SliderInt.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.SliderInt.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.DeltaSpeed
---@field Fast UnityEngine.UIElements.DeltaSpeed
---@field Normal UnityEngine.UIElements.DeltaSpeed
---@field Slow UnityEngine.UIElements.DeltaSpeed
UnityEngine.UIElements.DeltaSpeed = {}
---@alias CS.UnityEngine.UIElements.DeltaSpeed UnityEngine.UIElements.DeltaSpeed
CS.UnityEngine.UIElements.DeltaSpeed = UnityEngine.UIElements.DeltaSpeed


---@class UnityEngine.UIElements.IValueField
---@field value T
UnityEngine.UIElements.IValueField = {}
---@alias CS.UnityEngine.UIElements.IValueField UnityEngine.UIElements.IValueField
CS.UnityEngine.UIElements.IValueField = UnityEngine.UIElements.IValueField

---@param delta UnityEngine.Vector3
---@param speed UnityEngine.UIElements.DeltaSpeed
---@param startValue T
function UnityEngine.UIElements.IValueField:ApplyInputDeviceDelta(delta, speed, startValue) end
function UnityEngine.UIElements.IValueField:StartDragging() end
function UnityEngine.UIElements.IValueField:StopDragging() end

---@class UnityEngine.UIElements.TextValueField : UnityEngine.UIElements.TextInputBaseField[TValueType]
---@field formatString string
---@field value TValueType
UnityEngine.UIElements.TextValueField = {}
---@alias CS.UnityEngine.UIElements.TextValueField UnityEngine.UIElements.TextValueField
CS.UnityEngine.UIElements.TextValueField = UnityEngine.UIElements.TextValueField

---@param delta UnityEngine.Vector3
---@param speed UnityEngine.UIElements.DeltaSpeed
---@param startValue TValueType
function UnityEngine.UIElements.TextValueField:ApplyInputDeviceDelta(delta, speed, startValue) end
function UnityEngine.UIElements.TextValueField:StartDragging() end
function UnityEngine.UIElements.TextValueField:StopDragging() end
---@param newValue TValueType
function UnityEngine.UIElements.TextValueField:SetValueWithoutNotify(newValue) end

---@class UnityEngine.UIElements.TextValueField.TextValueInput : UnityEngine.UIElements.TextInputBaseField.TextInputBase[TValueType]
---@field formatString string
UnityEngine.UIElements.TextValueField.TextValueInput = {}
---@alias CS.UnityEngine.UIElements.TextValueField.TextValueInput UnityEngine.UIElements.TextValueField.TextValueInput
CS.UnityEngine.UIElements.TextValueField.TextValueInput = UnityEngine.UIElements.TextValueField.TextValueInput

---@param delta UnityEngine.Vector3
---@param speed UnityEngine.UIElements.DeltaSpeed
---@param startValue TValueType
function UnityEngine.UIElements.TextValueField.TextValueInput:ApplyInputDeviceDelta(delta, speed, startValue) end
function UnityEngine.UIElements.TextValueField.TextValueInput:StartDragging() end
function UnityEngine.UIElements.TextValueField.TextValueInput:StopDragging() end

---@class UnityEngine.UIElements.TextValueFieldTraits : UnityEngine.UIElements.BaseFieldTraits[TValueType,TValueUxmlAttributeType]
UnityEngine.UIElements.TextValueFieldTraits = {}
---@alias CS.UnityEngine.UIElements.TextValueFieldTraits UnityEngine.UIElements.TextValueFieldTraits
CS.UnityEngine.UIElements.TextValueFieldTraits = UnityEngine.UIElements.TextValueFieldTraits

---@return UnityEngine.UIElements.TextValueFieldTraits
function UnityEngine.UIElements.TextValueFieldTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.TextValueFieldTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.Toggle : UnityEngine.UIElements.BaseBoolField
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field checkmarkUssClassName string
---@field textUssClassName string
---@field mixedValuesUssClassName string
UnityEngine.UIElements.Toggle = {}
---@alias CS.UnityEngine.UIElements.Toggle UnityEngine.UIElements.Toggle
CS.UnityEngine.UIElements.Toggle = UnityEngine.UIElements.Toggle

---@overload fun() : UnityEngine.UIElements.Toggle
---@param label string
---@return UnityEngine.UIElements.Toggle
function UnityEngine.UIElements.Toggle.New(label) end

---@class UnityEngine.UIElements.Toggle.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.Toggle.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.Toggle.UxmlFactory UnityEngine.UIElements.Toggle.UxmlFactory
CS.UnityEngine.UIElements.Toggle.UxmlFactory = UnityEngine.UIElements.Toggle.UxmlFactory

---@return UnityEngine.UIElements.Toggle.UxmlFactory
function UnityEngine.UIElements.Toggle.UxmlFactory.New() end

---@class UnityEngine.UIElements.Toggle.UxmlTraits : UnityEngine.UIElements.BaseFieldTraits
UnityEngine.UIElements.Toggle.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.Toggle.UxmlTraits UnityEngine.UIElements.Toggle.UxmlTraits
CS.UnityEngine.UIElements.Toggle.UxmlTraits = UnityEngine.UIElements.Toggle.UxmlTraits

---@return UnityEngine.UIElements.Toggle.UxmlTraits
function UnityEngine.UIElements.Toggle.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.Toggle.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.TreeView : UnityEngine.UIElements.BaseTreeView
---@field makeItem System.Func
---@field bindItem System.Action
---@field unbindItem System.Action
---@field destroyItem System.Action
---@field viewController UnityEngine.UIElements.TreeViewController
UnityEngine.UIElements.TreeView = {}
---@alias CS.UnityEngine.UIElements.TreeView UnityEngine.UIElements.TreeView
CS.UnityEngine.UIElements.TreeView = UnityEngine.UIElements.TreeView

---@overload fun() : UnityEngine.UIElements.TreeView
---@overload fun(makeItem: System.Func, bindItem: System.Action) : UnityEngine.UIElements.TreeView
---@param itemHeight number
---@param makeItem System.Func
---@param bindItem System.Action
---@return UnityEngine.UIElements.TreeView
function UnityEngine.UIElements.TreeView.New(itemHeight, makeItem, bindItem) end

---@class UnityEngine.UIElements.TreeView.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.TreeView.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.TreeView.UxmlFactory UnityEngine.UIElements.TreeView.UxmlFactory
CS.UnityEngine.UIElements.TreeView.UxmlFactory = UnityEngine.UIElements.TreeView.UxmlFactory

---@return UnityEngine.UIElements.TreeView.UxmlFactory
function UnityEngine.UIElements.TreeView.UxmlFactory.New() end

---@class UnityEngine.UIElements.TreeView.UxmlTraits : UnityEngine.UIElements.BaseTreeView.UxmlTraits
UnityEngine.UIElements.TreeView.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.TreeView.UxmlTraits UnityEngine.UIElements.TreeView.UxmlTraits
CS.UnityEngine.UIElements.TreeView.UxmlTraits = UnityEngine.UIElements.TreeView.UxmlTraits

---@return UnityEngine.UIElements.TreeView.UxmlTraits
function UnityEngine.UIElements.TreeView.UxmlTraits.New() end

---@class UnityEngine.UIElements.TreeViewHelpers : System.Object
UnityEngine.UIElements.TreeViewHelpers = {}
---@alias CS.UnityEngine.UIElements.TreeViewHelpers UnityEngine.UIElements.TreeViewHelpers
CS.UnityEngine.UIElements.TreeViewHelpers = UnityEngine.UIElements.TreeViewHelpers


---@class UnityEngine.UIElements.TreeData : System.ValueType
---@field rootItemIds System.Collections.Generic.IEnumerable
UnityEngine.UIElements.TreeData = {}
---@alias CS.UnityEngine.UIElements.TreeData UnityEngine.UIElements.TreeData
CS.UnityEngine.UIElements.TreeData = UnityEngine.UIElements.TreeData

---@param rootItems System.Collections.Generic.IList[UnityEngine.UIElements.TreeViewItemData[T]]
---@return UnityEngine.UIElements.TreeData
function UnityEngine.UIElements.TreeData.New(rootItems) end
---@param id number
---@return UnityEngine.UIElements.TreeViewItemData[T]
function UnityEngine.UIElements.TreeData:GetDataForId(id) end
---@param id number
---@return number
function UnityEngine.UIElements.TreeData:GetParentId(id) end
---@param item UnityEngine.UIElements.TreeViewItemData[T]
---@param parentId number
---@param childIndex number
function UnityEngine.UIElements.TreeData:AddItem(item, parentId, childIndex) end
---@param id number
---@return boolean
function UnityEngine.UIElements.TreeData:TryRemove(id) end
---@param id number
---@param newParentId number
---@param childIndex number
function UnityEngine.UIElements.TreeData:Move(id, newParentId, childIndex) end
---@param childId number
---@param ancestorId number
---@return boolean
function UnityEngine.UIElements.TreeData:HasAncestor(childId, ancestorId) end

---@class UnityEngine.UIElements.TreeItem : System.ValueType
---@field invalidId number
---@field id number
---@field parentId number
---@field childrenIds System.Collections.Generic.IEnumerable
---@field hasChildren boolean
UnityEngine.UIElements.TreeItem = {}
---@alias CS.UnityEngine.UIElements.TreeItem UnityEngine.UIElements.TreeItem
CS.UnityEngine.UIElements.TreeItem = UnityEngine.UIElements.TreeItem

---@param id number
---@param parentId number
---@param childrenIds System.Collections.Generic.IEnumerable
---@return UnityEngine.UIElements.TreeItem
function UnityEngine.UIElements.TreeItem.New(id, parentId, childrenIds) end

---@class UnityEngine.UIElements.TreeViewItemWrapper : System.ValueType
---@field item UnityEngine.UIElements.TreeItem
---@field depth number
---@field id number
---@field parentId number
---@field childrenIds System.Collections.Generic.IEnumerable
---@field hasChildren boolean
UnityEngine.UIElements.TreeViewItemWrapper = {}
---@alias CS.UnityEngine.UIElements.TreeViewItemWrapper UnityEngine.UIElements.TreeViewItemWrapper
CS.UnityEngine.UIElements.TreeViewItemWrapper = UnityEngine.UIElements.TreeViewItemWrapper

---@param item UnityEngine.UIElements.TreeItem
---@param depth number
---@return UnityEngine.UIElements.TreeViewItemWrapper
function UnityEngine.UIElements.TreeViewItemWrapper.New(item, depth) end

---@class UnityEngine.UIElements.TreeViewItemData : System.ValueType
---@field id number
---@field data T
---@field children System.Collections.Generic.IEnumerable[UnityEngine.UIElements.TreeViewItemData[T]]
---@field hasChildren boolean
UnityEngine.UIElements.TreeViewItemData = {}
---@alias CS.UnityEngine.UIElements.TreeViewItemData UnityEngine.UIElements.TreeViewItemData
CS.UnityEngine.UIElements.TreeViewItemData = UnityEngine.UIElements.TreeViewItemData

---@param id number
---@param data T
---@param children System.Collections.Generic.List[UnityEngine.UIElements.TreeViewItemData[T]]
---@return UnityEngine.UIElements.TreeViewItemData
function UnityEngine.UIElements.TreeViewItemData.New(id, data, children) end

---@class UnityEngine.UIElements.TwoPaneSplitView : UnityEngine.UIElements.VisualElement
---@field fixedPane UnityEngine.UIElements.VisualElement
---@field flexedPane UnityEngine.UIElements.VisualElement
---@field fixedPaneIndex number
---@field fixedPaneInitialDimension number
---@field orientation UnityEngine.UIElements.TwoPaneSplitViewOrientation
---@field contentContainer UnityEngine.UIElements.VisualElement
UnityEngine.UIElements.TwoPaneSplitView = {}
---@alias CS.UnityEngine.UIElements.TwoPaneSplitView UnityEngine.UIElements.TwoPaneSplitView
CS.UnityEngine.UIElements.TwoPaneSplitView = UnityEngine.UIElements.TwoPaneSplitView

---@overload fun() : UnityEngine.UIElements.TwoPaneSplitView
---@param fixedPaneIndex number
---@param fixedPaneStartDimension number
---@param orientation UnityEngine.UIElements.TwoPaneSplitViewOrientation
---@return UnityEngine.UIElements.TwoPaneSplitView
function UnityEngine.UIElements.TwoPaneSplitView.New(fixedPaneIndex, fixedPaneStartDimension, orientation) end
---@param index number
function UnityEngine.UIElements.TwoPaneSplitView:CollapseChild(index) end
function UnityEngine.UIElements.TwoPaneSplitView:UnCollapse() end

---@class UnityEngine.UIElements.TwoPaneSplitView.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.TwoPaneSplitView.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.TwoPaneSplitView.UxmlFactory UnityEngine.UIElements.TwoPaneSplitView.UxmlFactory
CS.UnityEngine.UIElements.TwoPaneSplitView.UxmlFactory = UnityEngine.UIElements.TwoPaneSplitView.UxmlFactory

---@return UnityEngine.UIElements.TwoPaneSplitView.UxmlFactory
function UnityEngine.UIElements.TwoPaneSplitView.UxmlFactory.New() end

---@class UnityEngine.UIElements.TwoPaneSplitView.UxmlTraits : UnityEngine.UIElements.VisualElement.UxmlTraits
---@field uxmlChildElementsDescription System.Collections.Generic.IEnumerable
UnityEngine.UIElements.TwoPaneSplitView.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.TwoPaneSplitView.UxmlTraits UnityEngine.UIElements.TwoPaneSplitView.UxmlTraits
CS.UnityEngine.UIElements.TwoPaneSplitView.UxmlTraits = UnityEngine.UIElements.TwoPaneSplitView.UxmlTraits

---@return UnityEngine.UIElements.TwoPaneSplitView.UxmlTraits
function UnityEngine.UIElements.TwoPaneSplitView.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.TwoPaneSplitView.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.TwoPaneSplitViewOrientation
---@field Horizontal UnityEngine.UIElements.TwoPaneSplitViewOrientation
---@field Vertical UnityEngine.UIElements.TwoPaneSplitViewOrientation
UnityEngine.UIElements.TwoPaneSplitViewOrientation = {}
---@alias CS.UnityEngine.UIElements.TwoPaneSplitViewOrientation UnityEngine.UIElements.TwoPaneSplitViewOrientation
CS.UnityEngine.UIElements.TwoPaneSplitViewOrientation = UnityEngine.UIElements.TwoPaneSplitViewOrientation


---@class UnityEngine.UIElements.TwoPaneSplitViewResizer : UnityEngine.UIElements.PointerManipulator
UnityEngine.UIElements.TwoPaneSplitViewResizer = {}
---@alias CS.UnityEngine.UIElements.TwoPaneSplitViewResizer UnityEngine.UIElements.TwoPaneSplitViewResizer
CS.UnityEngine.UIElements.TwoPaneSplitViewResizer = UnityEngine.UIElements.TwoPaneSplitViewResizer

---@param splitView UnityEngine.UIElements.TwoPaneSplitView
---@param dir number
---@return UnityEngine.UIElements.TwoPaneSplitViewResizer
function UnityEngine.UIElements.TwoPaneSplitViewResizer.New(splitView, dir) end
---@param delta number
function UnityEngine.UIElements.TwoPaneSplitViewResizer:ApplyDelta(delta) end

---@class UnityEngine.UIElements.UnsignedIntegerField : UnityEngine.UIElements.TextValueField
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field value UnityEngine.UIElements.UnsignedIntegerField -- infered from UnityEngine.UIElements.TextValueField`1[System.UInt32]
UnityEngine.UIElements.UnsignedIntegerField = {}
---@alias CS.UnityEngine.UIElements.UnsignedIntegerField UnityEngine.UIElements.UnsignedIntegerField
CS.UnityEngine.UIElements.UnsignedIntegerField = UnityEngine.UIElements.UnsignedIntegerField

---@overload fun() : UnityEngine.UIElements.UnsignedIntegerField
---@overload fun(maxLength: number) : UnityEngine.UIElements.UnsignedIntegerField
---@param label string
---@param maxLength number
---@return UnityEngine.UIElements.UnsignedIntegerField
function UnityEngine.UIElements.UnsignedIntegerField.New(label, maxLength) end
---@param delta UnityEngine.Vector3
---@param speed UnityEngine.UIElements.DeltaSpeed
---@param startValue number
function UnityEngine.UIElements.UnsignedIntegerField:ApplyInputDeviceDelta(delta, speed, startValue) end

---@class UnityEngine.UIElements.UnsignedIntegerField.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.UnsignedIntegerField.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.UnsignedIntegerField.UxmlFactory UnityEngine.UIElements.UnsignedIntegerField.UxmlFactory
CS.UnityEngine.UIElements.UnsignedIntegerField.UxmlFactory = UnityEngine.UIElements.UnsignedIntegerField.UxmlFactory

---@return UnityEngine.UIElements.UnsignedIntegerField.UxmlFactory
function UnityEngine.UIElements.UnsignedIntegerField.UxmlFactory.New() end

---@class UnityEngine.UIElements.UnsignedIntegerField.UxmlTraits : UnityEngine.UIElements.TextValueFieldTraits
UnityEngine.UIElements.UnsignedIntegerField.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.UnsignedIntegerField.UxmlTraits UnityEngine.UIElements.UnsignedIntegerField.UxmlTraits
CS.UnityEngine.UIElements.UnsignedIntegerField.UxmlTraits = UnityEngine.UIElements.UnsignedIntegerField.UxmlTraits

---@return UnityEngine.UIElements.UnsignedIntegerField.UxmlTraits
function UnityEngine.UIElements.UnsignedIntegerField.UxmlTraits.New() end

---@class UnityEngine.UIElements.UnsignedIntegerField.UnsignedIntegerInput : UnityEngine.UIElements.TextValueField.TextValueInput
UnityEngine.UIElements.UnsignedIntegerField.UnsignedIntegerInput = {}
---@alias CS.UnityEngine.UIElements.UnsignedIntegerField.UnsignedIntegerInput UnityEngine.UIElements.UnsignedIntegerField.UnsignedIntegerInput
CS.UnityEngine.UIElements.UnsignedIntegerField.UnsignedIntegerInput = UnityEngine.UIElements.UnsignedIntegerField.UnsignedIntegerInput

---@param delta UnityEngine.Vector3
---@param speed UnityEngine.UIElements.DeltaSpeed
---@param startValue number
function UnityEngine.UIElements.UnsignedIntegerField.UnsignedIntegerInput:ApplyInputDeviceDelta(delta, speed, startValue) end

---@class UnityEngine.UIElements.UnsignedLongField : UnityEngine.UIElements.TextValueField
---@field ussClassName string
---@field labelUssClassName string
---@field inputUssClassName string
---@field value UnityEngine.UIElements.UnsignedLongField -- infered from UnityEngine.UIElements.TextValueField`1[System.UInt64]
UnityEngine.UIElements.UnsignedLongField = {}
---@alias CS.UnityEngine.UIElements.UnsignedLongField UnityEngine.UIElements.UnsignedLongField
CS.UnityEngine.UIElements.UnsignedLongField = UnityEngine.UIElements.UnsignedLongField

---@overload fun() : UnityEngine.UIElements.UnsignedLongField
---@overload fun(maxLength: number) : UnityEngine.UIElements.UnsignedLongField
---@param label string
---@param maxLength number
---@return UnityEngine.UIElements.UnsignedLongField
function UnityEngine.UIElements.UnsignedLongField.New(label, maxLength) end
---@param delta UnityEngine.Vector3
---@param speed UnityEngine.UIElements.DeltaSpeed
---@param startValue number
function UnityEngine.UIElements.UnsignedLongField:ApplyInputDeviceDelta(delta, speed, startValue) end

---@class UnityEngine.UIElements.UnsignedLongField.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.UnsignedLongField.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.UnsignedLongField.UxmlFactory UnityEngine.UIElements.UnsignedLongField.UxmlFactory
CS.UnityEngine.UIElements.UnsignedLongField.UxmlFactory = UnityEngine.UIElements.UnsignedLongField.UxmlFactory

---@return UnityEngine.UIElements.UnsignedLongField.UxmlFactory
function UnityEngine.UIElements.UnsignedLongField.UxmlFactory.New() end

---@class UnityEngine.UIElements.UnsignedLongField.UxmlTraits : UnityEngine.UIElements.TextValueFieldTraits
UnityEngine.UIElements.UnsignedLongField.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.UnsignedLongField.UxmlTraits UnityEngine.UIElements.UnsignedLongField.UxmlTraits
CS.UnityEngine.UIElements.UnsignedLongField.UxmlTraits = UnityEngine.UIElements.UnsignedLongField.UxmlTraits

---@return UnityEngine.UIElements.UnsignedLongField.UxmlTraits
function UnityEngine.UIElements.UnsignedLongField.UxmlTraits.New() end

---@class UnityEngine.UIElements.UnsignedLongField.UnsignedLongInput : UnityEngine.UIElements.TextValueField.TextValueInput
UnityEngine.UIElements.UnsignedLongField.UnsignedLongInput = {}
---@alias CS.UnityEngine.UIElements.UnsignedLongField.UnsignedLongInput UnityEngine.UIElements.UnsignedLongField.UnsignedLongInput
CS.UnityEngine.UIElements.UnsignedLongField.UnsignedLongInput = UnityEngine.UIElements.UnsignedLongField.UnsignedLongInput

---@param delta UnityEngine.Vector3
---@param speed UnityEngine.UIElements.DeltaSpeed
---@param startValue number
function UnityEngine.UIElements.UnsignedLongField.UnsignedLongInput:ApplyInputDeviceDelta(delta, speed, startValue) end

---@class UnityEngine.UIElements.CountingBloomFilter : System.ValueType
UnityEngine.UIElements.CountingBloomFilter = {}
---@alias CS.UnityEngine.UIElements.CountingBloomFilter UnityEngine.UIElements.CountingBloomFilter
CS.UnityEngine.UIElements.CountingBloomFilter = UnityEngine.UIElements.CountingBloomFilter

---@param hash number
function UnityEngine.UIElements.CountingBloomFilter:InsertHash(hash) end
---@param hash number
function UnityEngine.UIElements.CountingBloomFilter:RemoveHash(hash) end
---@param hash number
---@return boolean
function UnityEngine.UIElements.CountingBloomFilter:ContainsHash(hash) end

---@class UnityEngine.UIElements.AncestorFilter : System.Object
UnityEngine.UIElements.AncestorFilter = {}
---@alias CS.UnityEngine.UIElements.AncestorFilter UnityEngine.UIElements.AncestorFilter
CS.UnityEngine.UIElements.AncestorFilter = UnityEngine.UIElements.AncestorFilter

---@return UnityEngine.UIElements.AncestorFilter
function UnityEngine.UIElements.AncestorFilter.New() end
---@param complexSel UnityEngine.UIElements.StyleComplexSelector
---@return boolean
function UnityEngine.UIElements.AncestorFilter:IsCandidate(complexSel) end
---@param element UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.AncestorFilter:PushElement(element) end
function UnityEngine.UIElements.AncestorFilter:PopElement() end

---@class UnityEngine.UIElements.Cursor : System.ValueType
---@field texture UnityEngine.Texture2D
---@field hotspot UnityEngine.Vector2
UnityEngine.UIElements.Cursor = {}
---@alias CS.UnityEngine.UIElements.Cursor UnityEngine.UIElements.Cursor
CS.UnityEngine.UIElements.Cursor = UnityEngine.UIElements.Cursor

---@overload fun(self: UnityEngine.UIElements.Cursor, obj: System.Object) : boolean
---@param other UnityEngine.UIElements.Cursor
---@return boolean
function UnityEngine.UIElements.Cursor:Equals(other) end
---@return number
function UnityEngine.UIElements.Cursor:GetHashCode() end
---@return string
function UnityEngine.UIElements.Cursor:ToString() end

---@class UnityEngine.UIElements.ICursorManager
UnityEngine.UIElements.ICursorManager = {}
---@alias CS.UnityEngine.UIElements.ICursorManager UnityEngine.UIElements.ICursorManager
CS.UnityEngine.UIElements.ICursorManager = UnityEngine.UIElements.ICursorManager

---@param cursor UnityEngine.UIElements.Cursor
function UnityEngine.UIElements.ICursorManager:SetCursor(cursor) end
function UnityEngine.UIElements.ICursorManager:ResetCursor() end

---@class UnityEngine.UIElements.CursorManager : System.Object
---@field isCursorOverriden boolean
UnityEngine.UIElements.CursorManager = {}
---@alias CS.UnityEngine.UIElements.CursorManager UnityEngine.UIElements.CursorManager
CS.UnityEngine.UIElements.CursorManager = UnityEngine.UIElements.CursorManager

---@return UnityEngine.UIElements.CursorManager
function UnityEngine.UIElements.CursorManager.New() end
---@param cursor UnityEngine.UIElements.Cursor
function UnityEngine.UIElements.CursorManager:SetCursor(cursor) end
function UnityEngine.UIElements.CursorManager:ResetCursor() end

---@class UnityEngine.UIElements.DefaultEventSystem : System.Object
---@field focusedPanel UnityEngine.UIElements.BaseRuntimePanel
UnityEngine.UIElements.DefaultEventSystem = {}
---@alias CS.UnityEngine.UIElements.DefaultEventSystem UnityEngine.UIElements.DefaultEventSystem
CS.UnityEngine.UIElements.DefaultEventSystem = UnityEngine.UIElements.DefaultEventSystem

---@return UnityEngine.UIElements.DefaultEventSystem
function UnityEngine.UIElements.DefaultEventSystem.New() end
function UnityEngine.UIElements.DefaultEventSystem:Reset() end
---@param updateMode UnityEngine.UIElements.DefaultEventSystem.UpdateMode
function UnityEngine.UIElements.DefaultEventSystem:Update(updateMode) end

---@class UnityEngine.UIElements.DefaultEventSystem.UpdateMode
---@field Always UnityEngine.UIElements.DefaultEventSystem.UpdateMode
---@field IgnoreIfAppNotFocused UnityEngine.UIElements.DefaultEventSystem.UpdateMode
UnityEngine.UIElements.DefaultEventSystem.UpdateMode = {}
---@alias CS.UnityEngine.UIElements.DefaultEventSystem.UpdateMode UnityEngine.UIElements.DefaultEventSystem.UpdateMode
CS.UnityEngine.UIElements.DefaultEventSystem.UpdateMode = UnityEngine.UIElements.DefaultEventSystem.UpdateMode


---@class UnityEngine.UIElements.DefaultEventSystem.FocusBasedEventSequenceContext : System.ValueType
UnityEngine.UIElements.DefaultEventSystem.FocusBasedEventSequenceContext = {}
---@alias CS.UnityEngine.UIElements.DefaultEventSystem.FocusBasedEventSequenceContext UnityEngine.UIElements.DefaultEventSystem.FocusBasedEventSequenceContext
CS.UnityEngine.UIElements.DefaultEventSystem.FocusBasedEventSequenceContext = UnityEngine.UIElements.DefaultEventSystem.FocusBasedEventSequenceContext

---@param es UnityEngine.UIElements.DefaultEventSystem
---@return UnityEngine.UIElements.DefaultEventSystem.FocusBasedEventSequenceContext
function UnityEngine.UIElements.DefaultEventSystem.FocusBasedEventSequenceContext.New(es) end
function UnityEngine.UIElements.DefaultEventSystem.FocusBasedEventSequenceContext:Dispose() end

---@class UnityEngine.UIElements.DefaultEventSystem.IInput
---@field penEventCount number
---@field touchCount number
---@field mousePresent boolean
---@field mousePosition UnityEngine.Vector3
---@field mouseScrollDelta UnityEngine.Vector2
---@field mouseButtonCount number
---@field anyKey boolean
---@field unscaledTime number
---@field doubleClickTime number
UnityEngine.UIElements.DefaultEventSystem.IInput = {}
---@alias CS.UnityEngine.UIElements.DefaultEventSystem.IInput UnityEngine.UIElements.DefaultEventSystem.IInput
CS.UnityEngine.UIElements.DefaultEventSystem.IInput = UnityEngine.UIElements.DefaultEventSystem.IInput

---@param button string
---@return boolean
function UnityEngine.UIElements.DefaultEventSystem.IInput:GetButtonDown(button) end
---@param axis string
---@return number
function UnityEngine.UIElements.DefaultEventSystem.IInput:GetAxisRaw(axis) end
function UnityEngine.UIElements.DefaultEventSystem.IInput:ResetPenEvents() end
function UnityEngine.UIElements.DefaultEventSystem.IInput:ClearLastPenContactEvent() end
---@param index number
---@return UnityEngine.PenData
function UnityEngine.UIElements.DefaultEventSystem.IInput:GetPenEvent(index) end
---@return UnityEngine.PenData
function UnityEngine.UIElements.DefaultEventSystem.IInput:GetLastPenContactEvent() end
---@param index number
---@return UnityEngine.Touch
function UnityEngine.UIElements.DefaultEventSystem.IInput:GetTouch(index) end
---@param button number
---@return boolean
function UnityEngine.UIElements.DefaultEventSystem.IInput:GetMouseButtonDown(button) end
---@param button number
---@return boolean
function UnityEngine.UIElements.DefaultEventSystem.IInput:GetMouseButtonUp(button) end

---@class UnityEngine.UIElements.DefaultEventSystem.Input : System.Object
---@field penEventCount number
---@field touchCount number
---@field mousePresent boolean
---@field mousePosition UnityEngine.Vector3
---@field mouseScrollDelta UnityEngine.Vector2
---@field mouseButtonCount number
---@field anyKey boolean
---@field unscaledTime number
---@field doubleClickTime number
UnityEngine.UIElements.DefaultEventSystem.Input = {}
---@alias CS.UnityEngine.UIElements.DefaultEventSystem.Input UnityEngine.UIElements.DefaultEventSystem.Input
CS.UnityEngine.UIElements.DefaultEventSystem.Input = UnityEngine.UIElements.DefaultEventSystem.Input

---@return UnityEngine.UIElements.DefaultEventSystem.Input
function UnityEngine.UIElements.DefaultEventSystem.Input.New() end
---@param button string
---@return boolean
function UnityEngine.UIElements.DefaultEventSystem.Input:GetButtonDown(button) end
---@param axis string
---@return number
function UnityEngine.UIElements.DefaultEventSystem.Input:GetAxisRaw(axis) end
function UnityEngine.UIElements.DefaultEventSystem.Input:ResetPenEvents() end
function UnityEngine.UIElements.DefaultEventSystem.Input:ClearLastPenContactEvent() end
---@param index number
---@return UnityEngine.PenData
function UnityEngine.UIElements.DefaultEventSystem.Input:GetPenEvent(index) end
---@return UnityEngine.PenData
function UnityEngine.UIElements.DefaultEventSystem.Input:GetLastPenContactEvent() end
---@param index number
---@return UnityEngine.Touch
function UnityEngine.UIElements.DefaultEventSystem.Input:GetTouch(index) end
---@param button number
---@return boolean
function UnityEngine.UIElements.DefaultEventSystem.Input:GetMouseButtonDown(button) end
---@param button number
---@return boolean
function UnityEngine.UIElements.DefaultEventSystem.Input:GetMouseButtonUp(button) end

---@class UnityEngine.UIElements.DefaultEventSystem.NoInput : System.Object
---@field touchCount number
---@field penEventCount number
---@field mousePresent boolean
---@field mousePosition UnityEngine.Vector3
---@field mouseScrollDelta UnityEngine.Vector2
---@field mouseButtonCount number
---@field anyKey boolean
---@field unscaledTime number
---@field doubleClickTime number
UnityEngine.UIElements.DefaultEventSystem.NoInput = {}
---@alias CS.UnityEngine.UIElements.DefaultEventSystem.NoInput UnityEngine.UIElements.DefaultEventSystem.NoInput
CS.UnityEngine.UIElements.DefaultEventSystem.NoInput = UnityEngine.UIElements.DefaultEventSystem.NoInput

---@return UnityEngine.UIElements.DefaultEventSystem.NoInput
function UnityEngine.UIElements.DefaultEventSystem.NoInput.New() end
---@param button string
---@return boolean
function UnityEngine.UIElements.DefaultEventSystem.NoInput:GetButtonDown(button) end
---@param axis string
---@return number
function UnityEngine.UIElements.DefaultEventSystem.NoInput:GetAxisRaw(axis) end
---@param index number
---@return UnityEngine.Touch
function UnityEngine.UIElements.DefaultEventSystem.NoInput:GetTouch(index) end
function UnityEngine.UIElements.DefaultEventSystem.NoInput:ResetPenEvents() end
function UnityEngine.UIElements.DefaultEventSystem.NoInput:ClearLastPenContactEvent() end
---@param index number
---@return UnityEngine.PenData
function UnityEngine.UIElements.DefaultEventSystem.NoInput:GetPenEvent(index) end
---@return UnityEngine.PenData
function UnityEngine.UIElements.DefaultEventSystem.NoInput:GetLastPenContactEvent() end
---@param button number
---@return boolean
function UnityEngine.UIElements.DefaultEventSystem.NoInput:GetMouseButtonDown(button) end
---@param button number
---@return boolean
function UnityEngine.UIElements.DefaultEventSystem.NoInput:GetMouseButtonUp(button) end

---@class UnityEngine.UIElements.DisposeHelper : System.Object
UnityEngine.UIElements.DisposeHelper = {}
---@alias CS.UnityEngine.UIElements.DisposeHelper UnityEngine.UIElements.DisposeHelper
CS.UnityEngine.UIElements.DisposeHelper = UnityEngine.UIElements.DisposeHelper

---@return UnityEngine.UIElements.DisposeHelper
function UnityEngine.UIElements.DisposeHelper.New() end
---@param disposable System.IDisposable
function UnityEngine.UIElements.DisposeHelper.NotifyMissingDispose(disposable) end
---@param disposable System.IDisposable
function UnityEngine.UIElements.DisposeHelper.NotifyDisposedUsed(disposable) end

---@class UnityEngine.UIElements.BaseReorderableDragAndDropController : System.Object
---@field enableReordering boolean
UnityEngine.UIElements.BaseReorderableDragAndDropController = {}
---@alias CS.UnityEngine.UIElements.BaseReorderableDragAndDropController UnityEngine.UIElements.BaseReorderableDragAndDropController
CS.UnityEngine.UIElements.BaseReorderableDragAndDropController = UnityEngine.UIElements.BaseReorderableDragAndDropController

---@return System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.BaseReorderableDragAndDropController:GetSortedSelectedIds() end
---@param itemIds System.Collections.Generic.IEnumerable
---@return boolean
function UnityEngine.UIElements.BaseReorderableDragAndDropController:CanStartDrag(itemIds) end
---@param itemIds System.Collections.Generic.IEnumerable
---@param skipText boolean
---@return UnityEngine.UIElements.StartDragArgs
function UnityEngine.UIElements.BaseReorderableDragAndDropController:SetupDragAndDrop(itemIds, skipText) end
---@param args UnityEngine.UIElements.IListDragAndDropArgs
---@return UnityEngine.UIElements.DragVisualMode
function UnityEngine.UIElements.BaseReorderableDragAndDropController:HandleDragAndDrop(args) end
---@param args UnityEngine.UIElements.IListDragAndDropArgs
function UnityEngine.UIElements.BaseReorderableDragAndDropController:OnDrop(args) end
function UnityEngine.UIElements.BaseReorderableDragAndDropController:DragCleanup() end
---@param item UnityEngine.UIElements.ReusableCollectionItem
---@param pointerPosition UnityEngine.Vector2
function UnityEngine.UIElements.BaseReorderableDragAndDropController:HandleAutoExpand(item, pointerPosition) end

---@class UnityEngine.UIElements.DragAndDropUtility : System.Object
UnityEngine.UIElements.DragAndDropUtility = {}
---@alias CS.UnityEngine.UIElements.DragAndDropUtility UnityEngine.UIElements.DragAndDropUtility
CS.UnityEngine.UIElements.DragAndDropUtility = UnityEngine.UIElements.DragAndDropUtility


---@class UnityEngine.UIElements.DefaultDragAndDropClient : UnityEngine.UIElements.DragAndDropData
---@field visualMode UnityEngine.UIElements.DragVisualMode
---@field source System.Object
---@field unityObjectReferences System.Collections.Generic.IEnumerable
---@field data UnityEngine.UIElements.DragAndDropData
UnityEngine.UIElements.DefaultDragAndDropClient = {}
---@alias CS.UnityEngine.UIElements.DefaultDragAndDropClient UnityEngine.UIElements.DefaultDragAndDropClient
CS.UnityEngine.UIElements.DefaultDragAndDropClient = UnityEngine.UIElements.DefaultDragAndDropClient

---@return UnityEngine.UIElements.DefaultDragAndDropClient
function UnityEngine.UIElements.DefaultDragAndDropClient.New() end
---@param key string
---@return System.Object
function UnityEngine.UIElements.DefaultDragAndDropClient:GetGenericData(key) end
---@param key string
---@param value System.Object
function UnityEngine.UIElements.DefaultDragAndDropClient:SetGenericData(key, value) end
---@param args UnityEngine.UIElements.StartDragArgs
---@param pointerPosition UnityEngine.Vector3
function UnityEngine.UIElements.DefaultDragAndDropClient:StartDrag(args, pointerPosition) end
---@param pointerPosition UnityEngine.Vector3
function UnityEngine.UIElements.DefaultDragAndDropClient:UpdateDrag(pointerPosition) end
function UnityEngine.UIElements.DefaultDragAndDropClient:AcceptDrag() end
---@param mode UnityEngine.UIElements.DragVisualMode
function UnityEngine.UIElements.DefaultDragAndDropClient:SetVisualMode(mode) end
function UnityEngine.UIElements.DefaultDragAndDropClient:DragCleanup() end

---@class UnityEngine.UIElements.DragEventsProcessor : System.Object
UnityEngine.UIElements.DragEventsProcessor = {}
---@alias CS.UnityEngine.UIElements.DragEventsProcessor UnityEngine.UIElements.DragEventsProcessor
CS.UnityEngine.UIElements.DragEventsProcessor = UnityEngine.UIElements.DragEventsProcessor


---@class UnityEngine.UIElements.DragEventsProcessor.DragState
---@field None UnityEngine.UIElements.DragEventsProcessor.DragState
---@field CanStartDrag UnityEngine.UIElements.DragEventsProcessor.DragState
---@field Dragging UnityEngine.UIElements.DragEventsProcessor.DragState
UnityEngine.UIElements.DragEventsProcessor.DragState = {}
---@alias CS.UnityEngine.UIElements.DragEventsProcessor.DragState UnityEngine.UIElements.DragEventsProcessor.DragState
CS.UnityEngine.UIElements.DragEventsProcessor.DragState = UnityEngine.UIElements.DragEventsProcessor.DragState


---@class UnityEngine.UIElements.ICollectionDragAndDropController
UnityEngine.UIElements.ICollectionDragAndDropController = {}
---@alias CS.UnityEngine.UIElements.ICollectionDragAndDropController UnityEngine.UIElements.ICollectionDragAndDropController
CS.UnityEngine.UIElements.ICollectionDragAndDropController = UnityEngine.UIElements.ICollectionDragAndDropController


---@class UnityEngine.UIElements.IDragAndDrop
---@field data UnityEngine.UIElements.DragAndDropData
UnityEngine.UIElements.IDragAndDrop = {}
---@alias CS.UnityEngine.UIElements.IDragAndDrop UnityEngine.UIElements.IDragAndDrop
CS.UnityEngine.UIElements.IDragAndDrop = UnityEngine.UIElements.IDragAndDrop

---@param args UnityEngine.UIElements.StartDragArgs
---@param pointerPosition UnityEngine.Vector3
function UnityEngine.UIElements.IDragAndDrop:StartDrag(args, pointerPosition) end
---@param pointerPosition UnityEngine.Vector3
function UnityEngine.UIElements.IDragAndDrop:UpdateDrag(pointerPosition) end
function UnityEngine.UIElements.IDragAndDrop:AcceptDrag() end
function UnityEngine.UIElements.IDragAndDrop:DragCleanup() end
---@param visualMode UnityEngine.UIElements.DragVisualMode
function UnityEngine.UIElements.IDragAndDrop:SetVisualMode(visualMode) end

---@class UnityEngine.UIElements.IDragAndDropData
---@field userData System.Object
---@field unityObjectReferences System.Collections.Generic.IEnumerable
UnityEngine.UIElements.IDragAndDropData = {}
---@alias CS.UnityEngine.UIElements.IDragAndDropData UnityEngine.UIElements.IDragAndDropData
CS.UnityEngine.UIElements.IDragAndDropData = UnityEngine.UIElements.IDragAndDropData

---@param key string
---@return System.Object
function UnityEngine.UIElements.IDragAndDropData:GetGenericData(key) end

---@class UnityEngine.UIElements.DragAndDropData : System.Object
---@field source System.Object
---@field visualMode UnityEngine.UIElements.DragVisualMode
---@field unityObjectReferences System.Collections.Generic.IEnumerable
UnityEngine.UIElements.DragAndDropData = {}
---@alias CS.UnityEngine.UIElements.DragAndDropData UnityEngine.UIElements.DragAndDropData
CS.UnityEngine.UIElements.DragAndDropData = UnityEngine.UIElements.DragAndDropData

---@param key string
---@return System.Object
function UnityEngine.UIElements.DragAndDropData:GetGenericData(key) end
---@param key string
---@param data System.Object
function UnityEngine.UIElements.DragAndDropData:SetGenericData(key, data) end

---@class UnityEngine.UIElements.IListDragAndDropArgs
---@field target System.Object
---@field insertAtIndex number
---@field parentId number
---@field childIndex number
---@field dragAndDropData UnityEngine.UIElements.DragAndDropData
---@field dragAndDropPosition UnityEngine.UIElements.DragAndDropPosition
UnityEngine.UIElements.IListDragAndDropArgs = {}
---@alias CS.UnityEngine.UIElements.IListDragAndDropArgs UnityEngine.UIElements.IListDragAndDropArgs
CS.UnityEngine.UIElements.IListDragAndDropArgs = UnityEngine.UIElements.IListDragAndDropArgs


---@class UnityEngine.UIElements.DragAndDropArgs : System.ValueType
---@field target System.Object
---@field insertAtIndex number
---@field parentId number
---@field childIndex number
---@field dragAndDropPosition UnityEngine.UIElements.DragAndDropPosition
---@field dragAndDropData UnityEngine.UIElements.DragAndDropData
UnityEngine.UIElements.DragAndDropArgs = {}
---@alias CS.UnityEngine.UIElements.DragAndDropArgs UnityEngine.UIElements.DragAndDropArgs
CS.UnityEngine.UIElements.DragAndDropArgs = UnityEngine.UIElements.DragAndDropArgs


---@class UnityEngine.UIElements.DragAndDropPosition
---@field OverItem UnityEngine.UIElements.DragAndDropPosition
---@field BetweenItems UnityEngine.UIElements.DragAndDropPosition
---@field OutsideItems UnityEngine.UIElements.DragAndDropPosition
UnityEngine.UIElements.DragAndDropPosition = {}
---@alias CS.UnityEngine.UIElements.DragAndDropPosition UnityEngine.UIElements.DragAndDropPosition
CS.UnityEngine.UIElements.DragAndDropPosition = UnityEngine.UIElements.DragAndDropPosition


---@class UnityEngine.UIElements.IDragAndDropController
UnityEngine.UIElements.IDragAndDropController = {}
---@alias CS.UnityEngine.UIElements.IDragAndDropController UnityEngine.UIElements.IDragAndDropController
CS.UnityEngine.UIElements.IDragAndDropController = UnityEngine.UIElements.IDragAndDropController

---@param itemIds System.Collections.Generic.IEnumerable
---@return boolean
function UnityEngine.UIElements.IDragAndDropController:CanStartDrag(itemIds) end
---@param itemIds System.Collections.Generic.IEnumerable
---@param skipText boolean
---@return UnityEngine.UIElements.StartDragArgs
function UnityEngine.UIElements.IDragAndDropController:SetupDragAndDrop(itemIds, skipText) end
---@param args TArgs
---@return UnityEngine.UIElements.DragVisualMode
function UnityEngine.UIElements.IDragAndDropController:HandleDragAndDrop(args) end
---@param args TArgs
function UnityEngine.UIElements.IDragAndDropController:OnDrop(args) end
function UnityEngine.UIElements.IDragAndDropController:DragCleanup() end
---@param item UnityEngine.UIElements.ReusableCollectionItem
---@param pointerPosition UnityEngine.Vector2
function UnityEngine.UIElements.IDragAndDropController:HandleAutoExpand(item, pointerPosition) end
---@return System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.IDragAndDropController:GetSortedSelectedIds() end

---@class UnityEngine.UIElements.DragVisualMode
---@field None UnityEngine.UIElements.DragVisualMode
---@field Copy UnityEngine.UIElements.DragVisualMode
---@field Move UnityEngine.UIElements.DragVisualMode
---@field Rejected UnityEngine.UIElements.DragVisualMode
UnityEngine.UIElements.DragVisualMode = {}
---@alias CS.UnityEngine.UIElements.DragVisualMode UnityEngine.UIElements.DragVisualMode
CS.UnityEngine.UIElements.DragVisualMode = UnityEngine.UIElements.DragVisualMode


---@class UnityEngine.UIElements.CanStartDragArgs : System.ValueType
---@field draggedElement UnityEngine.UIElements.VisualElement
---@field id number
---@field selectedIds System.Collections.Generic.IEnumerable
UnityEngine.UIElements.CanStartDragArgs = {}
---@alias CS.UnityEngine.UIElements.CanStartDragArgs UnityEngine.UIElements.CanStartDragArgs
CS.UnityEngine.UIElements.CanStartDragArgs = UnityEngine.UIElements.CanStartDragArgs


---@class UnityEngine.UIElements.SetupDragAndDropArgs : System.ValueType
---@field draggedElement UnityEngine.UIElements.VisualElement
---@field selectedIds System.Collections.Generic.IEnumerable
---@field startDragArgs UnityEngine.UIElements.StartDragArgs
UnityEngine.UIElements.SetupDragAndDropArgs = {}
---@alias CS.UnityEngine.UIElements.SetupDragAndDropArgs UnityEngine.UIElements.SetupDragAndDropArgs
CS.UnityEngine.UIElements.SetupDragAndDropArgs = UnityEngine.UIElements.SetupDragAndDropArgs


---@class UnityEngine.UIElements.HandleDragAndDropArgs : System.ValueType
---@field position UnityEngine.Vector2
---@field target System.Object
---@field insertAtIndex number
---@field parentId number
---@field childIndex number
---@field dropPosition UnityEngine.UIElements.DragAndDropPosition
---@field dragAndDropData UnityEngine.UIElements.DragAndDropData
UnityEngine.UIElements.HandleDragAndDropArgs = {}
---@alias CS.UnityEngine.UIElements.HandleDragAndDropArgs UnityEngine.UIElements.HandleDragAndDropArgs
CS.UnityEngine.UIElements.HandleDragAndDropArgs = UnityEngine.UIElements.HandleDragAndDropArgs


---@class UnityEngine.UIElements.StartDragArgs : System.ValueType
---@field title string
---@field visualMode UnityEngine.UIElements.DragVisualMode
UnityEngine.UIElements.StartDragArgs = {}
---@alias CS.UnityEngine.UIElements.StartDragArgs UnityEngine.UIElements.StartDragArgs
CS.UnityEngine.UIElements.StartDragArgs = UnityEngine.UIElements.StartDragArgs

---@param title string
---@param visualMode UnityEngine.UIElements.DragVisualMode
---@return UnityEngine.UIElements.StartDragArgs
function UnityEngine.UIElements.StartDragArgs.New(title, visualMode) end
---@param key string
---@param data System.Object
function UnityEngine.UIElements.StartDragArgs:SetGenericData(key, data) end
---@param references System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.StartDragArgs:SetUnityObjectReferences(references) end

---@class UnityEngine.UIElements.IReorderable
---@field enableReordering boolean
UnityEngine.UIElements.IReorderable = {}
---@alias CS.UnityEngine.UIElements.IReorderable UnityEngine.UIElements.IReorderable
CS.UnityEngine.UIElements.IReorderable = UnityEngine.UIElements.IReorderable


---@class UnityEngine.UIElements.ListViewDragger : UnityEngine.UIElements.DragEventsProcessor
---@field dragAndDropController UnityEngine.UIElements.ICollectionDragAndDropController
UnityEngine.UIElements.ListViewDragger = {}
---@alias CS.UnityEngine.UIElements.ListViewDragger UnityEngine.UIElements.ListViewDragger
CS.UnityEngine.UIElements.ListViewDragger = UnityEngine.UIElements.ListViewDragger

---@param listView UnityEngine.UIElements.BaseVerticalCollectionView
---@return UnityEngine.UIElements.ListViewDragger
function UnityEngine.UIElements.ListViewDragger.New(listView) end

---@class UnityEngine.UIElements.ListViewDragger.DragPosition : System.ValueType
---@field insertAtIndex number
---@field parentId number
---@field childIndex number
---@field recycledItem UnityEngine.UIElements.ReusableCollectionItem
---@field dropPosition UnityEngine.UIElements.DragAndDropPosition
UnityEngine.UIElements.ListViewDragger.DragPosition = {}
---@alias CS.UnityEngine.UIElements.ListViewDragger.DragPosition UnityEngine.UIElements.ListViewDragger.DragPosition
CS.UnityEngine.UIElements.ListViewDragger.DragPosition = UnityEngine.UIElements.ListViewDragger.DragPosition

---@overload fun(self: UnityEngine.UIElements.ListViewDragger.DragPosition, other: UnityEngine.UIElements.ListViewDragger.DragPosition) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.ListViewDragger.DragPosition:Equals(obj) end
---@return number
function UnityEngine.UIElements.ListViewDragger.DragPosition:GetHashCode() end

---@class UnityEngine.UIElements.ListViewDraggerExtension : System.Object
UnityEngine.UIElements.ListViewDraggerExtension = {}
---@alias CS.UnityEngine.UIElements.ListViewDraggerExtension UnityEngine.UIElements.ListViewDraggerExtension
CS.UnityEngine.UIElements.ListViewDraggerExtension = UnityEngine.UIElements.ListViewDraggerExtension

---@param listView UnityEngine.UIElements.BaseVerticalCollectionView
---@param id number
---@return UnityEngine.UIElements.ReusableCollectionItem
function UnityEngine.UIElements.ListViewDraggerExtension.GetRecycledItemFromId(listView, id) end
---@param listView UnityEngine.UIElements.BaseVerticalCollectionView
---@param index number
---@return UnityEngine.UIElements.ReusableCollectionItem
function UnityEngine.UIElements.ListViewDraggerExtension.GetRecycledItemFromIndex(listView, index) end

---@class UnityEngine.UIElements.ListViewDraggerAnimated : UnityEngine.UIElements.ListViewDragger
---@field isDragging boolean
---@field draggedItem UnityEngine.UIElements.ReusableCollectionItem
UnityEngine.UIElements.ListViewDraggerAnimated = {}
---@alias CS.UnityEngine.UIElements.ListViewDraggerAnimated UnityEngine.UIElements.ListViewDraggerAnimated
CS.UnityEngine.UIElements.ListViewDraggerAnimated = UnityEngine.UIElements.ListViewDraggerAnimated

---@param listView UnityEngine.UIElements.BaseVerticalCollectionView
---@return UnityEngine.UIElements.ListViewDraggerAnimated
function UnityEngine.UIElements.ListViewDraggerAnimated.New(listView) end

---@class UnityEngine.UIElements.ListViewReorderableDragAndDropController : UnityEngine.UIElements.BaseReorderableDragAndDropController
UnityEngine.UIElements.ListViewReorderableDragAndDropController = {}
---@alias CS.UnityEngine.UIElements.ListViewReorderableDragAndDropController UnityEngine.UIElements.ListViewReorderableDragAndDropController
CS.UnityEngine.UIElements.ListViewReorderableDragAndDropController = UnityEngine.UIElements.ListViewReorderableDragAndDropController

---@param view UnityEngine.UIElements.BaseListView
---@return UnityEngine.UIElements.ListViewReorderableDragAndDropController
function UnityEngine.UIElements.ListViewReorderableDragAndDropController.New(view) end
---@param args UnityEngine.UIElements.IListDragAndDropArgs
---@return UnityEngine.UIElements.DragVisualMode
function UnityEngine.UIElements.ListViewReorderableDragAndDropController:HandleDragAndDrop(args) end
---@param args UnityEngine.UIElements.IListDragAndDropArgs
function UnityEngine.UIElements.ListViewReorderableDragAndDropController:OnDrop(args) end

---@class UnityEngine.UIElements.TreeViewReorderableDragAndDropController : UnityEngine.UIElements.BaseReorderableDragAndDropController
UnityEngine.UIElements.TreeViewReorderableDragAndDropController = {}
---@alias CS.UnityEngine.UIElements.TreeViewReorderableDragAndDropController UnityEngine.UIElements.TreeViewReorderableDragAndDropController
CS.UnityEngine.UIElements.TreeViewReorderableDragAndDropController = UnityEngine.UIElements.TreeViewReorderableDragAndDropController

---@param view UnityEngine.UIElements.BaseTreeView
---@return UnityEngine.UIElements.TreeViewReorderableDragAndDropController
function UnityEngine.UIElements.TreeViewReorderableDragAndDropController.New(view) end
---@param itemIds System.Collections.Generic.IEnumerable
---@param skipText boolean
---@return UnityEngine.UIElements.StartDragArgs
function UnityEngine.UIElements.TreeViewReorderableDragAndDropController:SetupDragAndDrop(itemIds, skipText) end
---@param args UnityEngine.UIElements.IListDragAndDropArgs
---@return UnityEngine.UIElements.DragVisualMode
function UnityEngine.UIElements.TreeViewReorderableDragAndDropController:HandleDragAndDrop(args) end
---@param args UnityEngine.UIElements.IListDragAndDropArgs
function UnityEngine.UIElements.TreeViewReorderableDragAndDropController:OnDrop(args) end
function UnityEngine.UIElements.TreeViewReorderableDragAndDropController:DragCleanup() end
---@param item UnityEngine.UIElements.ReusableCollectionItem
---@param pointerPosition UnityEngine.Vector2
function UnityEngine.UIElements.TreeViewReorderableDragAndDropController:HandleAutoExpand(item, pointerPosition) end

---@class UnityEngine.UIElements.TreeViewReorderableDragAndDropController.DropData : System.Object
---@field expandedIdsBeforeDrag System.Int32[]
---@field draggedIds System.Int32[]
---@field lastItemId number
---@field expandItemBeginTimerMs number
---@field expandItemBeginPosition UnityEngine.Vector2
UnityEngine.UIElements.TreeViewReorderableDragAndDropController.DropData = {}
---@alias CS.UnityEngine.UIElements.TreeViewReorderableDragAndDropController.DropData UnityEngine.UIElements.TreeViewReorderableDragAndDropController.DropData
CS.UnityEngine.UIElements.TreeViewReorderableDragAndDropController.DropData = UnityEngine.UIElements.TreeViewReorderableDragAndDropController.DropData

---@return UnityEngine.UIElements.TreeViewReorderableDragAndDropController.DropData
function UnityEngine.UIElements.TreeViewReorderableDragAndDropController.DropData.New() end

---@class UnityEngine.UIElements.DropdownMenuEventInfo : System.Object
---@field modifiers UnityEngine.EventModifiers
---@field mousePosition UnityEngine.Vector2
---@field localMousePosition UnityEngine.Vector2
UnityEngine.UIElements.DropdownMenuEventInfo = {}
---@alias CS.UnityEngine.UIElements.DropdownMenuEventInfo UnityEngine.UIElements.DropdownMenuEventInfo
CS.UnityEngine.UIElements.DropdownMenuEventInfo = UnityEngine.UIElements.DropdownMenuEventInfo

---@param e UnityEngine.UIElements.EventBase
---@return UnityEngine.UIElements.DropdownMenuEventInfo
function UnityEngine.UIElements.DropdownMenuEventInfo.New(e) end

---@class UnityEngine.UIElements.DropdownMenuItem : System.Object
UnityEngine.UIElements.DropdownMenuItem = {}
---@alias CS.UnityEngine.UIElements.DropdownMenuItem UnityEngine.UIElements.DropdownMenuItem
CS.UnityEngine.UIElements.DropdownMenuItem = UnityEngine.UIElements.DropdownMenuItem


---@class UnityEngine.UIElements.DropdownMenuSeparator : UnityEngine.UIElements.DropdownMenuItem
---@field subMenuPath string
UnityEngine.UIElements.DropdownMenuSeparator = {}
---@alias CS.UnityEngine.UIElements.DropdownMenuSeparator UnityEngine.UIElements.DropdownMenuSeparator
CS.UnityEngine.UIElements.DropdownMenuSeparator = UnityEngine.UIElements.DropdownMenuSeparator

---@param subMenuPath string
---@return UnityEngine.UIElements.DropdownMenuSeparator
function UnityEngine.UIElements.DropdownMenuSeparator.New(subMenuPath) end

---@class UnityEngine.UIElements.DropdownMenuAction : UnityEngine.UIElements.DropdownMenuItem
---@field name string
---@field status UnityEngine.UIElements.DropdownMenuAction.Status
---@field eventInfo UnityEngine.UIElements.DropdownMenuEventInfo
---@field userData System.Object
UnityEngine.UIElements.DropdownMenuAction = {}
---@alias CS.UnityEngine.UIElements.DropdownMenuAction UnityEngine.UIElements.DropdownMenuAction
CS.UnityEngine.UIElements.DropdownMenuAction = UnityEngine.UIElements.DropdownMenuAction

---@param actionName string
---@param actionCallback System.Action
---@param actionStatusCallback System.Func
---@param userData System.Object
---@return UnityEngine.UIElements.DropdownMenuAction
function UnityEngine.UIElements.DropdownMenuAction.New(actionName, actionCallback, actionStatusCallback, userData) end
---@param a UnityEngine.UIElements.DropdownMenuAction
---@return UnityEngine.UIElements.DropdownMenuAction.Status
function UnityEngine.UIElements.DropdownMenuAction.AlwaysEnabled(a) end
---@param a UnityEngine.UIElements.DropdownMenuAction
---@return UnityEngine.UIElements.DropdownMenuAction.Status
function UnityEngine.UIElements.DropdownMenuAction.AlwaysDisabled(a) end
---@param eventInfo UnityEngine.UIElements.DropdownMenuEventInfo
function UnityEngine.UIElements.DropdownMenuAction:UpdateActionStatus(eventInfo) end
function UnityEngine.UIElements.DropdownMenuAction:Execute() end

---@class UnityEngine.UIElements.DropdownMenuAction.Status
---@field None UnityEngine.UIElements.DropdownMenuAction.Status
---@field Normal UnityEngine.UIElements.DropdownMenuAction.Status
---@field Disabled UnityEngine.UIElements.DropdownMenuAction.Status
---@field Checked UnityEngine.UIElements.DropdownMenuAction.Status
---@field Hidden UnityEngine.UIElements.DropdownMenuAction.Status
UnityEngine.UIElements.DropdownMenuAction.Status = {}
---@alias CS.UnityEngine.UIElements.DropdownMenuAction.Status UnityEngine.UIElements.DropdownMenuAction.Status
CS.UnityEngine.UIElements.DropdownMenuAction.Status = UnityEngine.UIElements.DropdownMenuAction.Status


---@class UnityEngine.UIElements.DropdownMenu : System.Object
UnityEngine.UIElements.DropdownMenu = {}
---@alias CS.UnityEngine.UIElements.DropdownMenu UnityEngine.UIElements.DropdownMenu
CS.UnityEngine.UIElements.DropdownMenu = UnityEngine.UIElements.DropdownMenu

---@return UnityEngine.UIElements.DropdownMenu
function UnityEngine.UIElements.DropdownMenu.New() end
---@return System.Collections.Generic.List
function UnityEngine.UIElements.DropdownMenu:MenuItems() end
---@overload fun(self: UnityEngine.UIElements.DropdownMenu, actionName: string, action: System.Action, actionStatusCallback: System.Func, userData: System.Object)
---@param actionName string
---@param action System.Action
---@param status UnityEngine.UIElements.DropdownMenuAction.Status
function UnityEngine.UIElements.DropdownMenu:AppendAction(actionName, action, status) end
---@overload fun(self: UnityEngine.UIElements.DropdownMenu, atIndex: number, actionName: string, action: System.Action, actionStatusCallback: System.Func, userData: System.Object)
---@param atIndex number
---@param actionName string
---@param action System.Action
---@param status UnityEngine.UIElements.DropdownMenuAction.Status
function UnityEngine.UIElements.DropdownMenu:InsertAction(atIndex, actionName, action, status) end
---@param subMenuPath string
function UnityEngine.UIElements.DropdownMenu:AppendSeparator(subMenuPath) end
---@param subMenuPath string
---@param atIndex number
function UnityEngine.UIElements.DropdownMenu:InsertSeparator(subMenuPath, atIndex) end
---@param index number
function UnityEngine.UIElements.DropdownMenu:RemoveItemAt(index) end
function UnityEngine.UIElements.DropdownMenu:ClearItems() end
---@param e UnityEngine.UIElements.EventBase
function UnityEngine.UIElements.DropdownMenu:PrepareForDisplay(e) end

---@class UnityEngine.UIElements.DropdownUtility : System.Object
UnityEngine.UIElements.DropdownUtility = {}
---@alias CS.UnityEngine.UIElements.DropdownUtility UnityEngine.UIElements.DropdownUtility
CS.UnityEngine.UIElements.DropdownUtility = UnityEngine.UIElements.DropdownUtility


---@class UnityEngine.UIElements.DispatchMode
---@field Default UnityEngine.UIElements.DispatchMode
---@field Queued UnityEngine.UIElements.DispatchMode
---@field Immediate UnityEngine.UIElements.DispatchMode
UnityEngine.UIElements.DispatchMode = {}
---@alias CS.UnityEngine.UIElements.DispatchMode UnityEngine.UIElements.DispatchMode
CS.UnityEngine.UIElements.DispatchMode = UnityEngine.UIElements.DispatchMode


---@class UnityEngine.UIElements.EventDispatcherGate : System.ValueType
UnityEngine.UIElements.EventDispatcherGate = {}
---@alias CS.UnityEngine.UIElements.EventDispatcherGate UnityEngine.UIElements.EventDispatcherGate
CS.UnityEngine.UIElements.EventDispatcherGate = UnityEngine.UIElements.EventDispatcherGate

---@param d UnityEngine.UIElements.EventDispatcher
---@return UnityEngine.UIElements.EventDispatcherGate
function UnityEngine.UIElements.EventDispatcherGate.New(d) end
function UnityEngine.UIElements.EventDispatcherGate:Dispose() end
---@overload fun(self: UnityEngine.UIElements.EventDispatcherGate, other: UnityEngine.UIElements.EventDispatcherGate) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.EventDispatcherGate:Equals(obj) end
---@return number
function UnityEngine.UIElements.EventDispatcherGate:GetHashCode() end

---@class UnityEngine.UIElements.EventDispatcher : System.Object
UnityEngine.UIElements.EventDispatcher = {}
---@alias CS.UnityEngine.UIElements.EventDispatcher UnityEngine.UIElements.EventDispatcher
CS.UnityEngine.UIElements.EventDispatcher = UnityEngine.UIElements.EventDispatcher


---@class UnityEngine.UIElements.EventDispatcher.EventRecord : System.ValueType
---@field m_Event UnityEngine.UIElements.EventBase
---@field m_Panel UnityEngine.UIElements.IPanel
---@field m_StackTrace System.Diagnostics.StackTrace
---@field stackTrace string
UnityEngine.UIElements.EventDispatcher.EventRecord = {}
---@alias CS.UnityEngine.UIElements.EventDispatcher.EventRecord UnityEngine.UIElements.EventDispatcher.EventRecord
CS.UnityEngine.UIElements.EventDispatcher.EventRecord = UnityEngine.UIElements.EventDispatcher.EventRecord


---@class UnityEngine.UIElements.EventDispatcher.DispatchContext : System.ValueType
---@field m_GateCount number
---@field m_Queue System.Collections.Generic.Queue
UnityEngine.UIElements.EventDispatcher.DispatchContext = {}
---@alias CS.UnityEngine.UIElements.EventDispatcher.DispatchContext UnityEngine.UIElements.EventDispatcher.DispatchContext
CS.UnityEngine.UIElements.EventDispatcher.DispatchContext = UnityEngine.UIElements.EventDispatcher.DispatchContext


---@class UnityEngine.UIElements.IPointerCaptureEvent
UnityEngine.UIElements.IPointerCaptureEvent = {}
---@alias CS.UnityEngine.UIElements.IPointerCaptureEvent UnityEngine.UIElements.IPointerCaptureEvent
CS.UnityEngine.UIElements.IPointerCaptureEvent = UnityEngine.UIElements.IPointerCaptureEvent


---@class UnityEngine.UIElements.IPointerCaptureEventInternal
---@field pointerId number
UnityEngine.UIElements.IPointerCaptureEventInternal = {}
---@alias CS.UnityEngine.UIElements.IPointerCaptureEventInternal UnityEngine.UIElements.IPointerCaptureEventInternal
CS.UnityEngine.UIElements.IPointerCaptureEventInternal = UnityEngine.UIElements.IPointerCaptureEventInternal


---@class UnityEngine.UIElements.PointerCaptureEventBase : UnityEngine.UIElements.EventBase[T]
---@field relatedTarget UnityEngine.UIElements.IEventHandler
---@field pointerId number
UnityEngine.UIElements.PointerCaptureEventBase = {}
---@alias CS.UnityEngine.UIElements.PointerCaptureEventBase UnityEngine.UIElements.PointerCaptureEventBase
CS.UnityEngine.UIElements.PointerCaptureEventBase = UnityEngine.UIElements.PointerCaptureEventBase

---@param target UnityEngine.UIElements.IEventHandler
---@param relatedTarget UnityEngine.UIElements.IEventHandler
---@param pointerId number
---@return T
function UnityEngine.UIElements.PointerCaptureEventBase.GetPooled(target, relatedTarget, pointerId) end

---@class UnityEngine.UIElements.PointerCaptureOutEvent : UnityEngine.UIElements.PointerCaptureEventBase
UnityEngine.UIElements.PointerCaptureOutEvent = {}
---@alias CS.UnityEngine.UIElements.PointerCaptureOutEvent UnityEngine.UIElements.PointerCaptureOutEvent
CS.UnityEngine.UIElements.PointerCaptureOutEvent = UnityEngine.UIElements.PointerCaptureOutEvent

---@return UnityEngine.UIElements.PointerCaptureOutEvent
function UnityEngine.UIElements.PointerCaptureOutEvent.New() end

---@class UnityEngine.UIElements.PointerCaptureEvent : UnityEngine.UIElements.PointerCaptureEventBase
UnityEngine.UIElements.PointerCaptureEvent = {}
---@alias CS.UnityEngine.UIElements.PointerCaptureEvent UnityEngine.UIElements.PointerCaptureEvent
CS.UnityEngine.UIElements.PointerCaptureEvent = UnityEngine.UIElements.PointerCaptureEvent

---@return UnityEngine.UIElements.PointerCaptureEvent
function UnityEngine.UIElements.PointerCaptureEvent.New() end

---@class UnityEngine.UIElements.IMouseCaptureEvent
UnityEngine.UIElements.IMouseCaptureEvent = {}
---@alias CS.UnityEngine.UIElements.IMouseCaptureEvent UnityEngine.UIElements.IMouseCaptureEvent
CS.UnityEngine.UIElements.IMouseCaptureEvent = UnityEngine.UIElements.IMouseCaptureEvent


---@class UnityEngine.UIElements.MouseCaptureEventBase : UnityEngine.UIElements.PointerCaptureEventBase[T]
---@field relatedTarget UnityEngine.UIElements.IEventHandler
UnityEngine.UIElements.MouseCaptureEventBase = {}
---@alias CS.UnityEngine.UIElements.MouseCaptureEventBase UnityEngine.UIElements.MouseCaptureEventBase
CS.UnityEngine.UIElements.MouseCaptureEventBase = UnityEngine.UIElements.MouseCaptureEventBase

---@param target UnityEngine.UIElements.IEventHandler
---@param relatedTarget UnityEngine.UIElements.IEventHandler
---@return T
function UnityEngine.UIElements.MouseCaptureEventBase.GetPooled(target, relatedTarget) end

---@class UnityEngine.UIElements.MouseCaptureOutEvent : UnityEngine.UIElements.MouseCaptureEventBase
UnityEngine.UIElements.MouseCaptureOutEvent = {}
---@alias CS.UnityEngine.UIElements.MouseCaptureOutEvent UnityEngine.UIElements.MouseCaptureOutEvent
CS.UnityEngine.UIElements.MouseCaptureOutEvent = UnityEngine.UIElements.MouseCaptureOutEvent

---@return UnityEngine.UIElements.MouseCaptureOutEvent
function UnityEngine.UIElements.MouseCaptureOutEvent.New() end

---@class UnityEngine.UIElements.MouseCaptureEvent : UnityEngine.UIElements.MouseCaptureEventBase
UnityEngine.UIElements.MouseCaptureEvent = {}
---@alias CS.UnityEngine.UIElements.MouseCaptureEvent UnityEngine.UIElements.MouseCaptureEvent
CS.UnityEngine.UIElements.MouseCaptureEvent = UnityEngine.UIElements.MouseCaptureEvent

---@return UnityEngine.UIElements.MouseCaptureEvent
function UnityEngine.UIElements.MouseCaptureEvent.New() end

---@class UnityEngine.UIElements.IChangeEvent
UnityEngine.UIElements.IChangeEvent = {}
---@alias CS.UnityEngine.UIElements.IChangeEvent UnityEngine.UIElements.IChangeEvent
CS.UnityEngine.UIElements.IChangeEvent = UnityEngine.UIElements.IChangeEvent


---@class UnityEngine.UIElements.ChangeEvent : UnityEngine.UIElements.EventBase[UnityEngine.UIElements.ChangeEvent[T]]
---@field previousValue T
---@field newValue T
UnityEngine.UIElements.ChangeEvent = {}
---@alias CS.UnityEngine.UIElements.ChangeEvent UnityEngine.UIElements.ChangeEvent
CS.UnityEngine.UIElements.ChangeEvent = UnityEngine.UIElements.ChangeEvent

---@return UnityEngine.UIElements.ChangeEvent
function UnityEngine.UIElements.ChangeEvent.New() end
---@param previousValue T
---@param newValue T
---@return UnityEngine.UIElements.ChangeEvent
function UnityEngine.UIElements.ChangeEvent.GetPooled(previousValue, newValue) end

---@class UnityEngine.UIElements.CommandEventDispatchingStrategy : System.Object
UnityEngine.UIElements.CommandEventDispatchingStrategy = {}
---@alias CS.UnityEngine.UIElements.CommandEventDispatchingStrategy UnityEngine.UIElements.CommandEventDispatchingStrategy
CS.UnityEngine.UIElements.CommandEventDispatchingStrategy = UnityEngine.UIElements.CommandEventDispatchingStrategy

---@return UnityEngine.UIElements.CommandEventDispatchingStrategy
function UnityEngine.UIElements.CommandEventDispatchingStrategy.New() end
---@param evt UnityEngine.UIElements.EventBase
---@return boolean
function UnityEngine.UIElements.CommandEventDispatchingStrategy:CanDispatchEvent(evt) end
---@param evt UnityEngine.UIElements.EventBase
---@param panel UnityEngine.UIElements.IPanel
function UnityEngine.UIElements.CommandEventDispatchingStrategy:DispatchEvent(evt, panel) end

---@class UnityEngine.UIElements.ICommandEvent
---@field commandName string
UnityEngine.UIElements.ICommandEvent = {}
---@alias CS.UnityEngine.UIElements.ICommandEvent UnityEngine.UIElements.ICommandEvent
CS.UnityEngine.UIElements.ICommandEvent = UnityEngine.UIElements.ICommandEvent


---@class UnityEngine.UIElements.CommandEventBase : UnityEngine.UIElements.EventBase[T]
---@field commandName string
UnityEngine.UIElements.CommandEventBase = {}
---@alias CS.UnityEngine.UIElements.CommandEventBase UnityEngine.UIElements.CommandEventBase
CS.UnityEngine.UIElements.CommandEventBase = UnityEngine.UIElements.CommandEventBase

---@overload fun(systemEvent: UnityEngine.Event) : T
---@param commandName string
---@return T
function UnityEngine.UIElements.CommandEventBase.GetPooled(commandName) end

---@class UnityEngine.UIElements.ValidateCommandEvent : UnityEngine.UIElements.CommandEventBase
UnityEngine.UIElements.ValidateCommandEvent = {}
---@alias CS.UnityEngine.UIElements.ValidateCommandEvent UnityEngine.UIElements.ValidateCommandEvent
CS.UnityEngine.UIElements.ValidateCommandEvent = UnityEngine.UIElements.ValidateCommandEvent

---@return UnityEngine.UIElements.ValidateCommandEvent
function UnityEngine.UIElements.ValidateCommandEvent.New() end

---@class UnityEngine.UIElements.ExecuteCommandEvent : UnityEngine.UIElements.CommandEventBase
UnityEngine.UIElements.ExecuteCommandEvent = {}
---@alias CS.UnityEngine.UIElements.ExecuteCommandEvent UnityEngine.UIElements.ExecuteCommandEvent
CS.UnityEngine.UIElements.ExecuteCommandEvent = UnityEngine.UIElements.ExecuteCommandEvent

---@return UnityEngine.UIElements.ExecuteCommandEvent
function UnityEngine.UIElements.ExecuteCommandEvent.New() end

---@class UnityEngine.UIElements.DebuggerEventDispatchingStrategy : System.Object
UnityEngine.UIElements.DebuggerEventDispatchingStrategy = {}
---@alias CS.UnityEngine.UIElements.DebuggerEventDispatchingStrategy UnityEngine.UIElements.DebuggerEventDispatchingStrategy
CS.UnityEngine.UIElements.DebuggerEventDispatchingStrategy = UnityEngine.UIElements.DebuggerEventDispatchingStrategy

---@return UnityEngine.UIElements.DebuggerEventDispatchingStrategy
function UnityEngine.UIElements.DebuggerEventDispatchingStrategy.New() end
---@param evt UnityEngine.UIElements.EventBase
---@return boolean
function UnityEngine.UIElements.DebuggerEventDispatchingStrategy:CanDispatchEvent(evt) end
---@param evt UnityEngine.UIElements.EventBase
---@param panel UnityEngine.UIElements.IPanel
function UnityEngine.UIElements.DebuggerEventDispatchingStrategy:DispatchEvent(evt, panel) end
---@param evt UnityEngine.UIElements.EventBase
---@param panel UnityEngine.UIElements.IPanel
function UnityEngine.UIElements.DebuggerEventDispatchingStrategy:PostDispatch(evt, panel) end

---@class UnityEngine.UIElements.DefaultDispatchingStrategy : System.Object
UnityEngine.UIElements.DefaultDispatchingStrategy = {}
---@alias CS.UnityEngine.UIElements.DefaultDispatchingStrategy UnityEngine.UIElements.DefaultDispatchingStrategy
CS.UnityEngine.UIElements.DefaultDispatchingStrategy = UnityEngine.UIElements.DefaultDispatchingStrategy

---@return UnityEngine.UIElements.DefaultDispatchingStrategy
function UnityEngine.UIElements.DefaultDispatchingStrategy.New() end
---@param evt UnityEngine.UIElements.EventBase
---@return boolean
function UnityEngine.UIElements.DefaultDispatchingStrategy:CanDispatchEvent(evt) end
---@param evt UnityEngine.UIElements.EventBase
---@param panel UnityEngine.UIElements.IPanel
function UnityEngine.UIElements.DefaultDispatchingStrategy:DispatchEvent(evt, panel) end

---@class UnityEngine.UIElements.IDragAndDropEvent
UnityEngine.UIElements.IDragAndDropEvent = {}
---@alias CS.UnityEngine.UIElements.IDragAndDropEvent UnityEngine.UIElements.IDragAndDropEvent
CS.UnityEngine.UIElements.IDragAndDropEvent = UnityEngine.UIElements.IDragAndDropEvent


---@class UnityEngine.UIElements.DragAndDropEventBase : UnityEngine.UIElements.MouseEventBase[T]
UnityEngine.UIElements.DragAndDropEventBase = {}
---@alias CS.UnityEngine.UIElements.DragAndDropEventBase UnityEngine.UIElements.DragAndDropEventBase
CS.UnityEngine.UIElements.DragAndDropEventBase = UnityEngine.UIElements.DragAndDropEventBase


---@class UnityEngine.UIElements.DragExitedEvent : UnityEngine.UIElements.DragAndDropEventBase
UnityEngine.UIElements.DragExitedEvent = {}
---@alias CS.UnityEngine.UIElements.DragExitedEvent UnityEngine.UIElements.DragExitedEvent
CS.UnityEngine.UIElements.DragExitedEvent = UnityEngine.UIElements.DragExitedEvent

---@return UnityEngine.UIElements.DragExitedEvent
function UnityEngine.UIElements.DragExitedEvent.New() end
---@param systemEvent UnityEngine.Event
---@return UnityEngine.UIElements.DragExitedEvent
function UnityEngine.UIElements.DragExitedEvent.GetPooled(systemEvent) end

---@class UnityEngine.UIElements.DragEnterEvent : UnityEngine.UIElements.DragAndDropEventBase
UnityEngine.UIElements.DragEnterEvent = {}
---@alias CS.UnityEngine.UIElements.DragEnterEvent UnityEngine.UIElements.DragEnterEvent
CS.UnityEngine.UIElements.DragEnterEvent = UnityEngine.UIElements.DragEnterEvent

---@return UnityEngine.UIElements.DragEnterEvent
function UnityEngine.UIElements.DragEnterEvent.New() end

---@class UnityEngine.UIElements.DragLeaveEvent : UnityEngine.UIElements.DragAndDropEventBase
UnityEngine.UIElements.DragLeaveEvent = {}
---@alias CS.UnityEngine.UIElements.DragLeaveEvent UnityEngine.UIElements.DragLeaveEvent
CS.UnityEngine.UIElements.DragLeaveEvent = UnityEngine.UIElements.DragLeaveEvent

---@return UnityEngine.UIElements.DragLeaveEvent
function UnityEngine.UIElements.DragLeaveEvent.New() end

---@class UnityEngine.UIElements.DragUpdatedEvent : UnityEngine.UIElements.DragAndDropEventBase
UnityEngine.UIElements.DragUpdatedEvent = {}
---@alias CS.UnityEngine.UIElements.DragUpdatedEvent UnityEngine.UIElements.DragUpdatedEvent
CS.UnityEngine.UIElements.DragUpdatedEvent = UnityEngine.UIElements.DragUpdatedEvent

---@return UnityEngine.UIElements.DragUpdatedEvent
function UnityEngine.UIElements.DragUpdatedEvent.New() end
---@param systemEvent UnityEngine.Event
---@return UnityEngine.UIElements.DragUpdatedEvent
function UnityEngine.UIElements.DragUpdatedEvent.GetPooled(systemEvent) end

---@class UnityEngine.UIElements.DragPerformEvent : UnityEngine.UIElements.DragAndDropEventBase
UnityEngine.UIElements.DragPerformEvent = {}
---@alias CS.UnityEngine.UIElements.DragPerformEvent UnityEngine.UIElements.DragPerformEvent
CS.UnityEngine.UIElements.DragPerformEvent = UnityEngine.UIElements.DragPerformEvent

---@return UnityEngine.UIElements.DragPerformEvent
function UnityEngine.UIElements.DragPerformEvent.New() end

---@class UnityEngine.UIElements.ElementUnderPointer : System.Object
UnityEngine.UIElements.ElementUnderPointer = {}
---@alias CS.UnityEngine.UIElements.ElementUnderPointer UnityEngine.UIElements.ElementUnderPointer
CS.UnityEngine.UIElements.ElementUnderPointer = UnityEngine.UIElements.ElementUnderPointer

---@return UnityEngine.UIElements.ElementUnderPointer
function UnityEngine.UIElements.ElementUnderPointer.New() end

---@class UnityEngine.UIElements.EventBase : System.Object
---@field eventTypeId number
---@field timestamp number
---@field bubbles boolean
---@field tricklesDown boolean
---@field target UnityEngine.UIElements.IEventHandler
---@field isPropagationStopped boolean
---@field isImmediatePropagationStopped boolean
---@field isDefaultPrevented boolean
---@field propagationPhase UnityEngine.UIElements.PropagationPhase
---@field currentTarget UnityEngine.UIElements.IEventHandler
---@field dispatch boolean
---@field imguiEvent UnityEngine.Event
---@field originalMousePosition UnityEngine.Vector2
UnityEngine.UIElements.EventBase = {}
---@alias CS.UnityEngine.UIElements.EventBase UnityEngine.UIElements.EventBase
CS.UnityEngine.UIElements.EventBase = UnityEngine.UIElements.EventBase

function UnityEngine.UIElements.EventBase:StopPropagation() end
function UnityEngine.UIElements.EventBase:StopImmediatePropagation() end
function UnityEngine.UIElements.EventBase:PreventDefault() end
function UnityEngine.UIElements.EventBase:Dispose() end

---@class UnityEngine.UIElements.EventBase.EventPropagation
---@field None UnityEngine.UIElements.EventBase.EventPropagation
---@field Bubbles UnityEngine.UIElements.EventBase.EventPropagation
---@field TricklesDown UnityEngine.UIElements.EventBase.EventPropagation
---@field Cancellable UnityEngine.UIElements.EventBase.EventPropagation
---@field SkipDisabledElements UnityEngine.UIElements.EventBase.EventPropagation
---@field IgnoreCompositeRoots UnityEngine.UIElements.EventBase.EventPropagation
UnityEngine.UIElements.EventBase.EventPropagation = {}
---@alias CS.UnityEngine.UIElements.EventBase.EventPropagation UnityEngine.UIElements.EventBase.EventPropagation
CS.UnityEngine.UIElements.EventBase.EventPropagation = UnityEngine.UIElements.EventBase.EventPropagation


---@class UnityEngine.UIElements.EventBase.LifeCycleStatus
---@field None UnityEngine.UIElements.EventBase.LifeCycleStatus
---@field PropagationStopped UnityEngine.UIElements.EventBase.LifeCycleStatus
---@field ImmediatePropagationStopped UnityEngine.UIElements.EventBase.LifeCycleStatus
---@field DefaultPrevented UnityEngine.UIElements.EventBase.LifeCycleStatus
---@field Dispatching UnityEngine.UIElements.EventBase.LifeCycleStatus
---@field Pooled UnityEngine.UIElements.EventBase.LifeCycleStatus
---@field IMGUIEventIsValid UnityEngine.UIElements.EventBase.LifeCycleStatus
---@field StopDispatch UnityEngine.UIElements.EventBase.LifeCycleStatus
---@field PropagateToIMGUI UnityEngine.UIElements.EventBase.LifeCycleStatus
---@field Dispatched UnityEngine.UIElements.EventBase.LifeCycleStatus
---@field Processed UnityEngine.UIElements.EventBase.LifeCycleStatus
---@field ProcessedByFocusController UnityEngine.UIElements.EventBase.LifeCycleStatus
UnityEngine.UIElements.EventBase.LifeCycleStatus = {}
---@alias CS.UnityEngine.UIElements.EventBase.LifeCycleStatus UnityEngine.UIElements.EventBase.LifeCycleStatus
CS.UnityEngine.UIElements.EventBase.LifeCycleStatus = UnityEngine.UIElements.EventBase.LifeCycleStatus


---@class UnityEngine.UIElements.EventBase : UnityEngine.UIElements.EventBase
---@field eventTypeId number
UnityEngine.UIElements.EventBase = {}
---@alias CS.UnityEngine.UIElements.EventBase UnityEngine.UIElements.EventBase
CS.UnityEngine.UIElements.EventBase = UnityEngine.UIElements.EventBase

---@return number
function UnityEngine.UIElements.EventBase.TypeId() end
---@return T
function UnityEngine.UIElements.EventBase.GetPooled() end
function UnityEngine.UIElements.EventBase:Dispose() end

---@class UnityEngine.UIElements.EventCallback : System.MulticastDelegate
UnityEngine.UIElements.EventCallback = {}
---@alias CS.UnityEngine.UIElements.EventCallback UnityEngine.UIElements.EventCallback
CS.UnityEngine.UIElements.EventCallback = UnityEngine.UIElements.EventCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.UIElements.EventCallback
function UnityEngine.UIElements.EventCallback.New(object, method) end
---@param evt TEventType
function UnityEngine.UIElements.EventCallback:Invoke(evt) end
---@param evt TEventType
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.UIElements.EventCallback:BeginInvoke(evt, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.UIElements.EventCallback:EndInvoke(result) end

---@class UnityEngine.UIElements.EventCallback : System.MulticastDelegate
UnityEngine.UIElements.EventCallback = {}
---@alias CS.UnityEngine.UIElements.EventCallback UnityEngine.UIElements.EventCallback
CS.UnityEngine.UIElements.EventCallback = UnityEngine.UIElements.EventCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.UIElements.EventCallback
function UnityEngine.UIElements.EventCallback.New(object, method) end
---@param evt TEventType
---@param userArgs TCallbackArgs
function UnityEngine.UIElements.EventCallback:Invoke(evt, userArgs) end
---@param evt TEventType
---@param userArgs TCallbackArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.UIElements.EventCallback:BeginInvoke(evt, userArgs, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.UIElements.EventCallback:EndInvoke(result) end

---@class UnityEngine.UIElements.EventCallbackFunctorBase : System.Object
---@field phase UnityEngine.UIElements.CallbackPhase
---@field invokePolicy UnityEngine.UIElements.InvokePolicy
UnityEngine.UIElements.EventCallbackFunctorBase = {}
---@alias CS.UnityEngine.UIElements.EventCallbackFunctorBase UnityEngine.UIElements.EventCallbackFunctorBase
CS.UnityEngine.UIElements.EventCallbackFunctorBase = UnityEngine.UIElements.EventCallbackFunctorBase

---@param evt UnityEngine.UIElements.EventBase
---@param propagationPhase UnityEngine.UIElements.PropagationPhase
function UnityEngine.UIElements.EventCallbackFunctorBase:Invoke(evt, propagationPhase) end
---@param eventTypeId number
---@param callback System.Delegate
---@param phase UnityEngine.UIElements.CallbackPhase
---@return boolean
function UnityEngine.UIElements.EventCallbackFunctorBase:IsEquivalentTo(eventTypeId, callback, phase) end

---@class UnityEngine.UIElements.EventCallbackFunctor : UnityEngine.UIElements.EventCallbackFunctorBase
UnityEngine.UIElements.EventCallbackFunctor = {}
---@alias CS.UnityEngine.UIElements.EventCallbackFunctor UnityEngine.UIElements.EventCallbackFunctor
CS.UnityEngine.UIElements.EventCallbackFunctor = UnityEngine.UIElements.EventCallbackFunctor

---@param callback UnityEngine.UIElements.EventCallback[TEventType]
---@param phase UnityEngine.UIElements.CallbackPhase
---@param invokePolicy UnityEngine.UIElements.InvokePolicy
---@return UnityEngine.UIElements.EventCallbackFunctor
function UnityEngine.UIElements.EventCallbackFunctor.New(callback, phase, invokePolicy) end
---@param evt UnityEngine.UIElements.EventBase
---@param propagationPhase UnityEngine.UIElements.PropagationPhase
function UnityEngine.UIElements.EventCallbackFunctor:Invoke(evt, propagationPhase) end
---@param eventTypeId number
---@param callback System.Delegate
---@param phase UnityEngine.UIElements.CallbackPhase
---@return boolean
function UnityEngine.UIElements.EventCallbackFunctor:IsEquivalentTo(eventTypeId, callback, phase) end

---@class UnityEngine.UIElements.EventCallbackFunctor : UnityEngine.UIElements.EventCallbackFunctorBase
UnityEngine.UIElements.EventCallbackFunctor = {}
---@alias CS.UnityEngine.UIElements.EventCallbackFunctor UnityEngine.UIElements.EventCallbackFunctor
CS.UnityEngine.UIElements.EventCallbackFunctor = UnityEngine.UIElements.EventCallbackFunctor

---@param callback UnityEngine.UIElements.EventCallback[TEventType,TCallbackArgs]
---@param userArgs TCallbackArgs
---@param phase UnityEngine.UIElements.CallbackPhase
---@param invokePolicy UnityEngine.UIElements.InvokePolicy
---@return UnityEngine.UIElements.EventCallbackFunctor
function UnityEngine.UIElements.EventCallbackFunctor.New(callback, userArgs, phase, invokePolicy) end
---@param evt UnityEngine.UIElements.EventBase
---@param propagationPhase UnityEngine.UIElements.PropagationPhase
function UnityEngine.UIElements.EventCallbackFunctor:Invoke(evt, propagationPhase) end
---@param eventTypeId number
---@param callback System.Delegate
---@param phase UnityEngine.UIElements.CallbackPhase
---@return boolean
function UnityEngine.UIElements.EventCallbackFunctor:IsEquivalentTo(eventTypeId, callback, phase) end

---@class UnityEngine.UIElements.TrickleDown
---@field NoTrickleDown UnityEngine.UIElements.TrickleDown
---@field TrickleDown UnityEngine.UIElements.TrickleDown
UnityEngine.UIElements.TrickleDown = {}
---@alias CS.UnityEngine.UIElements.TrickleDown UnityEngine.UIElements.TrickleDown
CS.UnityEngine.UIElements.TrickleDown = UnityEngine.UIElements.TrickleDown


---@class UnityEngine.UIElements.CallbackPhase
---@field TargetAndBubbleUp UnityEngine.UIElements.CallbackPhase
---@field TrickleDownAndTarget UnityEngine.UIElements.CallbackPhase
UnityEngine.UIElements.CallbackPhase = {}
---@alias CS.UnityEngine.UIElements.CallbackPhase UnityEngine.UIElements.CallbackPhase
CS.UnityEngine.UIElements.CallbackPhase = UnityEngine.UIElements.CallbackPhase


---@class UnityEngine.UIElements.InvokePolicy
---@field Default UnityEngine.UIElements.InvokePolicy
---@field IncludeDisabled UnityEngine.UIElements.InvokePolicy
UnityEngine.UIElements.InvokePolicy = {}
---@alias CS.UnityEngine.UIElements.InvokePolicy UnityEngine.UIElements.InvokePolicy
CS.UnityEngine.UIElements.InvokePolicy = UnityEngine.UIElements.InvokePolicy


---@class UnityEngine.UIElements.EventCallbackListPool : System.Object
UnityEngine.UIElements.EventCallbackListPool = {}
---@alias CS.UnityEngine.UIElements.EventCallbackListPool UnityEngine.UIElements.EventCallbackListPool
CS.UnityEngine.UIElements.EventCallbackListPool = UnityEngine.UIElements.EventCallbackListPool

---@return UnityEngine.UIElements.EventCallbackListPool
function UnityEngine.UIElements.EventCallbackListPool.New() end
---@param initializer UnityEngine.UIElements.EventCallbackList
---@return UnityEngine.UIElements.EventCallbackList
function UnityEngine.UIElements.EventCallbackListPool:Get(initializer) end
---@param element UnityEngine.UIElements.EventCallbackList
function UnityEngine.UIElements.EventCallbackListPool:Release(element) end

---@class UnityEngine.UIElements.EventCallbackList : System.Object
---@field trickleDownCallbackCount number
---@field bubbleUpCallbackCount number
---@field Count number
---@field Item UnityEngine.UIElements.EventCallbackFunctorBase
UnityEngine.UIElements.EventCallbackList = {}
---@alias CS.UnityEngine.UIElements.EventCallbackList UnityEngine.UIElements.EventCallbackList
CS.UnityEngine.UIElements.EventCallbackList = UnityEngine.UIElements.EventCallbackList

---@overload fun() : UnityEngine.UIElements.EventCallbackList
---@param source UnityEngine.UIElements.EventCallbackList
---@return UnityEngine.UIElements.EventCallbackList
function UnityEngine.UIElements.EventCallbackList.New(source) end
---@param eventTypeId number
---@param callback System.Delegate
---@param phase UnityEngine.UIElements.CallbackPhase
---@return boolean
function UnityEngine.UIElements.EventCallbackList:Contains(eventTypeId, callback, phase) end
---@param eventTypeId number
---@param callback System.Delegate
---@param phase UnityEngine.UIElements.CallbackPhase
---@return UnityEngine.UIElements.EventCallbackFunctorBase
function UnityEngine.UIElements.EventCallbackList:Find(eventTypeId, callback, phase) end
---@param eventTypeId number
---@param callback System.Delegate
---@param phase UnityEngine.UIElements.CallbackPhase
---@return boolean
function UnityEngine.UIElements.EventCallbackList:Remove(eventTypeId, callback, phase) end
---@param item UnityEngine.UIElements.EventCallbackFunctorBase
function UnityEngine.UIElements.EventCallbackList:Add(item) end
---@param list UnityEngine.UIElements.EventCallbackList
function UnityEngine.UIElements.EventCallbackList:AddRange(list) end
function UnityEngine.UIElements.EventCallbackList:Clear() end

---@class UnityEngine.UIElements.EventCallbackRegistry : System.Object
UnityEngine.UIElements.EventCallbackRegistry = {}
---@alias CS.UnityEngine.UIElements.EventCallbackRegistry UnityEngine.UIElements.EventCallbackRegistry
CS.UnityEngine.UIElements.EventCallbackRegistry = UnityEngine.UIElements.EventCallbackRegistry

---@return UnityEngine.UIElements.EventCallbackRegistry
function UnityEngine.UIElements.EventCallbackRegistry.New() end
---@param evt UnityEngine.UIElements.EventBase
---@param propagationPhase UnityEngine.UIElements.PropagationPhase
function UnityEngine.UIElements.EventCallbackRegistry:InvokeCallbacks(evt, propagationPhase) end
---@return boolean
function UnityEngine.UIElements.EventCallbackRegistry:HasTrickleDownHandlers() end
---@return boolean
function UnityEngine.UIElements.EventCallbackRegistry:HasBubbleHandlers() end

---@class UnityEngine.UIElements.EventDebuggerLogCall : System.ValueType
UnityEngine.UIElements.EventDebuggerLogCall = {}
---@alias CS.UnityEngine.UIElements.EventDebuggerLogCall UnityEngine.UIElements.EventDebuggerLogCall
CS.UnityEngine.UIElements.EventDebuggerLogCall = UnityEngine.UIElements.EventDebuggerLogCall

---@param callback System.Delegate
---@param evt UnityEngine.UIElements.EventBase
---@return UnityEngine.UIElements.EventDebuggerLogCall
function UnityEngine.UIElements.EventDebuggerLogCall.New(callback, evt) end
function UnityEngine.UIElements.EventDebuggerLogCall:Dispose() end

---@class UnityEngine.UIElements.EventDebuggerLogIMGUICall : System.ValueType
UnityEngine.UIElements.EventDebuggerLogIMGUICall = {}
---@alias CS.UnityEngine.UIElements.EventDebuggerLogIMGUICall UnityEngine.UIElements.EventDebuggerLogIMGUICall
CS.UnityEngine.UIElements.EventDebuggerLogIMGUICall = UnityEngine.UIElements.EventDebuggerLogIMGUICall

---@param evt UnityEngine.UIElements.EventBase
---@return UnityEngine.UIElements.EventDebuggerLogIMGUICall
function UnityEngine.UIElements.EventDebuggerLogIMGUICall.New(evt) end
function UnityEngine.UIElements.EventDebuggerLogIMGUICall:Dispose() end

---@class UnityEngine.UIElements.EventDebuggerLogExecuteDefaultAction : System.ValueType
UnityEngine.UIElements.EventDebuggerLogExecuteDefaultAction = {}
---@alias CS.UnityEngine.UIElements.EventDebuggerLogExecuteDefaultAction UnityEngine.UIElements.EventDebuggerLogExecuteDefaultAction
CS.UnityEngine.UIElements.EventDebuggerLogExecuteDefaultAction = UnityEngine.UIElements.EventDebuggerLogExecuteDefaultAction

---@param evt UnityEngine.UIElements.EventBase
---@return UnityEngine.UIElements.EventDebuggerLogExecuteDefaultAction
function UnityEngine.UIElements.EventDebuggerLogExecuteDefaultAction.New(evt) end
function UnityEngine.UIElements.EventDebuggerLogExecuteDefaultAction:Dispose() end

---@class UnityEngine.UIElements.EventDebugger : System.Object
---@field panel UnityEngine.UIElements.IPanel
---@field panelDebug UnityEngine.UIElements.IPanelDebug
---@field isReplaying boolean
---@field playbackSpeed number
---@field isPlaybackPaused boolean
---@field eventTypeProcessedCount System.Collections.Generic.Dictionary
---@field suspended boolean
UnityEngine.UIElements.EventDebugger = {}
---@alias CS.UnityEngine.UIElements.EventDebugger UnityEngine.UIElements.EventDebugger
CS.UnityEngine.UIElements.EventDebugger = UnityEngine.UIElements.EventDebugger

---@return UnityEngine.UIElements.EventDebugger
function UnityEngine.UIElements.EventDebugger.New() end
---@param evt UnityEngine.UIElements.EventBase
---@param paths UnityEngine.UIElements.PropagationPaths
function UnityEngine.UIElements.EventDebugger.LogPropagationPaths(evt, paths) end
---@param obj System.Object
---@param withHashCode boolean
---@return string
function UnityEngine.UIElements.EventDebugger.GetObjectDisplayName(obj, withHashCode) end
---@param type System.Type
---@return string
function UnityEngine.UIElements.EventDebugger.GetTypeDisplayName(type) end
function UnityEngine.UIElements.EventDebugger:UpdateModificationCount() end
---@param evt UnityEngine.UIElements.EventBase
---@param mouseCapture UnityEngine.UIElements.IEventHandler
function UnityEngine.UIElements.EventDebugger:BeginProcessEvent(evt, mouseCapture) end
---@param evt UnityEngine.UIElements.EventBase
---@param duration number
---@param mouseCapture UnityEngine.UIElements.IEventHandler
function UnityEngine.UIElements.EventDebugger:EndProcessEvent(evt, duration, mouseCapture) end
---@param cbHashCode number
---@param cbName string
---@param evt UnityEngine.UIElements.EventBase
---@param propagationHasStopped boolean
---@param immediatePropagationHasStopped boolean
---@param defaultHasBeenPrevented boolean
---@param duration number
---@param mouseCapture UnityEngine.UIElements.IEventHandler
function UnityEngine.UIElements.EventDebugger:LogCall(cbHashCode, cbName, evt, propagationHasStopped, immediatePropagationHasStopped, defaultHasBeenPrevented, duration, mouseCapture) end
---@param evt UnityEngine.UIElements.EventBase
---@param duration number
---@param mouseCapture UnityEngine.UIElements.IEventHandler
function UnityEngine.UIElements.EventDebugger:LogIMGUICall(evt, duration, mouseCapture) end
---@param evt UnityEngine.UIElements.EventBase
---@param phase UnityEngine.UIElements.PropagationPhase
---@param duration number
---@param mouseCapture UnityEngine.UIElements.IEventHandler
function UnityEngine.UIElements.EventDebugger:LogExecuteDefaultAction(evt, phase, duration, mouseCapture) end
---@param panel UnityEngine.UIElements.IPanel
---@param evt UnityEngine.UIElements.EventDebuggerEventRecord
---@return System.Collections.Generic.List
function UnityEngine.UIElements.EventDebugger:GetCalls(panel, evt) end
---@param panel UnityEngine.UIElements.IPanel
---@param evt UnityEngine.UIElements.EventDebuggerEventRecord
---@return System.Collections.Generic.List
function UnityEngine.UIElements.EventDebugger:GetDefaultActions(panel, evt) end
---@param panel UnityEngine.UIElements.IPanel
---@param evt UnityEngine.UIElements.EventDebuggerEventRecord
---@return System.Collections.Generic.List
function UnityEngine.UIElements.EventDebugger:GetPropagationPaths(panel, evt) end
---@param panel UnityEngine.UIElements.IPanel
---@param evt UnityEngine.UIElements.EventDebuggerEventRecord
---@return System.Collections.Generic.List
function UnityEngine.UIElements.EventDebugger:GetBeginEndProcessedEvents(panel, evt) end
---@param panel UnityEngine.UIElements.IPanel
---@return number
function UnityEngine.UIElements.EventDebugger:GetModificationCount(panel) end
function UnityEngine.UIElements.EventDebugger:ClearLogs() end
---@param path string
---@param eventList System.Collections.Generic.List
function UnityEngine.UIElements.EventDebugger:SaveReplaySessionFromSelection(path, eventList) end
---@param path string
---@return UnityEngine.UIElements.EventDebuggerRecordList
function UnityEngine.UIElements.EventDebugger:LoadReplaySession(path) end
---@param eventBases System.Collections.Generic.IEnumerable
---@param refreshList System.Action
---@return System.Collections.IEnumerator
function UnityEngine.UIElements.EventDebugger:ReplayEvents(eventBases, refreshList) end
function UnityEngine.UIElements.EventDebugger:StopPlayback() end
---@param eventBases System.Collections.Generic.List
---@return System.Collections.Generic.Dictionary
function UnityEngine.UIElements.EventDebugger:ComputeHistogram(eventBases) end

---@class UnityEngine.UIElements.EventDebugger.HistogramRecord : System.ValueType
---@field count number
---@field duration number
UnityEngine.UIElements.EventDebugger.HistogramRecord = {}
---@alias CS.UnityEngine.UIElements.EventDebugger.HistogramRecord UnityEngine.UIElements.EventDebugger.HistogramRecord
CS.UnityEngine.UIElements.EventDebugger.HistogramRecord = UnityEngine.UIElements.EventDebugger.HistogramRecord


---@class UnityEngine.UIElements.EventDebuggerRecordList : System.Object
---@field eventList System.Collections.Generic.List
UnityEngine.UIElements.EventDebuggerRecordList = {}
---@alias CS.UnityEngine.UIElements.EventDebuggerRecordList UnityEngine.UIElements.EventDebuggerRecordList
CS.UnityEngine.UIElements.EventDebuggerRecordList = UnityEngine.UIElements.EventDebuggerRecordList

---@return UnityEngine.UIElements.EventDebuggerRecordList
function UnityEngine.UIElements.EventDebuggerRecordList.New() end

---@class UnityEngine.UIElements.EventDebuggerEventRecord : System.Object
---@field eventBaseName string
---@field eventTypeId number
---@field eventId number
---@field target UnityEngine.UIElements.IEventHandler
---@field hasUnderlyingPhysicalEvent boolean
---@field propagationPhase UnityEngine.UIElements.PropagationPhase
---@field modifiers UnityEngine.EventModifiers
---@field mousePosition UnityEngine.Vector2
---@field clickCount number
---@field button number
---@field pressedButtons number
---@field delta UnityEngine.Vector3
---@field character System.Char
---@field keyCode UnityEngine.KeyCode
---@field commandName string
---@field deviceType UnityEngine.UIElements.NavigationDeviceType
---@field navigationDirection UnityEngine.UIElements.NavigationMoveEvent.Direction
UnityEngine.UIElements.EventDebuggerEventRecord = {}
---@alias CS.UnityEngine.UIElements.EventDebuggerEventRecord UnityEngine.UIElements.EventDebuggerEventRecord
CS.UnityEngine.UIElements.EventDebuggerEventRecord = UnityEngine.UIElements.EventDebuggerEventRecord

---@param evt UnityEngine.UIElements.EventBase
---@return UnityEngine.UIElements.EventDebuggerEventRecord
function UnityEngine.UIElements.EventDebuggerEventRecord.New(evt) end
---@return string
function UnityEngine.UIElements.EventDebuggerEventRecord:TimestampString() end

---@class UnityEngine.UIElements.EventDebuggerTrace : System.Object
---@field eventBase UnityEngine.UIElements.EventDebuggerEventRecord
---@field focusedElement UnityEngine.UIElements.IEventHandler
---@field mouseCapture UnityEngine.UIElements.IEventHandler
---@field duration number
UnityEngine.UIElements.EventDebuggerTrace = {}
---@alias CS.UnityEngine.UIElements.EventDebuggerTrace UnityEngine.UIElements.EventDebuggerTrace
CS.UnityEngine.UIElements.EventDebuggerTrace = UnityEngine.UIElements.EventDebuggerTrace

---@param panel UnityEngine.UIElements.IPanel
---@param evt UnityEngine.UIElements.EventBase
---@param duration number
---@param mouseCapture UnityEngine.UIElements.IEventHandler
---@return UnityEngine.UIElements.EventDebuggerTrace
function UnityEngine.UIElements.EventDebuggerTrace.New(panel, evt, duration, mouseCapture) end

---@class UnityEngine.UIElements.EventDebuggerCallTrace : UnityEngine.UIElements.EventDebuggerTrace
---@field callbackHashCode number
---@field callbackName string
---@field propagationHasStopped boolean
---@field immediatePropagationHasStopped boolean
---@field defaultHasBeenPrevented boolean
UnityEngine.UIElements.EventDebuggerCallTrace = {}
---@alias CS.UnityEngine.UIElements.EventDebuggerCallTrace UnityEngine.UIElements.EventDebuggerCallTrace
CS.UnityEngine.UIElements.EventDebuggerCallTrace = UnityEngine.UIElements.EventDebuggerCallTrace

---@param panel UnityEngine.UIElements.IPanel
---@param evt UnityEngine.UIElements.EventBase
---@param cbHashCode number
---@param cbName string
---@param propagationHasStopped boolean
---@param immediatePropagationHasStopped boolean
---@param defaultHasBeenPrevented boolean
---@param duration number
---@param mouseCapture UnityEngine.UIElements.IEventHandler
---@return UnityEngine.UIElements.EventDebuggerCallTrace
function UnityEngine.UIElements.EventDebuggerCallTrace.New(panel, evt, cbHashCode, cbName, propagationHasStopped, immediatePropagationHasStopped, defaultHasBeenPrevented, duration, mouseCapture) end

---@class UnityEngine.UIElements.EventDebuggerDefaultActionTrace : UnityEngine.UIElements.EventDebuggerTrace
---@field phase UnityEngine.UIElements.PropagationPhase
---@field targetName string
UnityEngine.UIElements.EventDebuggerDefaultActionTrace = {}
---@alias CS.UnityEngine.UIElements.EventDebuggerDefaultActionTrace UnityEngine.UIElements.EventDebuggerDefaultActionTrace
CS.UnityEngine.UIElements.EventDebuggerDefaultActionTrace = UnityEngine.UIElements.EventDebuggerDefaultActionTrace

---@param panel UnityEngine.UIElements.IPanel
---@param evt UnityEngine.UIElements.EventBase
---@param phase UnityEngine.UIElements.PropagationPhase
---@param duration number
---@param mouseCapture UnityEngine.UIElements.IEventHandler
---@return UnityEngine.UIElements.EventDebuggerDefaultActionTrace
function UnityEngine.UIElements.EventDebuggerDefaultActionTrace.New(panel, evt, phase, duration, mouseCapture) end

---@class UnityEngine.UIElements.EventDebuggerPathTrace : UnityEngine.UIElements.EventDebuggerTrace
---@field paths UnityEngine.UIElements.PropagationPaths
UnityEngine.UIElements.EventDebuggerPathTrace = {}
---@alias CS.UnityEngine.UIElements.EventDebuggerPathTrace UnityEngine.UIElements.EventDebuggerPathTrace
CS.UnityEngine.UIElements.EventDebuggerPathTrace = UnityEngine.UIElements.EventDebuggerPathTrace

---@param panel UnityEngine.UIElements.IPanel
---@param evt UnityEngine.UIElements.EventBase
---@param paths UnityEngine.UIElements.PropagationPaths
---@return UnityEngine.UIElements.EventDebuggerPathTrace
function UnityEngine.UIElements.EventDebuggerPathTrace.New(panel, evt, paths) end

---@class UnityEngine.UIElements.GlobalCallbackRegistry : System.Object
---@field IsEventDebuggerConnected boolean
UnityEngine.UIElements.GlobalCallbackRegistry = {}
---@alias CS.UnityEngine.UIElements.GlobalCallbackRegistry UnityEngine.UIElements.GlobalCallbackRegistry
CS.UnityEngine.UIElements.GlobalCallbackRegistry = UnityEngine.UIElements.GlobalCallbackRegistry

---@param panel UnityEngine.UIElements.IPanel
function UnityEngine.UIElements.GlobalCallbackRegistry.CleanListeners(panel) end

---@class UnityEngine.UIElements.GlobalCallbackRegistry.ListenerRecord : System.ValueType
---@field hashCode number
---@field name string
---@field fileName string
---@field lineNumber number
UnityEngine.UIElements.GlobalCallbackRegistry.ListenerRecord = {}
---@alias CS.UnityEngine.UIElements.GlobalCallbackRegistry.ListenerRecord UnityEngine.UIElements.GlobalCallbackRegistry.ListenerRecord
CS.UnityEngine.UIElements.GlobalCallbackRegistry.ListenerRecord = UnityEngine.UIElements.GlobalCallbackRegistry.ListenerRecord


---@class UnityEngine.UIElements.IEventHandler
UnityEngine.UIElements.IEventHandler = {}
---@alias CS.UnityEngine.UIElements.IEventHandler UnityEngine.UIElements.IEventHandler
CS.UnityEngine.UIElements.IEventHandler = UnityEngine.UIElements.IEventHandler

---@param e UnityEngine.UIElements.EventBase
function UnityEngine.UIElements.IEventHandler:SendEvent(e) end
---@param evt UnityEngine.UIElements.EventBase
function UnityEngine.UIElements.IEventHandler:HandleEvent(evt) end
---@return boolean
function UnityEngine.UIElements.IEventHandler:HasTrickleDownHandlers() end
---@return boolean
function UnityEngine.UIElements.IEventHandler:HasBubbleUpHandlers() end
---@return boolean
function UnityEngine.UIElements.IEventHandler:HasMouseCapture() end
function UnityEngine.UIElements.IEventHandler:CaptureMouse() end
function UnityEngine.UIElements.IEventHandler:ReleaseMouse() end
---@param pointerId number
---@return boolean
function UnityEngine.UIElements.IEventHandler:HasPointerCapture(pointerId) end
---@param pointerId number
function UnityEngine.UIElements.IEventHandler:CapturePointer(pointerId) end
---@param pointerId number
function UnityEngine.UIElements.IEventHandler:ReleasePointer(pointerId) end

---@class UnityEngine.UIElements.CallbackEventHandler : System.Object
UnityEngine.UIElements.CallbackEventHandler = {}
---@alias CS.UnityEngine.UIElements.CallbackEventHandler UnityEngine.UIElements.CallbackEventHandler
CS.UnityEngine.UIElements.CallbackEventHandler = UnityEngine.UIElements.CallbackEventHandler

---@param e UnityEngine.UIElements.EventBase
function UnityEngine.UIElements.CallbackEventHandler:SendEvent(e) end
---@return boolean
function UnityEngine.UIElements.CallbackEventHandler:HasTrickleDownHandlers() end
---@return boolean
function UnityEngine.UIElements.CallbackEventHandler:HasBubbleUpHandlers() end

---@class UnityEngine.UIElements.IFocusEvent
---@field relatedTarget UnityEngine.UIElements.Focusable
---@field direction UnityEngine.UIElements.FocusChangeDirection
UnityEngine.UIElements.IFocusEvent = {}
---@alias CS.UnityEngine.UIElements.IFocusEvent UnityEngine.UIElements.IFocusEvent
CS.UnityEngine.UIElements.IFocusEvent = UnityEngine.UIElements.IFocusEvent


---@class UnityEngine.UIElements.FocusEventBase : UnityEngine.UIElements.EventBase[T]
---@field relatedTarget UnityEngine.UIElements.Focusable
---@field direction UnityEngine.UIElements.FocusChangeDirection
UnityEngine.UIElements.FocusEventBase = {}
---@alias CS.UnityEngine.UIElements.FocusEventBase UnityEngine.UIElements.FocusEventBase
CS.UnityEngine.UIElements.FocusEventBase = UnityEngine.UIElements.FocusEventBase

---@param target UnityEngine.UIElements.IEventHandler
---@param relatedTarget UnityEngine.UIElements.Focusable
---@param direction UnityEngine.UIElements.FocusChangeDirection
---@param focusController UnityEngine.UIElements.FocusController
---@param bIsFocusDelegated boolean
---@return T
function UnityEngine.UIElements.FocusEventBase.GetPooled(target, relatedTarget, direction, focusController, bIsFocusDelegated) end

---@class UnityEngine.UIElements.FocusOutEvent : UnityEngine.UIElements.FocusEventBase
UnityEngine.UIElements.FocusOutEvent = {}
---@alias CS.UnityEngine.UIElements.FocusOutEvent UnityEngine.UIElements.FocusOutEvent
CS.UnityEngine.UIElements.FocusOutEvent = UnityEngine.UIElements.FocusOutEvent

---@return UnityEngine.UIElements.FocusOutEvent
function UnityEngine.UIElements.FocusOutEvent.New() end

---@class UnityEngine.UIElements.BlurEvent : UnityEngine.UIElements.FocusEventBase
UnityEngine.UIElements.BlurEvent = {}
---@alias CS.UnityEngine.UIElements.BlurEvent UnityEngine.UIElements.BlurEvent
CS.UnityEngine.UIElements.BlurEvent = UnityEngine.UIElements.BlurEvent

---@return UnityEngine.UIElements.BlurEvent
function UnityEngine.UIElements.BlurEvent.New() end

---@class UnityEngine.UIElements.FocusInEvent : UnityEngine.UIElements.FocusEventBase
UnityEngine.UIElements.FocusInEvent = {}
---@alias CS.UnityEngine.UIElements.FocusInEvent UnityEngine.UIElements.FocusInEvent
CS.UnityEngine.UIElements.FocusInEvent = UnityEngine.UIElements.FocusInEvent

---@return UnityEngine.UIElements.FocusInEvent
function UnityEngine.UIElements.FocusInEvent.New() end

---@class UnityEngine.UIElements.FocusEvent : UnityEngine.UIElements.FocusEventBase
UnityEngine.UIElements.FocusEvent = {}
---@alias CS.UnityEngine.UIElements.FocusEvent UnityEngine.UIElements.FocusEvent
CS.UnityEngine.UIElements.FocusEvent = UnityEngine.UIElements.FocusEvent

---@return UnityEngine.UIElements.FocusEvent
function UnityEngine.UIElements.FocusEvent.New() end

---@class UnityEngine.UIElements.PropagationPhase
---@field None UnityEngine.UIElements.PropagationPhase
---@field TrickleDown UnityEngine.UIElements.PropagationPhase
---@field AtTarget UnityEngine.UIElements.PropagationPhase
---@field DefaultActionAtTarget UnityEngine.UIElements.PropagationPhase
---@field BubbleUp UnityEngine.UIElements.PropagationPhase
---@field DefaultAction UnityEngine.UIElements.PropagationPhase
UnityEngine.UIElements.PropagationPhase = {}
---@alias CS.UnityEngine.UIElements.PropagationPhase UnityEngine.UIElements.PropagationPhase
CS.UnityEngine.UIElements.PropagationPhase = UnityEngine.UIElements.PropagationPhase


---@class UnityEngine.UIElements.IEventDispatchingStrategy
UnityEngine.UIElements.IEventDispatchingStrategy = {}
---@alias CS.UnityEngine.UIElements.IEventDispatchingStrategy UnityEngine.UIElements.IEventDispatchingStrategy
CS.UnityEngine.UIElements.IEventDispatchingStrategy = UnityEngine.UIElements.IEventDispatchingStrategy

---@param evt UnityEngine.UIElements.EventBase
---@return boolean
function UnityEngine.UIElements.IEventDispatchingStrategy:CanDispatchEvent(evt) end
---@param evt UnityEngine.UIElements.EventBase
---@param panel UnityEngine.UIElements.IPanel
function UnityEngine.UIElements.IEventDispatchingStrategy:DispatchEvent(evt, panel) end

---@class UnityEngine.UIElements.EventDispatchUtilities : System.Object
UnityEngine.UIElements.EventDispatchUtilities = {}
---@alias CS.UnityEngine.UIElements.EventDispatchUtilities UnityEngine.UIElements.EventDispatchUtilities
CS.UnityEngine.UIElements.EventDispatchUtilities = UnityEngine.UIElements.EventDispatchUtilities

---@param evt UnityEngine.UIElements.EventBase
function UnityEngine.UIElements.EventDispatchUtilities.PropagateEvent(evt) end
---@param evt UnityEngine.UIElements.EventBase
function UnityEngine.UIElements.EventDispatchUtilities.ExecuteDefaultAction(evt) end

---@class UnityEngine.UIElements.IMGUIEventDispatchingStrategy : System.Object
UnityEngine.UIElements.IMGUIEventDispatchingStrategy = {}
---@alias CS.UnityEngine.UIElements.IMGUIEventDispatchingStrategy UnityEngine.UIElements.IMGUIEventDispatchingStrategy
CS.UnityEngine.UIElements.IMGUIEventDispatchingStrategy = UnityEngine.UIElements.IMGUIEventDispatchingStrategy

---@return UnityEngine.UIElements.IMGUIEventDispatchingStrategy
function UnityEngine.UIElements.IMGUIEventDispatchingStrategy.New() end
---@param evt UnityEngine.UIElements.EventBase
---@return boolean
function UnityEngine.UIElements.IMGUIEventDispatchingStrategy:CanDispatchEvent(evt) end
---@param evt UnityEngine.UIElements.EventBase
---@param panel UnityEngine.UIElements.IPanel
function UnityEngine.UIElements.IMGUIEventDispatchingStrategy:DispatchEvent(evt, panel) end

---@class UnityEngine.UIElements.InputEvent : UnityEngine.UIElements.EventBase
---@field previousData string
---@field newData string
UnityEngine.UIElements.InputEvent = {}
---@alias CS.UnityEngine.UIElements.InputEvent UnityEngine.UIElements.InputEvent
CS.UnityEngine.UIElements.InputEvent = UnityEngine.UIElements.InputEvent

---@return UnityEngine.UIElements.InputEvent
function UnityEngine.UIElements.InputEvent.New() end
---@param previousData string
---@param newData string
---@return UnityEngine.UIElements.InputEvent
function UnityEngine.UIElements.InputEvent.GetPooled(previousData, newData) end

---@class UnityEngine.UIElements.KeyboardEventDispatchingStrategy : System.Object
UnityEngine.UIElements.KeyboardEventDispatchingStrategy = {}
---@alias CS.UnityEngine.UIElements.KeyboardEventDispatchingStrategy UnityEngine.UIElements.KeyboardEventDispatchingStrategy
CS.UnityEngine.UIElements.KeyboardEventDispatchingStrategy = UnityEngine.UIElements.KeyboardEventDispatchingStrategy

---@return UnityEngine.UIElements.KeyboardEventDispatchingStrategy
function UnityEngine.UIElements.KeyboardEventDispatchingStrategy.New() end
---@param evt UnityEngine.UIElements.EventBase
---@return boolean
function UnityEngine.UIElements.KeyboardEventDispatchingStrategy:CanDispatchEvent(evt) end
---@param evt UnityEngine.UIElements.EventBase
---@param panel UnityEngine.UIElements.IPanel
function UnityEngine.UIElements.KeyboardEventDispatchingStrategy:DispatchEvent(evt, panel) end

---@class UnityEngine.UIElements.IKeyboardEvent
---@field modifiers UnityEngine.EventModifiers
---@field character System.Char
---@field keyCode UnityEngine.KeyCode
---@field shiftKey boolean
---@field ctrlKey boolean
---@field commandKey boolean
---@field altKey boolean
---@field actionKey boolean
UnityEngine.UIElements.IKeyboardEvent = {}
---@alias CS.UnityEngine.UIElements.IKeyboardEvent UnityEngine.UIElements.IKeyboardEvent
CS.UnityEngine.UIElements.IKeyboardEvent = UnityEngine.UIElements.IKeyboardEvent


---@class UnityEngine.UIElements.KeyboardEventBase : UnityEngine.UIElements.EventBase[T]
---@field modifiers UnityEngine.EventModifiers
---@field character System.Char
---@field keyCode UnityEngine.KeyCode
---@field shiftKey boolean
---@field ctrlKey boolean
---@field commandKey boolean
---@field altKey boolean
---@field actionKey boolean
UnityEngine.UIElements.KeyboardEventBase = {}
---@alias CS.UnityEngine.UIElements.KeyboardEventBase UnityEngine.UIElements.KeyboardEventBase
CS.UnityEngine.UIElements.KeyboardEventBase = UnityEngine.UIElements.KeyboardEventBase

---@overload fun(c: System.Char, keyCode: UnityEngine.KeyCode, modifiers: UnityEngine.EventModifiers) : T
---@param systemEvent UnityEngine.Event
---@return T
function UnityEngine.UIElements.KeyboardEventBase.GetPooled(systemEvent) end

---@class UnityEngine.UIElements.KeyDownEvent : UnityEngine.UIElements.KeyboardEventBase
UnityEngine.UIElements.KeyDownEvent = {}
---@alias CS.UnityEngine.UIElements.KeyDownEvent UnityEngine.UIElements.KeyDownEvent
CS.UnityEngine.UIElements.KeyDownEvent = UnityEngine.UIElements.KeyDownEvent

---@return UnityEngine.UIElements.KeyDownEvent
function UnityEngine.UIElements.KeyDownEvent.New() end

---@class UnityEngine.UIElements.KeyboardEventExtensions : System.Object
UnityEngine.UIElements.KeyboardEventExtensions = {}
---@alias CS.UnityEngine.UIElements.KeyboardEventExtensions UnityEngine.UIElements.KeyboardEventExtensions
CS.UnityEngine.UIElements.KeyboardEventExtensions = UnityEngine.UIElements.KeyboardEventExtensions


---@class UnityEngine.UIElements.KeyUpEvent : UnityEngine.UIElements.KeyboardEventBase
UnityEngine.UIElements.KeyUpEvent = {}
---@alias CS.UnityEngine.UIElements.KeyUpEvent UnityEngine.UIElements.KeyUpEvent
CS.UnityEngine.UIElements.KeyUpEvent = UnityEngine.UIElements.KeyUpEvent

---@return UnityEngine.UIElements.KeyUpEvent
function UnityEngine.UIElements.KeyUpEvent.New() end

---@class UnityEngine.UIElements.GeometryChangedEvent : UnityEngine.UIElements.EventBase
---@field oldRect UnityEngine.Rect
---@field newRect UnityEngine.Rect
UnityEngine.UIElements.GeometryChangedEvent = {}
---@alias CS.UnityEngine.UIElements.GeometryChangedEvent UnityEngine.UIElements.GeometryChangedEvent
CS.UnityEngine.UIElements.GeometryChangedEvent = UnityEngine.UIElements.GeometryChangedEvent

---@return UnityEngine.UIElements.GeometryChangedEvent
function UnityEngine.UIElements.GeometryChangedEvent.New() end
---@param oldRect UnityEngine.Rect
---@param newRect UnityEngine.Rect
---@return UnityEngine.UIElements.GeometryChangedEvent
function UnityEngine.UIElements.GeometryChangedEvent.GetPooled(oldRect, newRect) end

---@class UnityEngine.UIElements.MouseCaptureDispatchingStrategy : System.Object
UnityEngine.UIElements.MouseCaptureDispatchingStrategy = {}
---@alias CS.UnityEngine.UIElements.MouseCaptureDispatchingStrategy UnityEngine.UIElements.MouseCaptureDispatchingStrategy
CS.UnityEngine.UIElements.MouseCaptureDispatchingStrategy = UnityEngine.UIElements.MouseCaptureDispatchingStrategy

---@return UnityEngine.UIElements.MouseCaptureDispatchingStrategy
function UnityEngine.UIElements.MouseCaptureDispatchingStrategy.New() end
---@param evt UnityEngine.UIElements.EventBase
---@return boolean
function UnityEngine.UIElements.MouseCaptureDispatchingStrategy:CanDispatchEvent(evt) end
---@param evt UnityEngine.UIElements.EventBase
---@param panel UnityEngine.UIElements.IPanel
function UnityEngine.UIElements.MouseCaptureDispatchingStrategy:DispatchEvent(evt, panel) end

---@class UnityEngine.UIElements.MouseCaptureDispatchingStrategy.EventBehavior
---@field None UnityEngine.UIElements.MouseCaptureDispatchingStrategy.EventBehavior
---@field IsCapturable UnityEngine.UIElements.MouseCaptureDispatchingStrategy.EventBehavior
---@field IsSentExclusivelyToCapturingElement UnityEngine.UIElements.MouseCaptureDispatchingStrategy.EventBehavior
UnityEngine.UIElements.MouseCaptureDispatchingStrategy.EventBehavior = {}
---@alias CS.UnityEngine.UIElements.MouseCaptureDispatchingStrategy.EventBehavior UnityEngine.UIElements.MouseCaptureDispatchingStrategy.EventBehavior
CS.UnityEngine.UIElements.MouseCaptureDispatchingStrategy.EventBehavior = UnityEngine.UIElements.MouseCaptureDispatchingStrategy.EventBehavior


---@class UnityEngine.UIElements.MouseEventDispatchingStrategy : System.Object
UnityEngine.UIElements.MouseEventDispatchingStrategy = {}
---@alias CS.UnityEngine.UIElements.MouseEventDispatchingStrategy UnityEngine.UIElements.MouseEventDispatchingStrategy
CS.UnityEngine.UIElements.MouseEventDispatchingStrategy = UnityEngine.UIElements.MouseEventDispatchingStrategy

---@return UnityEngine.UIElements.MouseEventDispatchingStrategy
function UnityEngine.UIElements.MouseEventDispatchingStrategy.New() end
---@param evt UnityEngine.UIElements.EventBase
---@return boolean
function UnityEngine.UIElements.MouseEventDispatchingStrategy:CanDispatchEvent(evt) end
---@param evt UnityEngine.UIElements.EventBase
---@param iPanel UnityEngine.UIElements.IPanel
function UnityEngine.UIElements.MouseEventDispatchingStrategy:DispatchEvent(evt, iPanel) end

---@class UnityEngine.UIElements.IMouseEvent
---@field modifiers UnityEngine.EventModifiers
---@field mousePosition UnityEngine.Vector2
---@field localMousePosition UnityEngine.Vector2
---@field mouseDelta UnityEngine.Vector2
---@field clickCount number
---@field button number
---@field pressedButtons number
---@field shiftKey boolean
---@field ctrlKey boolean
---@field commandKey boolean
---@field altKey boolean
---@field actionKey boolean
UnityEngine.UIElements.IMouseEvent = {}
---@alias CS.UnityEngine.UIElements.IMouseEvent UnityEngine.UIElements.IMouseEvent
CS.UnityEngine.UIElements.IMouseEvent = UnityEngine.UIElements.IMouseEvent


---@class UnityEngine.UIElements.IMouseEventInternal
---@field triggeredByOS boolean
---@field recomputeTopElementUnderMouse boolean
---@field sourcePointerEvent UnityEngine.UIElements.IPointerEvent
UnityEngine.UIElements.IMouseEventInternal = {}
---@alias CS.UnityEngine.UIElements.IMouseEventInternal UnityEngine.UIElements.IMouseEventInternal
CS.UnityEngine.UIElements.IMouseEventInternal = UnityEngine.UIElements.IMouseEventInternal


---@class UnityEngine.UIElements.MouseEventBase : UnityEngine.UIElements.EventBase[T]
---@field modifiers UnityEngine.EventModifiers
---@field mousePosition UnityEngine.Vector2
---@field localMousePosition UnityEngine.Vector2
---@field mouseDelta UnityEngine.Vector2
---@field clickCount number
---@field button number
---@field pressedButtons number
---@field shiftKey boolean
---@field ctrlKey boolean
---@field commandKey boolean
---@field altKey boolean
---@field actionKey boolean
---@field currentTarget UnityEngine.UIElements.IEventHandler
UnityEngine.UIElements.MouseEventBase = {}
---@alias CS.UnityEngine.UIElements.MouseEventBase UnityEngine.UIElements.MouseEventBase
CS.UnityEngine.UIElements.MouseEventBase = UnityEngine.UIElements.MouseEventBase

---@overload fun(systemEvent: UnityEngine.Event) : T
---@overload fun(position: UnityEngine.Vector2, button: number, clickCount: number, delta: UnityEngine.Vector2, modifiers: UnityEngine.EventModifiers) : T
---@param triggerEvent UnityEngine.UIElements.IMouseEvent
---@return T
function UnityEngine.UIElements.MouseEventBase.GetPooled(triggerEvent) end

---@class UnityEngine.UIElements.MouseDownEvent : UnityEngine.UIElements.MouseEventBase
UnityEngine.UIElements.MouseDownEvent = {}
---@alias CS.UnityEngine.UIElements.MouseDownEvent UnityEngine.UIElements.MouseDownEvent
CS.UnityEngine.UIElements.MouseDownEvent = UnityEngine.UIElements.MouseDownEvent

---@return UnityEngine.UIElements.MouseDownEvent
function UnityEngine.UIElements.MouseDownEvent.New() end
---@param systemEvent UnityEngine.Event
---@return UnityEngine.UIElements.MouseDownEvent
function UnityEngine.UIElements.MouseDownEvent.GetPooled(systemEvent) end

---@class UnityEngine.UIElements.MouseUpEvent : UnityEngine.UIElements.MouseEventBase
UnityEngine.UIElements.MouseUpEvent = {}
---@alias CS.UnityEngine.UIElements.MouseUpEvent UnityEngine.UIElements.MouseUpEvent
CS.UnityEngine.UIElements.MouseUpEvent = UnityEngine.UIElements.MouseUpEvent

---@return UnityEngine.UIElements.MouseUpEvent
function UnityEngine.UIElements.MouseUpEvent.New() end
---@param systemEvent UnityEngine.Event
---@return UnityEngine.UIElements.MouseUpEvent
function UnityEngine.UIElements.MouseUpEvent.GetPooled(systemEvent) end

---@class UnityEngine.UIElements.MouseMoveEvent : UnityEngine.UIElements.MouseEventBase
UnityEngine.UIElements.MouseMoveEvent = {}
---@alias CS.UnityEngine.UIElements.MouseMoveEvent UnityEngine.UIElements.MouseMoveEvent
CS.UnityEngine.UIElements.MouseMoveEvent = UnityEngine.UIElements.MouseMoveEvent

---@return UnityEngine.UIElements.MouseMoveEvent
function UnityEngine.UIElements.MouseMoveEvent.New() end
---@param systemEvent UnityEngine.Event
---@return UnityEngine.UIElements.MouseMoveEvent
function UnityEngine.UIElements.MouseMoveEvent.GetPooled(systemEvent) end

---@class UnityEngine.UIElements.ContextClickEvent : UnityEngine.UIElements.MouseEventBase
UnityEngine.UIElements.ContextClickEvent = {}
---@alias CS.UnityEngine.UIElements.ContextClickEvent UnityEngine.UIElements.ContextClickEvent
CS.UnityEngine.UIElements.ContextClickEvent = UnityEngine.UIElements.ContextClickEvent

---@return UnityEngine.UIElements.ContextClickEvent
function UnityEngine.UIElements.ContextClickEvent.New() end

---@class UnityEngine.UIElements.WheelEvent : UnityEngine.UIElements.MouseEventBase
---@field delta UnityEngine.Vector3
UnityEngine.UIElements.WheelEvent = {}
---@alias CS.UnityEngine.UIElements.WheelEvent UnityEngine.UIElements.WheelEvent
CS.UnityEngine.UIElements.WheelEvent = UnityEngine.UIElements.WheelEvent

---@return UnityEngine.UIElements.WheelEvent
function UnityEngine.UIElements.WheelEvent.New() end
---@param systemEvent UnityEngine.Event
---@return UnityEngine.UIElements.WheelEvent
function UnityEngine.UIElements.WheelEvent.GetPooled(systemEvent) end

---@class UnityEngine.UIElements.MouseEnterEvent : UnityEngine.UIElements.MouseEventBase
UnityEngine.UIElements.MouseEnterEvent = {}
---@alias CS.UnityEngine.UIElements.MouseEnterEvent UnityEngine.UIElements.MouseEnterEvent
CS.UnityEngine.UIElements.MouseEnterEvent = UnityEngine.UIElements.MouseEnterEvent

---@return UnityEngine.UIElements.MouseEnterEvent
function UnityEngine.UIElements.MouseEnterEvent.New() end

---@class UnityEngine.UIElements.MouseLeaveEvent : UnityEngine.UIElements.MouseEventBase
UnityEngine.UIElements.MouseLeaveEvent = {}
---@alias CS.UnityEngine.UIElements.MouseLeaveEvent UnityEngine.UIElements.MouseLeaveEvent
CS.UnityEngine.UIElements.MouseLeaveEvent = UnityEngine.UIElements.MouseLeaveEvent

---@return UnityEngine.UIElements.MouseLeaveEvent
function UnityEngine.UIElements.MouseLeaveEvent.New() end

---@class UnityEngine.UIElements.MouseEnterWindowEvent : UnityEngine.UIElements.MouseEventBase
UnityEngine.UIElements.MouseEnterWindowEvent = {}
---@alias CS.UnityEngine.UIElements.MouseEnterWindowEvent UnityEngine.UIElements.MouseEnterWindowEvent
CS.UnityEngine.UIElements.MouseEnterWindowEvent = UnityEngine.UIElements.MouseEnterWindowEvent

---@return UnityEngine.UIElements.MouseEnterWindowEvent
function UnityEngine.UIElements.MouseEnterWindowEvent.New() end

---@class UnityEngine.UIElements.MouseLeaveWindowEvent : UnityEngine.UIElements.MouseEventBase
UnityEngine.UIElements.MouseLeaveWindowEvent = {}
---@alias CS.UnityEngine.UIElements.MouseLeaveWindowEvent UnityEngine.UIElements.MouseLeaveWindowEvent
CS.UnityEngine.UIElements.MouseLeaveWindowEvent = UnityEngine.UIElements.MouseLeaveWindowEvent

---@return UnityEngine.UIElements.MouseLeaveWindowEvent
function UnityEngine.UIElements.MouseLeaveWindowEvent.New() end
---@param systemEvent UnityEngine.Event
---@return UnityEngine.UIElements.MouseLeaveWindowEvent
function UnityEngine.UIElements.MouseLeaveWindowEvent.GetPooled(systemEvent) end

---@class UnityEngine.UIElements.MouseOverEvent : UnityEngine.UIElements.MouseEventBase
UnityEngine.UIElements.MouseOverEvent = {}
---@alias CS.UnityEngine.UIElements.MouseOverEvent UnityEngine.UIElements.MouseOverEvent
CS.UnityEngine.UIElements.MouseOverEvent = UnityEngine.UIElements.MouseOverEvent

---@return UnityEngine.UIElements.MouseOverEvent
function UnityEngine.UIElements.MouseOverEvent.New() end

---@class UnityEngine.UIElements.MouseOutEvent : UnityEngine.UIElements.MouseEventBase
UnityEngine.UIElements.MouseOutEvent = {}
---@alias CS.UnityEngine.UIElements.MouseOutEvent UnityEngine.UIElements.MouseOutEvent
CS.UnityEngine.UIElements.MouseOutEvent = UnityEngine.UIElements.MouseOutEvent

---@return UnityEngine.UIElements.MouseOutEvent
function UnityEngine.UIElements.MouseOutEvent.New() end

---@class UnityEngine.UIElements.ContextualMenuPopulateEvent : UnityEngine.UIElements.MouseEventBase
---@field menu UnityEngine.UIElements.DropdownMenu
---@field triggerEvent UnityEngine.UIElements.EventBase
UnityEngine.UIElements.ContextualMenuPopulateEvent = {}
---@alias CS.UnityEngine.UIElements.ContextualMenuPopulateEvent UnityEngine.UIElements.ContextualMenuPopulateEvent
CS.UnityEngine.UIElements.ContextualMenuPopulateEvent = UnityEngine.UIElements.ContextualMenuPopulateEvent

---@return UnityEngine.UIElements.ContextualMenuPopulateEvent
function UnityEngine.UIElements.ContextualMenuPopulateEvent.New() end
---@param triggerEvent UnityEngine.UIElements.EventBase
---@param menu UnityEngine.UIElements.DropdownMenu
---@param target UnityEngine.UIElements.IEventHandler
---@param menuManager UnityEngine.UIElements.ContextualMenuManager
---@return UnityEngine.UIElements.ContextualMenuPopulateEvent
function UnityEngine.UIElements.ContextualMenuPopulateEvent.GetPooled(triggerEvent, menu, target, menuManager) end

---@class UnityEngine.UIElements.MouseEventsHelper : System.Object
UnityEngine.UIElements.MouseEventsHelper = {}
---@alias CS.UnityEngine.UIElements.MouseEventsHelper UnityEngine.UIElements.MouseEventsHelper
CS.UnityEngine.UIElements.MouseEventsHelper = UnityEngine.UIElements.MouseEventsHelper


---@class UnityEngine.UIElements.PointerEventsHelper : System.Object
UnityEngine.UIElements.PointerEventsHelper = {}
---@alias CS.UnityEngine.UIElements.PointerEventsHelper UnityEngine.UIElements.PointerEventsHelper
CS.UnityEngine.UIElements.PointerEventsHelper = UnityEngine.UIElements.PointerEventsHelper


---@class UnityEngine.UIElements.NavigationEventDispatchingStrategy : System.Object
UnityEngine.UIElements.NavigationEventDispatchingStrategy = {}
---@alias CS.UnityEngine.UIElements.NavigationEventDispatchingStrategy UnityEngine.UIElements.NavigationEventDispatchingStrategy
CS.UnityEngine.UIElements.NavigationEventDispatchingStrategy = UnityEngine.UIElements.NavigationEventDispatchingStrategy

---@return UnityEngine.UIElements.NavigationEventDispatchingStrategy
function UnityEngine.UIElements.NavigationEventDispatchingStrategy.New() end
---@param evt UnityEngine.UIElements.EventBase
---@return boolean
function UnityEngine.UIElements.NavigationEventDispatchingStrategy:CanDispatchEvent(evt) end
---@param evt UnityEngine.UIElements.EventBase
---@param panel UnityEngine.UIElements.IPanel
function UnityEngine.UIElements.NavigationEventDispatchingStrategy:DispatchEvent(evt, panel) end

---@class UnityEngine.UIElements.INavigationEvent
---@field modifiers UnityEngine.EventModifiers
---@field shiftKey boolean
---@field ctrlKey boolean
---@field commandKey boolean
---@field altKey boolean
---@field actionKey boolean
UnityEngine.UIElements.INavigationEvent = {}
---@alias CS.UnityEngine.UIElements.INavigationEvent UnityEngine.UIElements.INavigationEvent
CS.UnityEngine.UIElements.INavigationEvent = UnityEngine.UIElements.INavigationEvent


---@class UnityEngine.UIElements.NavigationDeviceType
---@field Unknown UnityEngine.UIElements.NavigationDeviceType
---@field Keyboard UnityEngine.UIElements.NavigationDeviceType
---@field NonKeyboard UnityEngine.UIElements.NavigationDeviceType
UnityEngine.UIElements.NavigationDeviceType = {}
---@alias CS.UnityEngine.UIElements.NavigationDeviceType UnityEngine.UIElements.NavigationDeviceType
CS.UnityEngine.UIElements.NavigationDeviceType = UnityEngine.UIElements.NavigationDeviceType


---@class UnityEngine.UIElements.NavigationEventBase : UnityEngine.UIElements.EventBase[T]
---@field modifiers UnityEngine.EventModifiers
---@field shiftKey boolean
---@field ctrlKey boolean
---@field commandKey boolean
---@field altKey boolean
---@field actionKey boolean
UnityEngine.UIElements.NavigationEventBase = {}
---@alias CS.UnityEngine.UIElements.NavigationEventBase UnityEngine.UIElements.NavigationEventBase
CS.UnityEngine.UIElements.NavigationEventBase = UnityEngine.UIElements.NavigationEventBase

---@param modifiers UnityEngine.EventModifiers
---@return T
function UnityEngine.UIElements.NavigationEventBase.GetPooled(modifiers) end

---@class UnityEngine.UIElements.NavigationMoveEvent : UnityEngine.UIElements.NavigationEventBase
---@field direction UnityEngine.UIElements.NavigationMoveEvent.Direction
---@field move UnityEngine.Vector2
UnityEngine.UIElements.NavigationMoveEvent = {}
---@alias CS.UnityEngine.UIElements.NavigationMoveEvent UnityEngine.UIElements.NavigationMoveEvent
CS.UnityEngine.UIElements.NavigationMoveEvent = UnityEngine.UIElements.NavigationMoveEvent

---@return UnityEngine.UIElements.NavigationMoveEvent
function UnityEngine.UIElements.NavigationMoveEvent.New() end
---@overload fun(moveVector: UnityEngine.Vector2, modifiers: UnityEngine.EventModifiers) : UnityEngine.UIElements.NavigationMoveEvent
---@param direction UnityEngine.UIElements.NavigationMoveEvent.Direction
---@param modifiers UnityEngine.EventModifiers
---@return UnityEngine.UIElements.NavigationMoveEvent
function UnityEngine.UIElements.NavigationMoveEvent.GetPooled(direction, modifiers) end

---@class UnityEngine.UIElements.NavigationMoveEvent.Direction
---@field None UnityEngine.UIElements.NavigationMoveEvent.Direction
---@field Left UnityEngine.UIElements.NavigationMoveEvent.Direction
---@field Up UnityEngine.UIElements.NavigationMoveEvent.Direction
---@field Right UnityEngine.UIElements.NavigationMoveEvent.Direction
---@field Down UnityEngine.UIElements.NavigationMoveEvent.Direction
---@field Next UnityEngine.UIElements.NavigationMoveEvent.Direction
---@field Previous UnityEngine.UIElements.NavigationMoveEvent.Direction
UnityEngine.UIElements.NavigationMoveEvent.Direction = {}
---@alias CS.UnityEngine.UIElements.NavigationMoveEvent.Direction UnityEngine.UIElements.NavigationMoveEvent.Direction
CS.UnityEngine.UIElements.NavigationMoveEvent.Direction = UnityEngine.UIElements.NavigationMoveEvent.Direction


---@class UnityEngine.UIElements.NavigationCancelEvent : UnityEngine.UIElements.NavigationEventBase
UnityEngine.UIElements.NavigationCancelEvent = {}
---@alias CS.UnityEngine.UIElements.NavigationCancelEvent UnityEngine.UIElements.NavigationCancelEvent
CS.UnityEngine.UIElements.NavigationCancelEvent = UnityEngine.UIElements.NavigationCancelEvent

---@return UnityEngine.UIElements.NavigationCancelEvent
function UnityEngine.UIElements.NavigationCancelEvent.New() end

---@class UnityEngine.UIElements.NavigationSubmitEvent : UnityEngine.UIElements.NavigationEventBase
UnityEngine.UIElements.NavigationSubmitEvent = {}
---@alias CS.UnityEngine.UIElements.NavigationSubmitEvent UnityEngine.UIElements.NavigationSubmitEvent
CS.UnityEngine.UIElements.NavigationSubmitEvent = UnityEngine.UIElements.NavigationSubmitEvent

---@return UnityEngine.UIElements.NavigationSubmitEvent
function UnityEngine.UIElements.NavigationSubmitEvent.New() end

---@class UnityEngine.UIElements.IPanelChangedEvent
UnityEngine.UIElements.IPanelChangedEvent = {}
---@alias CS.UnityEngine.UIElements.IPanelChangedEvent UnityEngine.UIElements.IPanelChangedEvent
CS.UnityEngine.UIElements.IPanelChangedEvent = UnityEngine.UIElements.IPanelChangedEvent


---@class UnityEngine.UIElements.PanelChangedEventBase : UnityEngine.UIElements.EventBase[T]
---@field originPanel UnityEngine.UIElements.IPanel
---@field destinationPanel UnityEngine.UIElements.IPanel
UnityEngine.UIElements.PanelChangedEventBase = {}
---@alias CS.UnityEngine.UIElements.PanelChangedEventBase UnityEngine.UIElements.PanelChangedEventBase
CS.UnityEngine.UIElements.PanelChangedEventBase = UnityEngine.UIElements.PanelChangedEventBase

---@param originPanel UnityEngine.UIElements.IPanel
---@param destinationPanel UnityEngine.UIElements.IPanel
---@return T
function UnityEngine.UIElements.PanelChangedEventBase.GetPooled(originPanel, destinationPanel) end

---@class UnityEngine.UIElements.AttachToPanelEvent : UnityEngine.UIElements.PanelChangedEventBase
UnityEngine.UIElements.AttachToPanelEvent = {}
---@alias CS.UnityEngine.UIElements.AttachToPanelEvent UnityEngine.UIElements.AttachToPanelEvent
CS.UnityEngine.UIElements.AttachToPanelEvent = UnityEngine.UIElements.AttachToPanelEvent

---@return UnityEngine.UIElements.AttachToPanelEvent
function UnityEngine.UIElements.AttachToPanelEvent.New() end

---@class UnityEngine.UIElements.DetachFromPanelEvent : UnityEngine.UIElements.PanelChangedEventBase
UnityEngine.UIElements.DetachFromPanelEvent = {}
---@alias CS.UnityEngine.UIElements.DetachFromPanelEvent UnityEngine.UIElements.DetachFromPanelEvent
CS.UnityEngine.UIElements.DetachFromPanelEvent = UnityEngine.UIElements.DetachFromPanelEvent

---@return UnityEngine.UIElements.DetachFromPanelEvent
function UnityEngine.UIElements.DetachFromPanelEvent.New() end

---@class UnityEngine.UIElements.PointerCaptureDispatchingStrategy : System.Object
UnityEngine.UIElements.PointerCaptureDispatchingStrategy = {}
---@alias CS.UnityEngine.UIElements.PointerCaptureDispatchingStrategy UnityEngine.UIElements.PointerCaptureDispatchingStrategy
CS.UnityEngine.UIElements.PointerCaptureDispatchingStrategy = UnityEngine.UIElements.PointerCaptureDispatchingStrategy

---@return UnityEngine.UIElements.PointerCaptureDispatchingStrategy
function UnityEngine.UIElements.PointerCaptureDispatchingStrategy.New() end
---@param evt UnityEngine.UIElements.EventBase
---@return boolean
function UnityEngine.UIElements.PointerCaptureDispatchingStrategy:CanDispatchEvent(evt) end
---@param evt UnityEngine.UIElements.EventBase
---@param panel UnityEngine.UIElements.IPanel
function UnityEngine.UIElements.PointerCaptureDispatchingStrategy:DispatchEvent(evt, panel) end

---@class UnityEngine.UIElements.PointerDeviceState : System.Object
UnityEngine.UIElements.PointerDeviceState = {}
---@alias CS.UnityEngine.UIElements.PointerDeviceState UnityEngine.UIElements.PointerDeviceState
CS.UnityEngine.UIElements.PointerDeviceState = UnityEngine.UIElements.PointerDeviceState

---@param pointerId number
---@param position UnityEngine.Vector2
---@param panel UnityEngine.UIElements.IPanel
---@param contextType UnityEngine.UIElements.ContextType
function UnityEngine.UIElements.PointerDeviceState.SavePointerPosition(pointerId, position, panel, contextType) end
---@param pointerId number
---@param buttonId number
function UnityEngine.UIElements.PointerDeviceState.PressButton(pointerId, buttonId) end
---@param pointerId number
---@param buttonId number
function UnityEngine.UIElements.PointerDeviceState.ReleaseButton(pointerId, buttonId) end
---@param pointerId number
function UnityEngine.UIElements.PointerDeviceState.ReleaseAllButtons(pointerId) end
---@param pointerId number
---@param contextType UnityEngine.UIElements.ContextType
---@return UnityEngine.Vector2
function UnityEngine.UIElements.PointerDeviceState.GetPointerPosition(pointerId, contextType) end
---@param pointerId number
---@param contextType UnityEngine.UIElements.ContextType
---@return UnityEngine.UIElements.IPanel
function UnityEngine.UIElements.PointerDeviceState.GetPanel(pointerId, contextType) end
---@param pointerId number
---@param contextType UnityEngine.UIElements.ContextType
---@param flag UnityEngine.UIElements.PointerDeviceState.LocationFlag
---@return boolean
function UnityEngine.UIElements.PointerDeviceState.HasLocationFlag(pointerId, contextType, flag) end
---@param pointerId number
---@return number
function UnityEngine.UIElements.PointerDeviceState.GetPressedButtons(pointerId) end
