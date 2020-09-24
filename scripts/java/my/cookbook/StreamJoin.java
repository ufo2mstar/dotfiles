// For example:

List<Integer> numbers = Arrays.asList( 4, 8, 15, 16, 23, 42 );
return numbers.stream()
        .map( n -> n.toString() )
        .collect( Collectors.joining( "," ) );

// will return "4,8,15,16,23,42".

public static String join( Collection collection, String delimiter )
{
    return collection.stream()
            .map( Object::toString )
            .collect( Collectors.joining( delimiter ) );
}