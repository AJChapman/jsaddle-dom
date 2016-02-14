{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.RequestAnimationFrameCallback
       (newRequestAnimationFrameCallback,
        newRequestAnimationFrameCallbackSync,
        newRequestAnimationFrameCallbackAsync,
        RequestAnimationFrameCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RequestAnimationFrameCallback Mozilla RequestAnimationFrameCallback documentation> 
newRequestAnimationFrameCallback ::
                                 (MonadDOM m) =>
                                   (Double -> JSM ()) -> m RequestAnimationFrameCallback
newRequestAnimationFrameCallback callback
  = liftDOM
      (RequestAnimationFrameCallback . Callback <$>
         function ""
           (\ _ _ [highResTime] ->
              fromJSValUnchecked highResTime >>=
                \ highResTime' -> callback highResTime'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RequestAnimationFrameCallback Mozilla RequestAnimationFrameCallback documentation> 
newRequestAnimationFrameCallbackSync ::
                                     (MonadDOM m) =>
                                       (Double -> JSM ()) -> m RequestAnimationFrameCallback
newRequestAnimationFrameCallbackSync callback
  = liftDOM
      (RequestAnimationFrameCallback . Callback <$>
         function ""
           (\ _ _ [highResTime] ->
              fromJSValUnchecked highResTime >>=
                \ highResTime' -> callback highResTime'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RequestAnimationFrameCallback Mozilla RequestAnimationFrameCallback documentation> 
newRequestAnimationFrameCallbackAsync ::
                                      (MonadDOM m) =>
                                        (Double -> JSM ()) -> m RequestAnimationFrameCallback
newRequestAnimationFrameCallbackAsync callback
  = liftDOM
      (RequestAnimationFrameCallback . Callback <$>
         function ""
           (\ _ _ [highResTime] ->
              fromJSValUnchecked highResTime >>=
                \ highResTime' -> callback highResTime'))