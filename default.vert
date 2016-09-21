#version 101

//Precision
precision mediump int;
precision mediump float;

//Output to fragment shader
varying vec3 N;
varying vec3 v;
varying vec2 texturecord;

void main(void)
{
        v = vec3(gl_ModelViewMatrix * gl_Vertex);
        N = normalize(gl_NormalMatrix * gl_Normal);
        gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;

        //Passing texture cordinates to fragment shader
        texturecord = gl_MultiTexCoord0.xy;
}

