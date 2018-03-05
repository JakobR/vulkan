#include "vulkan/vulkan.h"

{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MagicHash             #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE Strict                #-}
{-# LANGUAGE TypeApplications      #-}
{-# LANGUAGE TypeFamilies          #-}
module Graphics.Vulkan.Types.Struct.VkFenceCreateInfo
       (VkFenceCreateInfo(..)) where
import           Foreign.Storable                              (Storable (..))
import           GHC.Prim
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Internal
import           Graphics.Vulkan.Types.Enum.VkFenceCreateFlags (VkFenceCreateFlags)
import           Graphics.Vulkan.Types.Enum.VkStructureType    (VkStructureType)
import           System.IO.Unsafe                              (unsafeDupablePerformIO)

-- | > typedef struct VkFenceCreateInfo {
--   >     VkStructureType sType;
--   >     const void*            pNext;
--   >     VkFenceCreateFlags     flags;
--   > } VkFenceCreateInfo;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0-extensions/man/html/VkFenceCreateInfo.html VkFenceCreateInfo registry at www.khronos.org>
data VkFenceCreateInfo = VkFenceCreateInfo## Addr## ByteArray##

instance Eq VkFenceCreateInfo where
        (VkFenceCreateInfo## a _) == x@(VkFenceCreateInfo## b _)
          = EQ == cmpBytes## (sizeOf x) a b

        {-# INLINE (==) #-}

instance Ord VkFenceCreateInfo where
        (VkFenceCreateInfo## a _) `compare` x@(VkFenceCreateInfo## b _)
          = cmpBytes## (sizeOf x) a b

        {-# INLINE compare #-}

instance Storable VkFenceCreateInfo where
        sizeOf ~_ = #{size VkFenceCreateInfo}

        {-# INLINE sizeOf #-}
        alignment ~_ = #{alignment VkFenceCreateInfo}

        {-# INLINE alignment #-}
        peek = peekVkData##

        {-# INLINE peek #-}
        poke = pokeVkData##

        {-# INLINE poke #-}

instance VulkanMarshalPrim VkFenceCreateInfo where
        unsafeAddr (VkFenceCreateInfo## a _) = a

        {-# INLINE unsafeAddr #-}
        unsafeByteArray (VkFenceCreateInfo## _ b) = b

        {-# INLINE unsafeByteArray #-}
        unsafeFromByteArrayOffset off b
          = VkFenceCreateInfo## (plusAddr## (byteArrayContents## b) off) b

        {-# INLINE unsafeFromByteArrayOffset #-}

instance VulkanMarshal VkFenceCreateInfo where
        type StructFields VkFenceCreateInfo = '["sType", "pNext", "flags"] -- ' closing tick for hsc2hs
        type CUnionType VkFenceCreateInfo = 'False -- ' closing tick for hsc2hs
        type ReturnedOnly VkFenceCreateInfo = 'False -- ' closing tick for hsc2hs
        type StructExtends VkFenceCreateInfo = '[] -- ' closing tick for hsc2hs

instance {-# OVERLAPPING #-} HasField "sType" VkFenceCreateInfo
         where
        type FieldType "sType" VkFenceCreateInfo = VkStructureType
        type FieldOptional "sType" VkFenceCreateInfo = 'False -- ' closing tick for hsc2hs
        type FieldOffset "sType" VkFenceCreateInfo =
             #{offset VkFenceCreateInfo, sType}
        type FieldIsArray "sType" VkFenceCreateInfo = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset = #{offset VkFenceCreateInfo, sType}

instance {-# OVERLAPPING #-} CanReadField "sType" VkFenceCreateInfo
         where
        {-# NOINLINE getField #-}
        getField x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkFenceCreateInfo, sType})

        {-# INLINE readField #-}
        readField p
          = peekByteOff p #{offset VkFenceCreateInfo, sType}

instance {-# OVERLAPPING #-}
         CanWriteField "sType" VkFenceCreateInfo where
        {-# INLINE writeField #-}
        writeField p
          = pokeByteOff p #{offset VkFenceCreateInfo, sType}

instance {-# OVERLAPPING #-} HasField "pNext" VkFenceCreateInfo
         where
        type FieldType "pNext" VkFenceCreateInfo = Ptr Void
        type FieldOptional "pNext" VkFenceCreateInfo = 'False -- ' closing tick for hsc2hs
        type FieldOffset "pNext" VkFenceCreateInfo =
             #{offset VkFenceCreateInfo, pNext}
        type FieldIsArray "pNext" VkFenceCreateInfo = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset = #{offset VkFenceCreateInfo, pNext}

instance {-# OVERLAPPING #-} CanReadField "pNext" VkFenceCreateInfo
         where
        {-# NOINLINE getField #-}
        getField x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkFenceCreateInfo, pNext})

        {-# INLINE readField #-}
        readField p
          = peekByteOff p #{offset VkFenceCreateInfo, pNext}

instance {-# OVERLAPPING #-}
         CanWriteField "pNext" VkFenceCreateInfo where
        {-# INLINE writeField #-}
        writeField p
          = pokeByteOff p #{offset VkFenceCreateInfo, pNext}

instance {-# OVERLAPPING #-} HasField "flags" VkFenceCreateInfo
         where
        type FieldType "flags" VkFenceCreateInfo = VkFenceCreateFlags
        type FieldOptional "flags" VkFenceCreateInfo = 'True -- ' closing tick for hsc2hs
        type FieldOffset "flags" VkFenceCreateInfo =
             #{offset VkFenceCreateInfo, flags}
        type FieldIsArray "flags" VkFenceCreateInfo = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = True

        {-# INLINE fieldOffset #-}
        fieldOffset = #{offset VkFenceCreateInfo, flags}

instance {-# OVERLAPPING #-} CanReadField "flags" VkFenceCreateInfo
         where
        {-# NOINLINE getField #-}
        getField x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkFenceCreateInfo, flags})

        {-# INLINE readField #-}
        readField p
          = peekByteOff p #{offset VkFenceCreateInfo, flags}

instance {-# OVERLAPPING #-}
         CanWriteField "flags" VkFenceCreateInfo where
        {-# INLINE writeField #-}
        writeField p
          = pokeByteOff p #{offset VkFenceCreateInfo, flags}

instance Show VkFenceCreateInfo where
        showsPrec d x
          = showString "VkFenceCreateInfo {" .
              showString "sType = " .
                showsPrec d (getField @"sType" x) .
                  showString ", " .
                    showString "pNext = " .
                      showsPrec d (getField @"pNext" x) .
                        showString ", " .
                          showString "flags = " .
                            showsPrec d (getField @"flags" x) . showChar '}'