 precision lowp float;
 
 varying highp vec2 textureCoordinate;
 
 uniform sampler2D inputImageTexture;
 uniform sampler2D inputImageTexture2; // Map
 
 void main()
 {
     vec4 texel = texture2D(inputImageTexture, textureCoordinate);
     
     vec4 mapped;
     mapped.r = texture2D(inputImageTexture2, vec2(texel.r, .16666)).r;
     mapped.g = texture2D(inputImageTexture2, vec2(texel.g, .5)).g;
     mapped.b = texture2D(inputImageTexture2, vec2(texel.b, .83333)).b;
     mapped.a = 1.0;
     
     gl_FragColor = mapped;
 }