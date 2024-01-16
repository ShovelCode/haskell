import Data.Functor.Identity
import Control.Monad.Trans.Reader

-- Define a natural transformation from Identity to Reader
natTrans :: Functor f => Identity a -> ReaderT () f a
natTrans (Identity x) = ReaderT (const (fmap (const x)))

main :: IO ()
main = do
    let identityValue = Identity 42
    let readerValue = runReaderT (natTrans identityValue) ()
    print readerValue
