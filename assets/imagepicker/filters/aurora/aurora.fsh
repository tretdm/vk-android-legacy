 precision lowp float;
 
 varying highp vec2 textureCoordinate;
 
 uniform sampler2D inputImageTexture;
 uniform sampler2D inputImageTexture2; //Curves
 uniform sampler2D inputImageTexture3; //OverlayMap
 uniform sampler2D inputImageTexture4; //VignetteMap
 uniform sampler2D inputImageTexture5; //Blowout
 uniform sampler2D inputImageTexture6; //Map
 
 const mat3 saturate = mat3(
                            1.210300,
                            -0.089700,
                            -0.091000,
                            -0.176100,
                            1.123900,
                            -0.177400,
                            -0.034200,
                            -0.034200,
                            1.265800);
 const vec3 rgbPrime = vec3(0.25098, 0.14640522, 0.0);
 const vec3 desaturate = vec3(.3, .59, .11);
 
 const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);
 
 void main()
 {
     vec3 texel = texture2D(inputImageTexture, textureCoordinate).rgb;
     
     
     vec2 lookup;
     lookup.y = 0.5;
     
     lookup.x = texel.r;
     texel.r = texture2D(inputImageTexture2, lookup).r;
     
     lookup.x = texel.g;
     texel.g = texture2D(inputImageTexture2, lookup).g;
     
     lookup.x = texel.b;
     texel.b = texture2D(inputImageTexture2, lookup).b;
     
     float desaturatedColor;
     vec3 result;
     desaturatedColor = dot(desaturate, texel);
     
     
     lookup.x = desaturatedColor;
     result.r = texture2D(inputImageTexture3, lookup).r;
     lookup.x = desaturatedColor;
     result.g = texture2D(inputImageTexture3, lookup).g;
     lookup.x = desaturatedColor;
     result.b = texture2D(inputImageTexture3, lookup).b;
     
     texel = saturate * mix(texel, result, .5);
     
     vec2 tc = (2.0 * textureCoordinate) - 1.0;
     float d = dot(tc, tc);
     
     vec3 sampled;
     lookup.y = .5;
     
     //---
     
     lookup = vec2(d, texel.r);
     texel.r = texture2D(inputImageTexture4, lookup).r;
     lookup.y = texel.g;
     texel.g = texture2D(inputImageTexture4, lookup).g;
     lookup.y = texel.b;
     texel.b	= texture2D(inputImageTexture4, lookup).b;
     float value = smoothstep(0.0, 1.25, pow(d, 1.35)/1.65);
     
     //---
     
     lookup.x = texel.r;
     sampled.r = texture2D(inputImageTexture5, lookup).r;
     lookup.x = texel.g;
     sampled.g = texture2D(inputImageTexture5, lookup).g;
     lookup.x = texel.b;
     sampled.b = texture2D(inputImageTexture5, lookup).b;
     texel = mix(sampled, texel, value);
     
     
     lookup.x = texel.r;
     texel.r = texture2D(inputImageTexture6, lookup).r;
     lookup.x = texel.g;
     texel.g = texture2D(inputImageTexture6, lookup).g;
     lookup.x = texel.b;
     texel.b = texture2D(inputImageTexture6, lookup).b;
     
     // Saturation set to -23
     
     lowp float luminance = dot(texel.rgb, luminanceWeighting);
     lowp vec3 greyScaleColor = vec3(luminance);
     
     lowp vec4 saturatedColor = vec4(mix(greyScaleColor, texel.rgb, 0.77), 1.0);
     
     // Contrast +15
     
     gl_FragColor = vec4(((saturatedColor.rgb - vec3(0.5)) * 1.15 + vec3(0.5)), 1.0);
 }
