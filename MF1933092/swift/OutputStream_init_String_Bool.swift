import Foundation
/**类名_方法名(_形参类型)*
 *  @author: MF1933092 王国新
 *  @className: OutputStream_init_String_Bool
 *  @apiSignature: OutputStream$init?(toFileAtPath path: String, append shouldAppend: Bool)
 *  @description: Test swift api OutputStream$init?(toFileAtPath path: String, append shouldAppend: Bool)
 *  @Map:java.io.FileOutputStream$FileOutputStream(File file, boolean append)
 */
class OutputStream_init_String_Bool{
     /**
     * input: 2
     * toFileAtPath toFileAtPath="wgx_test.txt"
     * shouldAppend shouldAppend = true
     * output: 1
     * ret0 OutputStream$ret0
     * OutputStream$ret0-OutputStream$init?(toFileAtPath path: String, append shouldAppend: Bool) & String$path="test.txt";Bool$shouldAppend=true &https://stackoverflow.com/questions/26989493/how-to-open-file-and-append-a-string-in-it-swift;https://stackoverflow.com/questions/26331636/writing-a-string-to-an-nsoutputstream-in-swift
     */
    static func init0(){
        let toFileAtPath="wgx_test1.txt"
        let shouldAppend = true
        let out0 = OutputStream(toFileAtPath: toFileAtPath, append: shouldAppend);
        let buffer1 = "hello world"
        out0!.open()
        out0!.write(buffer1, maxLength: 6)
        out0!.close()

        let out1 = OutputStream(toFileAtPath: toFileAtPath, append: shouldAppend);
        let buffer2 = "world"
        out1!.open()
        out1!.write(buffer2, maxLength: 6)
        out1!.close()

        let inp=InputStream(fileAtPath:toFileAtPath)
        var data=[UInt8](repeating: 0, count: 11)
        inp?.open()
        inp?.read(&data, maxLength: 11)
        let str = String(bytes: data, encoding: String.Encoding.utf8)
        assert(str! == "hello world")
        print(str!)
    }
}
OutputStream_init_String_Bool.init0()