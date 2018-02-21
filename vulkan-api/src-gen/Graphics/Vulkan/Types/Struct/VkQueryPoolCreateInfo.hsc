#include "vulkan/vulkan.h"

{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MagicHash             #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE Strict                #-}
{-# LANGUAGE TypeFamilies          #-}
module Graphics.Vulkan.Types.Struct.VkQueryPoolCreateInfo
       (VkQueryPoolCreateInfo(..)) where
import           Foreign.Storable                                         (Storable (..))
import           GHC.Prim
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Internal
import           Graphics.Vulkan.Types.Bitmasks                           (VkQueryPoolCreateFlags)
import           Graphics.Vulkan.Types.Enum.VkQueryPipelineStatisticFlags (VkQueryPipelineStatisticFlags)
import           Graphics.Vulkan.Types.Enum.VkQueryType                   (VkQueryType)
import           Graphics.Vulkan.Types.Enum.VkStructureType               (VkStructureType)
import           Graphics.Vulkan.Types.StructMembers
import           System.IO.Unsafe                                         (unsafeDupablePerformIO)

-- | > typedef struct VkQueryPoolCreateInfo {
--   >     VkStructureType sType;
--   >     const void*            pNext;
--   >     VkQueryPoolCreateFlags flags;
--   >     VkQueryType            queryType;
--   >     uint32_t               queryCount;
--   >     VkQueryPipelineStatisticFlags pipelineStatistics;
--   > } VkQueryPoolCreateInfo;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0-extensions/man/html/VkQueryPoolCreateInfo.html VkQueryPoolCreateInfo registry at www.khronos.org>
data VkQueryPoolCreateInfo = VkQueryPoolCreateInfo## Addr##
                                                    ByteArray##

instance Eq VkQueryPoolCreateInfo where
        (VkQueryPoolCreateInfo## a _) == x@(VkQueryPoolCreateInfo## b _)
          = EQ == cmpBytes## (sizeOf x) a b

        {-# INLINE (==) #-}

instance Ord VkQueryPoolCreateInfo where
        (VkQueryPoolCreateInfo## a _) `compare`
          x@(VkQueryPoolCreateInfo## b _) = cmpBytes## (sizeOf x) a b

        {-# INLINE compare #-}

instance Storable VkQueryPoolCreateInfo where
        sizeOf ~_ = #{size VkQueryPoolCreateInfo}

        {-# INLINE sizeOf #-}
        alignment ~_ = #{alignment VkQueryPoolCreateInfo}

        {-# INLINE alignment #-}
        peek = peekVkData##

        {-# INLINE peek #-}
        poke = pokeVkData##

        {-# INLINE poke #-}

instance VulkanMarshalPrim VkQueryPoolCreateInfo where
        unsafeAddr (VkQueryPoolCreateInfo## a _) = a

        {-# INLINE unsafeAddr #-}
        unsafeByteArray (VkQueryPoolCreateInfo## _ b) = b

        {-# INLINE unsafeByteArray #-}
        unsafeFromByteArrayOffset off b
          = VkQueryPoolCreateInfo## (plusAddr## (byteArrayContents## b) off) b

        {-# INLINE unsafeFromByteArrayOffset #-}

instance VulkanMarshal VkQueryPoolCreateInfo where
        type StructFields VkQueryPoolCreateInfo =
             '["sType", "pNext", "flags", "queryType", "queryCount", -- ' closing tick for hsc2hs
               "pipelineStatistics"]
        type CUnionType VkQueryPoolCreateInfo = 'False -- ' closing tick for hsc2hs
        type ReturnedOnly VkQueryPoolCreateInfo = 'False -- ' closing tick for hsc2hs
        type StructExtends VkQueryPoolCreateInfo = '[] -- ' closing tick for hsc2hs

instance {-# OVERLAPPING #-} HasVkSType VkQueryPoolCreateInfo where
        type VkSTypeMType VkQueryPoolCreateInfo = VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkQueryPoolCreateInfo, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkQueryPoolCreateInfo, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkQueryPoolCreateInfo, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkQueryPoolCreateInfo, sType}

instance {-# OVERLAPPING #-} HasField "sType" VkQueryPoolCreateInfo
         where
        type FieldType "sType" VkQueryPoolCreateInfo = VkStructureType
        type FieldOptional "sType" VkQueryPoolCreateInfo = 'False -- ' closing tick for hsc2hs
        type FieldOffset "sType" VkQueryPoolCreateInfo =
             #{offset VkQueryPoolCreateInfo, sType}
        type FieldIsArray "sType" VkQueryPoolCreateInfo = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset = #{offset VkQueryPoolCreateInfo, sType}

instance CanReadField "sType" VkQueryPoolCreateInfo where
        {-# INLINE getField #-}
        getField = vkSType

        {-# INLINE readField #-}
        readField = readVkSType

instance CanWriteField "sType" VkQueryPoolCreateInfo where
        {-# INLINE writeField #-}
        writeField = writeVkSType

instance {-# OVERLAPPING #-} HasVkPNext VkQueryPoolCreateInfo where
        type VkPNextMType VkQueryPoolCreateInfo = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkQueryPoolCreateInfo, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkQueryPoolCreateInfo, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkQueryPoolCreateInfo, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkQueryPoolCreateInfo, pNext}

instance {-# OVERLAPPING #-} HasField "pNext" VkQueryPoolCreateInfo
         where
        type FieldType "pNext" VkQueryPoolCreateInfo = Ptr Void
        type FieldOptional "pNext" VkQueryPoolCreateInfo = 'False -- ' closing tick for hsc2hs
        type FieldOffset "pNext" VkQueryPoolCreateInfo =
             #{offset VkQueryPoolCreateInfo, pNext}
        type FieldIsArray "pNext" VkQueryPoolCreateInfo = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset = #{offset VkQueryPoolCreateInfo, pNext}

instance CanReadField "pNext" VkQueryPoolCreateInfo where
        {-# INLINE getField #-}
        getField = vkPNext

        {-# INLINE readField #-}
        readField = readVkPNext

instance CanWriteField "pNext" VkQueryPoolCreateInfo where
        {-# INLINE writeField #-}
        writeField = writeVkPNext

instance {-# OVERLAPPING #-} HasVkFlags VkQueryPoolCreateInfo where
        type VkFlagsMType VkQueryPoolCreateInfo = VkQueryPoolCreateFlags

        {-# NOINLINE vkFlags #-}
        vkFlags x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkQueryPoolCreateInfo, flags})

        {-# INLINE vkFlagsByteOffset #-}
        vkFlagsByteOffset ~_
          = #{offset VkQueryPoolCreateInfo, flags}

        {-# INLINE readVkFlags #-}
        readVkFlags p
          = peekByteOff p #{offset VkQueryPoolCreateInfo, flags}

        {-# INLINE writeVkFlags #-}
        writeVkFlags p
          = pokeByteOff p #{offset VkQueryPoolCreateInfo, flags}

instance {-# OVERLAPPING #-} HasField "flags" VkQueryPoolCreateInfo
         where
        type FieldType "flags" VkQueryPoolCreateInfo =
             VkQueryPoolCreateFlags
        type FieldOptional "flags" VkQueryPoolCreateInfo = 'True -- ' closing tick for hsc2hs
        type FieldOffset "flags" VkQueryPoolCreateInfo =
             #{offset VkQueryPoolCreateInfo, flags}
        type FieldIsArray "flags" VkQueryPoolCreateInfo = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = True

        {-# INLINE fieldOffset #-}
        fieldOffset = #{offset VkQueryPoolCreateInfo, flags}

instance CanReadField "flags" VkQueryPoolCreateInfo where
        {-# INLINE getField #-}
        getField = vkFlags

        {-# INLINE readField #-}
        readField = readVkFlags

instance CanWriteField "flags" VkQueryPoolCreateInfo where
        {-# INLINE writeField #-}
        writeField = writeVkFlags

instance {-# OVERLAPPING #-} HasVkQueryType VkQueryPoolCreateInfo
         where
        type VkQueryTypeMType VkQueryPoolCreateInfo = VkQueryType

        {-# NOINLINE vkQueryType #-}
        vkQueryType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkQueryPoolCreateInfo, queryType})

        {-# INLINE vkQueryTypeByteOffset #-}
        vkQueryTypeByteOffset ~_
          = #{offset VkQueryPoolCreateInfo, queryType}

        {-# INLINE readVkQueryType #-}
        readVkQueryType p
          = peekByteOff p #{offset VkQueryPoolCreateInfo, queryType}

        {-# INLINE writeVkQueryType #-}
        writeVkQueryType p
          = pokeByteOff p #{offset VkQueryPoolCreateInfo, queryType}

instance {-# OVERLAPPING #-}
         HasField "queryType" VkQueryPoolCreateInfo where
        type FieldType "queryType" VkQueryPoolCreateInfo = VkQueryType
        type FieldOptional "queryType" VkQueryPoolCreateInfo = 'False -- ' closing tick for hsc2hs
        type FieldOffset "queryType" VkQueryPoolCreateInfo =
             #{offset VkQueryPoolCreateInfo, queryType}
        type FieldIsArray "queryType" VkQueryPoolCreateInfo = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkQueryPoolCreateInfo, queryType}

instance CanReadField "queryType" VkQueryPoolCreateInfo where
        {-# INLINE getField #-}
        getField = vkQueryType

        {-# INLINE readField #-}
        readField = readVkQueryType

instance CanWriteField "queryType" VkQueryPoolCreateInfo where
        {-# INLINE writeField #-}
        writeField = writeVkQueryType

instance {-# OVERLAPPING #-} HasVkQueryCount VkQueryPoolCreateInfo
         where
        type VkQueryCountMType VkQueryPoolCreateInfo = Word32

        {-# NOINLINE vkQueryCount #-}
        vkQueryCount x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkQueryPoolCreateInfo, queryCount})

        {-# INLINE vkQueryCountByteOffset #-}
        vkQueryCountByteOffset ~_
          = #{offset VkQueryPoolCreateInfo, queryCount}

        {-# INLINE readVkQueryCount #-}
        readVkQueryCount p
          = peekByteOff p #{offset VkQueryPoolCreateInfo, queryCount}

        {-# INLINE writeVkQueryCount #-}
        writeVkQueryCount p
          = pokeByteOff p #{offset VkQueryPoolCreateInfo, queryCount}

instance {-# OVERLAPPING #-}
         HasField "queryCount" VkQueryPoolCreateInfo where
        type FieldType "queryCount" VkQueryPoolCreateInfo = Word32
        type FieldOptional "queryCount" VkQueryPoolCreateInfo = 'False -- ' closing tick for hsc2hs
        type FieldOffset "queryCount" VkQueryPoolCreateInfo =
             #{offset VkQueryPoolCreateInfo, queryCount}
        type FieldIsArray "queryCount" VkQueryPoolCreateInfo = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkQueryPoolCreateInfo, queryCount}

instance CanReadField "queryCount" VkQueryPoolCreateInfo where
        {-# INLINE getField #-}
        getField = vkQueryCount

        {-# INLINE readField #-}
        readField = readVkQueryCount

instance CanWriteField "queryCount" VkQueryPoolCreateInfo where
        {-# INLINE writeField #-}
        writeField = writeVkQueryCount

instance {-# OVERLAPPING #-}
         HasVkPipelineStatistics VkQueryPoolCreateInfo where
        type VkPipelineStatisticsMType VkQueryPoolCreateInfo =
             VkQueryPipelineStatisticFlags

        {-# NOINLINE vkPipelineStatistics #-}
        vkPipelineStatistics x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkQueryPoolCreateInfo, pipelineStatistics})

        {-# INLINE vkPipelineStatisticsByteOffset #-}
        vkPipelineStatisticsByteOffset ~_
          = #{offset VkQueryPoolCreateInfo, pipelineStatistics}

        {-# INLINE readVkPipelineStatistics #-}
        readVkPipelineStatistics p
          = peekByteOff p #{offset VkQueryPoolCreateInfo, pipelineStatistics}

        {-# INLINE writeVkPipelineStatistics #-}
        writeVkPipelineStatistics p
          = pokeByteOff p #{offset VkQueryPoolCreateInfo, pipelineStatistics}

instance {-# OVERLAPPING #-}
         HasField "pipelineStatistics" VkQueryPoolCreateInfo where
        type FieldType "pipelineStatistics" VkQueryPoolCreateInfo =
             VkQueryPipelineStatisticFlags
        type FieldOptional "pipelineStatistics" VkQueryPoolCreateInfo =
             'True -- ' closing tick for hsc2hs
        type FieldOffset "pipelineStatistics" VkQueryPoolCreateInfo =
             #{offset VkQueryPoolCreateInfo, pipelineStatistics}
        type FieldIsArray "pipelineStatistics" VkQueryPoolCreateInfo =
             'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = True

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkQueryPoolCreateInfo, pipelineStatistics}

instance CanReadField "pipelineStatistics" VkQueryPoolCreateInfo
         where
        {-# INLINE getField #-}
        getField = vkPipelineStatistics

        {-# INLINE readField #-}
        readField = readVkPipelineStatistics

instance CanWriteField "pipelineStatistics" VkQueryPoolCreateInfo
         where
        {-# INLINE writeField #-}
        writeField = writeVkPipelineStatistics

instance Show VkQueryPoolCreateInfo where
        showsPrec d x
          = showString "VkQueryPoolCreateInfo {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkFlags = " .
                            showsPrec d (vkFlags x) .
                              showString ", " .
                                showString "vkQueryType = " .
                                  showsPrec d (vkQueryType x) .
                                    showString ", " .
                                      showString "vkQueryCount = " .
                                        showsPrec d (vkQueryCount x) .
                                          showString ", " .
                                            showString "vkPipelineStatistics = " .
                                              showsPrec d (vkPipelineStatistics x) . showChar '}'
