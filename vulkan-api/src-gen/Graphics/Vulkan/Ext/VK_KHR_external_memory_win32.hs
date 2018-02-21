{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_HADDOCK not-home#-}
{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE MagicHash                #-}
{-# LANGUAGE PatternSynonyms          #-}
{-# LANGUAGE Strict                   #-}
{-# LANGUAGE ViewPatterns             #-}
module Graphics.Vulkan.Ext.VK_KHR_external_memory_win32
       (-- * Vulkan extension: @VK_KHR_external_memory_win32@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @James Jones @cubanismo@
        --
        -- author: @KHR@
        --
        -- type: @device@
        --
        -- Extension number: @74@
        --
        -- Required extensions: 'VK_KHR_external_memory'.
        --
        -- Protected by CPP ifdef: @VK_USE_PLATFORM_WIN32_KHR@
        --

        -- ** Required extensions: 'VK_KHR_external_memory'.
        module Graphics.Vulkan.Types.BaseTypes,
        module Graphics.Vulkan.Types.Struct.VkExportMemoryWin32HandleInfoKHR,
        module Graphics.Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagsKHR,
        module Graphics.Vulkan.Types.Struct.VkImportMemoryWin32HandleInfoKHR,
        module Graphics.Vulkan.Types.Struct.VkMemoryAllocateInfo,
        module Graphics.Vulkan.Types.Struct.VkMemoryGetWin32HandleInfoKHR,
        module Graphics.Vulkan.Types.Struct.VkMemoryWin32HandlePropertiesKHR,
        module Graphics.Vulkan.Types.Enum.VkStructureType,
        -- > #include "vk_platform.h"
        --
        -- > #include <windows.h>
        vkGetMemoryWin32HandleKHR, vkGetMemoryWin32HandlePropertiesKHR,
        module Graphics.Vulkan.Marshal,
        module Graphics.Vulkan.Types.Enum.VkResult,
        module Graphics.Vulkan.Types.Handles,
        VK_KHR_EXTERNAL_MEMORY_WIN32_SPEC_VERSION,
        pattern VK_KHR_EXTERNAL_MEMORY_WIN32_SPEC_VERSION,
        VK_KHR_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME,
        pattern VK_KHR_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME,
        pattern VK_STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_KHR,
        pattern VK_STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_KHR,
        pattern VK_STRUCTURE_TYPE_MEMORY_WIN32_HANDLE_PROPERTIES_KHR,
        pattern VK_STRUCTURE_TYPE_MEMORY_GET_WIN32_HANDLE_INFO_KHR)
       where
import           GHC.Ptr                                                       (Ptr (..))
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Types.BaseTypes
import           Graphics.Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagsKHR
import           Graphics.Vulkan.Types.Enum.VkResult
import           Graphics.Vulkan.Types.Enum.VkStructureType
import           Graphics.Vulkan.Types.Handles
import           Graphics.Vulkan.Types.Include                                 (HANDLE)
import           Graphics.Vulkan.Types.Struct.VkExportMemoryWin32HandleInfoKHR
import           Graphics.Vulkan.Types.Struct.VkImportMemoryWin32HandleInfoKHR
import           Graphics.Vulkan.Types.Struct.VkMemoryAllocateInfo
import           Graphics.Vulkan.Types.Struct.VkMemoryGetWin32HandleInfoKHR
import           Graphics.Vulkan.Types.Struct.VkMemoryWin32HandlePropertiesKHR

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_TOO_MANY_OBJECTS', 'VK_ERROR_OUT_OF_HOST_MEMORY'.
--
--   > VkResult vkGetMemoryWin32HandleKHR
--   >     ( VkDevice device
--   >     , const VkMemoryGetWin32HandleInfoKHR* pGetWin32HandleInfo
--   >     , HANDLE* pHandle
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0-extensions/man/html/vkGetMemoryWin32HandleKHR.html vkGetMemoryWin32HandleKHR registry at www.khronos.org>
foreign import ccall unsafe "vkGetMemoryWin32HandleKHR"
               vkGetMemoryWin32HandleKHR ::
               VkDevice -- ^ device
                        ->
                 Ptr VkMemoryGetWin32HandleInfoKHR -- ^ pGetWin32HandleInfo
                                                   -> Ptr HANDLE -- ^ pHandle
                                                                 -> IO VkResult

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_INVALID_EXTERNAL_HANDLE_KHR'.
--
--   > VkResult vkGetMemoryWin32HandlePropertiesKHR
--   >     ( VkDevice device
--   >     , VkExternalMemoryHandleTypeFlagBitsKHR handleType
--   >     , HANDLE handle
--   >     , VkMemoryWin32HandlePropertiesKHR* pMemoryWin32HandleProperties
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0-extensions/man/html/vkGetMemoryWin32HandlePropertiesKHR.html vkGetMemoryWin32HandlePropertiesKHR registry at www.khronos.org>
foreign import ccall unsafe "vkGetMemoryWin32HandlePropertiesKHR"
               vkGetMemoryWin32HandlePropertiesKHR ::
               VkDevice -- ^ device
                        ->
                 VkExternalMemoryHandleTypeFlagBitsKHR -- ^ handleType
                                                       ->
                   HANDLE -- ^ handle
                          -> Ptr VkMemoryWin32HandlePropertiesKHR -- ^ pMemoryWin32HandleProperties
                                                                  -> IO VkResult

pattern VK_KHR_EXTERNAL_MEMORY_WIN32_SPEC_VERSION ::
        (Num a, Eq a) => a

pattern VK_KHR_EXTERNAL_MEMORY_WIN32_SPEC_VERSION = 1

type VK_KHR_EXTERNAL_MEMORY_WIN32_SPEC_VERSION = 1

pattern VK_KHR_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME :: CString

pattern VK_KHR_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME <-
        (is_VK_KHR_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME -> True)
  where VK_KHR_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME
          = _VK_KHR_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME

{-# INLINE _VK_KHR_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME #-}

_VK_KHR_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME :: CString
_VK_KHR_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME
  = Ptr "VK_KHR_external_memory_win32\NUL"#

{-# INLINE is_VK_KHR_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME #-}

is_VK_KHR_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME :: CString -> Bool
is_VK_KHR_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME
  = eqCStrings _VK_KHR_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME

type VK_KHR_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME =
     "VK_KHR_external_memory_win32"

pattern VK_STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_KHR ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_KHR =
        VkStructureType 1000073000

pattern VK_STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_KHR ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_KHR =
        VkStructureType 1000073001

pattern VK_STRUCTURE_TYPE_MEMORY_WIN32_HANDLE_PROPERTIES_KHR ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_MEMORY_WIN32_HANDLE_PROPERTIES_KHR =
        VkStructureType 1000073002

pattern VK_STRUCTURE_TYPE_MEMORY_GET_WIN32_HANDLE_INFO_KHR ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_MEMORY_GET_WIN32_HANDLE_INFO_KHR =
        VkStructureType 1000073003
