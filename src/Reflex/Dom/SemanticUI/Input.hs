{-# LANGUAGE ConstraintKinds          #-}
{-# LANGUAGE CPP                      #-}
{-# LANGUAGE FlexibleContexts         #-}
{-# LANGUAGE FlexibleInstances        #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI            #-}
{-# LANGUAGE MultiParamTypeClasses    #-}
{-# LANGUAGE OverloadedStrings        #-}
{-# LANGUAGE RecordWildCards          #-}
{-# LANGUAGE RecursiveDo              #-}
{-# LANGUAGE ScopedTypeVariables      #-}
{-# LANGUAGE TypeFamilies             #-}
{-# LANGUAGE UndecidableInstances     #-}

module Reflex.Dom.SemanticUI.Input where

------------------------------------------------------------------------------
import           Data.Default
import           Data.Maybe
import           Data.Monoid
import           Data.Text (Text)
import qualified Data.Text as T
import           Reflex.Dom hiding (fromJSString)
------------------------------------------------------------------------------
import           Reflex.Dom.SemanticUI.Common
import           Reflex.Dom.SemanticUI.Icon
------------------------------------------------------------------------------

data UiInput = UiInput
    { _uiInput_size       :: Maybe UiSize
    , _uiInput_left       :: Maybe UiLeft
    , _uiInput_loading    :: Maybe UiLoading
    , _uiInput_disabled   :: Maybe UiDisabled
    , _uiInput_error      :: Maybe UiError
    , _uiInput_custom     :: Maybe Text
    } deriving (Eq,Show)

instance Default UiInput where
  def = UiInput def def def def def def

instance UiHasSize UiInput where
  uiSetSize s i = i { _uiInput_size = Just s }

instance UiHasLoading UiInput where
  loading i = i { _uiInput_loading = Just UiLoading }

instance UiHasLeft UiInput where
  uiLeft i = i { _uiInput_left = Just UiLeft }

instance UiHasError UiInput where
  hasError i = i { _uiInput_error = Just UiError }

instance UiHasCustom UiInput where
  custom s i = i { _uiInput_custom = Just s }

uiInputAttrs :: UiInput -> Text
uiInputAttrs UiInput{..} = T.unwords $ catMaybes
    [ uiText <$> _uiInput_size
    , uiText <$> _uiInput_left
    , (<> " icon") . uiText <$> _uiInput_loading
    , uiText <$> _uiInput_disabled
    , uiText <$> _uiInput_error
    , _uiInput_custom
    ]

uiInput
    :: MonadWidget t m
    => Dynamic t UiInput
    -> m a
    -> m a
uiInput iDyn children =
    elDynAttr "div" (mkAttrs <$> iDyn) children
  where
    mkAttrs i = "class" =: T.unwords ["ui", uiInputAttrs i, "input"]

uiTextInput'
    :: MonadWidget t m
    => Dynamic t UiInput
    -> TextInputConfig t
    -> m a
    -> m (TextInput t, a)
uiTextInput' iDyn tic c =
    uiInput iDyn $ do
      iRes <- textInput tic
      cRes <- c
      return (iRes, cRes)

uiTextInput
    :: MonadWidget t m
    => Dynamic t UiInput
    -> TextInputConfig t
    -> m (TextInput t)
uiTextInput iDyn c = do
    (res,_) <- uiTextInput' iDyn c blank
    return res

uiIconTextInput
    :: MonadWidget t m
    => Text
    -> Dynamic t UiIcon
    -> Dynamic t UiInput
    -> TextInputConfig t
    -> m (TextInput t, Event t ())
uiIconTextInput iconType iconDyn inputDyn c =
    uiTextInput' (modCustom (addCustom "icon") <$> inputDyn) c $ uiIcon iconType iconDyn
  where
    modCustom :: (Maybe Text -> Maybe Text) -> UiInput -> UiInput
    modCustom f i = i { _uiInput_custom = f (_uiInput_custom i) }
