 varying highp vec2 textureCoordinate;
 
 uniform sampler2D inputImageTexture;
 const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);
 const lowp vec3 base = vec3(220.0/255.0, 225.0/255.0, 95.0/255.0);
 
 void main()
{
    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);
    lowp float luminance = dot(textureColor.rgb, luminanceWeighting);
    lowp vec3 greyScaleColor = vec3(luminance);
    
	mediump vec3 res1 = vec3(mix(greyScaleColor, textureColor.rgb, 0.486590027809143));
    res1 = vec3(((res1.rgb - vec3(0.5)) * 1.51111116409302 + vec3(0.5)));
    res1 = vec3(res1.r, res1.g, res1.b * 1.6513409614563);
    res1 = mix(res1, res1 * base , 0.335249036550522);
    
    lowp vec3 rgb = res1;
    lowp float d = distance(textureCoordinate, vec2(0.5,0.5));
    rgb *= smoothstep(0.95, 0.1, d);
    gl_FragColor = vec4(vec3(rgb),1.0);
}