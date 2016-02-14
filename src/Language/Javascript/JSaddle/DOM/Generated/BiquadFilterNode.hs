{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.BiquadFilterNode
       (getFrequencyResponse, pattern LOWPASS, pattern HIGHPASS,
        pattern BANDPASS, pattern LOWSHELF, pattern HIGHSHELF,
        pattern PEAKING, pattern NOTCH, pattern ALLPASS, setType, getType,
        getFrequency, getDetune, getQ, getGain, BiquadFilterNode,
        castToBiquadFilterNode, gTypeBiquadFilterNode)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.getFrequencyResponse Mozilla BiquadFilterNode.getFrequencyResponse documentation> 
getFrequencyResponse ::
                     (MonadDOM m, IsFloat32Array frequencyHz,
                      IsFloat32Array magResponse, IsFloat32Array phaseResponse) =>
                       BiquadFilterNode ->
                         Maybe frequencyHz ->
                           Maybe magResponse -> Maybe phaseResponse -> m ()
getFrequencyResponse self frequencyHz magResponse phaseResponse
  = liftDOM
      (void
         (self ^. jsf "getFrequencyResponse"
            [toJSVal frequencyHz, toJSVal magResponse, toJSVal phaseResponse]))
pattern LOWPASS = 0
pattern HIGHPASS = 1
pattern BANDPASS = 2
pattern LOWSHELF = 3
pattern HIGHSHELF = 4
pattern PEAKING = 5
pattern NOTCH = 6
pattern ALLPASS = 7

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.type Mozilla BiquadFilterNode.type documentation> 
setType ::
        (MonadDOM m, ToJSString val) => BiquadFilterNode -> val -> m ()
setType self val = liftDOM (self ^. jss "type" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.type Mozilla BiquadFilterNode.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => BiquadFilterNode -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.frequency Mozilla BiquadFilterNode.frequency documentation> 
getFrequency ::
             (MonadDOM m) => BiquadFilterNode -> m (Maybe AudioParam)
getFrequency self
  = liftDOM ((self ^. js "frequency") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.detune Mozilla BiquadFilterNode.detune documentation> 
getDetune ::
          (MonadDOM m) => BiquadFilterNode -> m (Maybe AudioParam)
getDetune self = liftDOM ((self ^. js "detune") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.Q Mozilla BiquadFilterNode.Q documentation> 
getQ :: (MonadDOM m) => BiquadFilterNode -> m (Maybe AudioParam)
getQ self = liftDOM ((self ^. js "Q") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.gain Mozilla BiquadFilterNode.gain documentation> 
getGain :: (MonadDOM m) => BiquadFilterNode -> m (Maybe AudioParam)
getGain self = liftDOM ((self ^. js "gain") >>= fromJSVal)