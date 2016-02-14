{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.RadioNodeList
       (_get, setValue, getValue, RadioNodeList, castToRadioNodeList,
        gTypeRadioNodeList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList._get Mozilla RadioNodeList._get documentation> 
_get :: (MonadDOM m) => RadioNodeList -> Word -> m (Maybe Node)
_get self index
  = liftDOM ((self ^. jsf "_get" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList.value Mozilla RadioNodeList.value documentation> 
setValue ::
         (MonadDOM m, ToJSString val) => RadioNodeList -> val -> m ()
setValue self val = liftDOM (self ^. jss "value" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList.value Mozilla RadioNodeList.value documentation> 
getValue ::
         (MonadDOM m, FromJSString result) => RadioNodeList -> m result
getValue self
  = liftDOM ((self ^. js "value") >>= fromJSValUnchecked)