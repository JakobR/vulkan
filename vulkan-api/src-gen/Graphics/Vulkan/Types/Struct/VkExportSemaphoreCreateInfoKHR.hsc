#include "vulkan/vulkan.h"

{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MagicHash             #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE Strict                #-}
{-# LANGUAGE TypeApplications      #-}
{-# LANGUAGE TypeFamilies          #-}
module Graphics.Vulkan.Types.Struct.VkExportSemaphoreCreateInfoKHR
       (VkExportSemaphoreCreateInfoKHR(..)) where
import           Foreign.Storable
                                                                                   (Storable (..))
import           GHC.Prim
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Internal
import           Graphics.Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlagsKHR
                                                                                   (VkExternalSemaphoreHandleTypeFlagsKHR)
import           Graphics.Vulkan.Types.Enum.VkStructureType
                                                                                   (VkStructureType)
import           Graphics.Vulkan.Types.Struct.VkSemaphoreCreateInfo
                                                                                   (VkSemaphoreCreateInfo)
import           System.IO.Unsafe
                                                                                   (unsafeDupablePerformIO)

-- | > typedef struct VkExportSemaphoreCreateInfoKHR {
--   >     VkStructureType sType;
--   >     const void*                      pNext;
--   >     VkExternalSemaphoreHandleTypeFlagsKHR handleTypes;
--   > } VkExportSemaphoreCreateInfoKHR;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0-extensions/man/html/VkExportSemaphoreCreateInfoKHR.html VkExportSemaphoreCreateInfoKHR registry at www.khronos.org>
data VkExportSemaphoreCreateInfoKHR = VkExportSemaphoreCreateInfoKHR## Addr##
                                                                      ByteArray##

instance Eq VkExportSemaphoreCreateInfoKHR where
        (VkExportSemaphoreCreateInfoKHR## a _) ==
          x@(VkExportSemaphoreCreateInfoKHR## b _)
          = EQ == cmpBytes## (sizeOf x) a b

        {-# INLINE (==) #-}

instance Ord VkExportSemaphoreCreateInfoKHR where
        (VkExportSemaphoreCreateInfoKHR## a _) `compare`
          x@(VkExportSemaphoreCreateInfoKHR## b _) = cmpBytes## (sizeOf x) a b

        {-# INLINE compare #-}

instance Storable VkExportSemaphoreCreateInfoKHR where
        sizeOf ~_ = #{size VkExportSemaphoreCreateInfoKHR}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkExportSemaphoreCreateInfoKHR}

        {-# INLINE alignment #-}
        peek = peekVkData##

        {-# INLINE peek #-}
        poke = pokeVkData##

        {-# INLINE poke #-}

instance VulkanMarshalPrim VkExportSemaphoreCreateInfoKHR where
        unsafeAddr (VkExportSemaphoreCreateInfoKHR## a _) = a

        {-# INLINE unsafeAddr #-}
        unsafeByteArray (VkExportSemaphoreCreateInfoKHR## _ b) = b

        {-# INLINE unsafeByteArray #-}
        unsafeFromByteArrayOffset off b
          = VkExportSemaphoreCreateInfoKHR##
              (plusAddr## (byteArrayContents## b) off)
              b

        {-# INLINE unsafeFromByteArrayOffset #-}

instance VulkanMarshal VkExportSemaphoreCreateInfoKHR where
        type StructFields VkExportSemaphoreCreateInfoKHR =
             '["sType", "pNext", "handleTypes"] -- ' closing tick for hsc2hs
        type CUnionType VkExportSemaphoreCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type ReturnedOnly VkExportSemaphoreCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type StructExtends VkExportSemaphoreCreateInfoKHR =
             '[VkSemaphoreCreateInfo] -- ' closing tick for hsc2hs

instance {-# OVERLAPPING #-}
         HasField "sType" VkExportSemaphoreCreateInfoKHR where
        type FieldType "sType" VkExportSemaphoreCreateInfoKHR =
             VkStructureType
        type FieldOptional "sType" VkExportSemaphoreCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type FieldOffset "sType" VkExportSemaphoreCreateInfoKHR =
             #{offset VkExportSemaphoreCreateInfoKHR, sType}
        type FieldIsArray "sType" VkExportSemaphoreCreateInfoKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkExportSemaphoreCreateInfoKHR, sType}

instance {-# OVERLAPPING #-}
         CanReadField "sType" VkExportSemaphoreCreateInfoKHR where
        {-# NOINLINE getField #-}
        getField x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkExportSemaphoreCreateInfoKHR, sType})

        {-# INLINE readField #-}
        readField p
          = peekByteOff p #{offset VkExportSemaphoreCreateInfoKHR, sType}

instance {-# OVERLAPPING #-}
         CanWriteField "sType" VkExportSemaphoreCreateInfoKHR where
        {-# INLINE writeField #-}
        writeField p
          = pokeByteOff p #{offset VkExportSemaphoreCreateInfoKHR, sType}

instance {-# OVERLAPPING #-}
         HasField "pNext" VkExportSemaphoreCreateInfoKHR where
        type FieldType "pNext" VkExportSemaphoreCreateInfoKHR = Ptr Void
        type FieldOptional "pNext" VkExportSemaphoreCreateInfoKHR = 'False -- ' closing tick for hsc2hs
        type FieldOffset "pNext" VkExportSemaphoreCreateInfoKHR =
             #{offset VkExportSemaphoreCreateInfoKHR, pNext}
        type FieldIsArray "pNext" VkExportSemaphoreCreateInfoKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkExportSemaphoreCreateInfoKHR, pNext}

instance {-# OVERLAPPING #-}
         CanReadField "pNext" VkExportSemaphoreCreateInfoKHR where
        {-# NOINLINE getField #-}
        getField x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkExportSemaphoreCreateInfoKHR, pNext})

        {-# INLINE readField #-}
        readField p
          = peekByteOff p #{offset VkExportSemaphoreCreateInfoKHR, pNext}

instance {-# OVERLAPPING #-}
         CanWriteField "pNext" VkExportSemaphoreCreateInfoKHR where
        {-# INLINE writeField #-}
        writeField p
          = pokeByteOff p #{offset VkExportSemaphoreCreateInfoKHR, pNext}

instance {-# OVERLAPPING #-}
         HasField "handleTypes" VkExportSemaphoreCreateInfoKHR where
        type FieldType "handleTypes" VkExportSemaphoreCreateInfoKHR =
             VkExternalSemaphoreHandleTypeFlagsKHR
        type FieldOptional "handleTypes" VkExportSemaphoreCreateInfoKHR =
             'True -- ' closing tick for hsc2hs
        type FieldOffset "handleTypes" VkExportSemaphoreCreateInfoKHR =
             #{offset VkExportSemaphoreCreateInfoKHR, handleTypes}
        type FieldIsArray "handleTypes" VkExportSemaphoreCreateInfoKHR =
             'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = True

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkExportSemaphoreCreateInfoKHR, handleTypes}

instance {-# OVERLAPPING #-}
         CanReadField "handleTypes" VkExportSemaphoreCreateInfoKHR where
        {-# NOINLINE getField #-}
        getField x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkExportSemaphoreCreateInfoKHR, handleTypes})

        {-# INLINE readField #-}
        readField p
          = peekByteOff p #{offset VkExportSemaphoreCreateInfoKHR, handleTypes}

instance {-# OVERLAPPING #-}
         CanWriteField "handleTypes" VkExportSemaphoreCreateInfoKHR where
        {-# INLINE writeField #-}
        writeField p
          = pokeByteOff p #{offset VkExportSemaphoreCreateInfoKHR, handleTypes}

instance Show VkExportSemaphoreCreateInfoKHR where
        showsPrec d x
          = showString "VkExportSemaphoreCreateInfoKHR {" .
              showString "sType = " .
                showsPrec d (getField @"sType" x) .
                  showString ", " .
                    showString "pNext = " .
                      showsPrec d (getField @"pNext" x) .
                        showString ", " .
                          showString "handleTypes = " .
                            showsPrec d (getField @"handleTypes" x) . showChar '}'