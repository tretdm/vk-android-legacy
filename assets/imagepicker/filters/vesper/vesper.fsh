 precision lowp float;
 
 varying highp vec2 textureCoordinate;
 
 uniform sampler2D inputImageTexture;
 uniform sampler2D inputImageTexture2; //Map
 uniform sampler2D inputImageTexture3; //VignentteMap
 
 const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);
 
 void main()
 {
     vec3 texel = texture2D(inputImageTexture, textureCoordinate).rgb;
     
     vec2 tc = (2.0 * textureCoordinate) - 1.0;
     float d = dot(tc, tc);
     vec2 lookup = vec2(d, texel.r);
     texel.r = texture2D(inputImageTexture3, lookup).r;
     lookup.y = texel.g;
     texel.g = texture2D(inputImageTexture3, lookup).g;
     lookup.y = texel.b;
     texel.b = texture2D(inputImageTexture3, lookup).b;
     
     texel.r = texture2D(inputImageTexture2, vec2(texel.r, 0.16666)).r;
     texel.g = texture2D(inputImageTexture2, vec2(texel.g, 0.5)).g;
     texel.b = texture2D(inputImageTexture2, vec2(texel.b, .83333)).b;
     
     // Saturation
     
     lowp float luminance = dot(texel.rgb, luminanceWeighting);
     lowp vec3 greyScaleColor = vec3(luminance);
     
     gl_FragColor = vec4(mix(greyScaleColor, texel.rgb, 1.25), 1.0);
 }