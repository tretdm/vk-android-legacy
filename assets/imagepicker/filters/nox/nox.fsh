 precision highp float;
 
 varying vec2 textureCoordinate;
 
 uniform sampler2D inputImageTexture;
 uniform sampler2D inputImageTexture2; //Map
 
 const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);
 
 void main()
 {
     vec3 texel = texture2D(inputImageTexture, textureCoordinate).rgb;
     
     lowp float luminance = dot(texel.rgb, luminanceWeighting);
     lowp vec3 greyScaleColor = vec3(luminance);
     lowp vec4 saturatedColor = vec4(mix(greyScaleColor, texel.rgb, 0.0), 1.0);
     
     texel.r = texture2D(inputImageTexture2, vec2(saturatedColor.r, 0.5)).r;
     texel.g = texture2D(inputImageTexture2, vec2(saturatedColor.g, 0.5)).g;
     texel.b = texture2D(inputImageTexture2, vec2(saturatedColor.b, 0.5)).b;
     
     gl_FragColor = vec4(texel, 1.0);
 }