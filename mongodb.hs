build-depends:
    base >= 4.7 && < 5,
    mongodb >= 3.3.0
import qualified Data.Text as T
import qualified Database.MongoDB as Mongo
main :: IO ()
main = do
    pipe <- Mongo.connect $ Mongo.host "localhost"
    putStrLn "Connected to MongoDB!"
    Mongo.close pipe


insertDoc :: Mongo.Pipe -> IO ()
insertDoc pipe = do
    let collection = "myCollection"
        document = ["name" =: "John", "age" =: 30]
    Mongo.access pipe Mongo.master "myDatabase" $
        Mongo.insert collection document
    putStrLn "Document inserted!"
