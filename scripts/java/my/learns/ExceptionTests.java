
    @Test
    //    public void throwTest() throws Throwable {
        public void throwTest() {
    //        when(nowProvider.getNow()).thenThrow(new Error("test"));
    
            try {
    //            nowProvider.getNow();
    
    //            throw
    //            new Error("test");
    //            new Exception("test");
    //            new Throwable("test");
                throw new
    //                    Error
    //                    Exception
                        IOException
    //                    Throwable
    //                    EOFException
    //                    RuntimeException
                        ("test");
            } catch (RuntimeException | Error e){
                System.out.println("RuntimeException Error catch - " + e.toString());
    //            handle(new Exception(e.getClass()+ ": " + e.getMessage()));
            } catch (EOFException e){
                System.out.println("RuntimeException catch - " + e.toString());
                try {
                    throw new Throwable("catch");
                } catch (Throwable k){
                    throw new RuntimeException("sdf");
                }
            } catch (Exception e){
                System.out.println("Exception catch - " + e.toString());
    //        } catch (Error e){
    //            System.out.println("Error catch - " + e.toString());
            } catch (Throwable e) {
                System.out.println("Throwable catch - " + e.toString());
            }
        }