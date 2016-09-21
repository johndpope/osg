precision mediump int;
precision mediump float;
uniform sampler2D Texture1;

varying vec3 N;
varying vec3 v;
varying vec2 texturecord;

uniform vec4 ambientColor;
uniform vec4 diffuseColor;
uniform vec4 specularColor;
uniform vec4 emissionColor;
uniform float shininess;

void main (void)
{


        //Light position
        vec3 lightPos  = vec3(0.0,1.0,-1.0);

        //Get texture
        vec4 RGB = texture2D( Texture1, texturecord );

        //Ambient
        vec4 lambientColor  =  RGB * ambientColor * vec4((lightPos),1.0);

        //Diffuse
        float diffuse_cont = max(dot(N,lightPos),0.0);

        //Specular
        vec3 E = normalize(-v);
        vec3 R = normalize(-reflect(lightPos ,N));
        vec4 specular = specularColor * pow(max(dot(R,E),0.0),0.3*shininess);

        vec4 Idiff = RGB  * max(dot(N,lightPos ), 0.0);
        Idiff = clamp(Idiff, 0.0, 1.0);

        gl_FragColor = Idiff + emissionColor + lambientColor + diffuse_cont + specular;

}
