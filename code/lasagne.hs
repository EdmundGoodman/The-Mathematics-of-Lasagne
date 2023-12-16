-- A simple Haskell representation of the Lasagne monoid.
--
-- To play with some toy examples, first load the module
-- into a Haskell repl such as `ghci`, then use the
-- defined type. For example, stacking lasagnes of 5 and
-- 6 layers respectively gives 11 layers:
--
-- ghci> :load lasagne.hs
-- ghci> Lasagne 5 <> Lasagne 6
-- Lasagne 11


-- The Lasagne type can be considered a simple wrapper
-- of the integer type, semantically representing
-- the number of layers in the lasagne.
newtype Lasagne = Lasagne Int
    deriving (Show, Num)

-- The stacking operating can be considered integer 
-- addition of the number of layers.
instance Semigroup Lasagne where
    (<>) = (+)

-- The identity element is the empty (zero-layer) Lasagne.
instance Monoid Lasagne where
    mempty = Lasagne 0

