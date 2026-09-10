 precision lowp float;
 
 varying highp vec2 textureCoordinate;
 
 uniform sampler2D inputImageTexture;
 uniform sampler2D inputImageTexture2; //Blackboard
 uniform sampler2D inputImageTexture3; //OverlayMap
 uniform sampler2D inputImageTexture4; //Map
 uniform sampler2D inputImageTexture5; //Map2
 
 const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);
 
 void main()
 {
     vec4 texel = texture2D(inputImageTexture, textureCoordinate);
     vec3 bbTexel = texture2D(inputImageTexture2, textureCoordinate).rgb;
     
     texel.r = texture2D(inputImageTexture3, vec2(bbTexel.r, texel.r)).r;
     texel.g = texture2D(inputImageTexture3, vec2(bbTexel.g, texel.g)).g;
     texel.b = texture2D(inputImageTexture3, vec2(bbTexel.b, texel.b)).b;
     
     vec4 mapped;
     mapped.r = texture2D(inputImageTexture4, vec2(texel.r, .16666)).r;
     mapped.g = texture2D(inputImageTexture4, vec2(texel.g, .5)).g;
     mapped.b = texture2D(inputImageTexture4, vec2(texel.b, .83333)).b;
     mapped.a = 1.0;
     
     // Saturation 0.65
     
     lowp float luminance = dot(mapped.rgb, luminanceWeighting);
     lowp vec3 greyScaleColor = vec3(luminance);
     mapped = vec4(mix(greyScaleColor, mapped.rgb, 0.65), 1.0);
     
     // Map2
     
     mapped.r = texture2D(inputImageTexture5, vec2(mapped.r, 0.5)).r;
     mapped.g = texture2D(inputImageTexture5, vec2(mapped.g, 0.5)).g;
     mapped.b = texture2D(inputImageTexture5, vec2(mapped.b, 0.5)).b;
     
     gl_FragColor = mapped;
 }
