.class public Lcom/vkontakte/android/mediapicker/gl/GLProgram;
.super Landroid/opengl/GLES20;
.source "GLProgram.java"


# static fields
.field static gl_last_program:I


# instance fields
.field gl_program:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    sput v0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_last_program:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/opengl/GLES20;-><init>()V

    return-void
.end method

.method static compileShader(ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "type"    # I
    .param p1, "shaderName"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 22
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 23
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Empty shader SRC"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 25
    :cond_1
    invoke-static {p0}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->glCreateShader(I)I

    move-result v0

    .line 26
    .local v0, "gl_shader":I
    const-string v3, "glCreateShader"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->step(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-static {v0, p2}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->glShaderSource(ILjava/lang/String;)V

    .line 29
    const-string v3, "glShaderSource"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->step(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->glCompileShader(I)V

    .line 32
    const-string v3, "glCompileShader"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->step(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    new-array v1, v5, [I

    .line 36
    .local v1, "status":[I
    const v3, 0x8b81

    invoke-static {v0, v3, v1, v2}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->glGetShaderiv(II[II)V

    .line 37
    const-string v3, "glGetShaderiv"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->step(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    aget v3, v1, v2

    if-ne v3, v5, :cond_2

    .line 58
    .end local v0    # "gl_shader":I
    :goto_0
    return v0

    .line 54
    .restart local v0    # "gl_shader":I
    :cond_2
    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->glDeleteShader(I)V

    .line 56
    const-string v3, "glDeleteShader"

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/gl/ResourceLoader;->checkGlError(Ljava/lang/String;)Z

    move v0, v2

    .line 58
    goto :goto_0
.end method

.method static varargs step(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "err"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 17
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gl/ResourceLoader;->checkGlError(Ljava/lang/String;)Z

    .line 18
    return-void
.end method


# virtual methods
.method loadVertexShader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .param p1, "vshn"    # Ljava/lang/String;
    .param p2, "fshn"    # Ljava/lang/String;
    .param p3, "vsh"    # Ljava/lang/String;
    .param p4, "fsh"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/mediapicker/gl/GLAttrib;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p5, "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/gl/GLAttrib;>;"
    iget v4, p0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_program:I

    if-eqz v4, :cond_0

    .line 67
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "gl_program is already inited"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 69
    :cond_0
    const v4, 0x8b31

    invoke-static {v4, p1, p3}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->compileShader(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 70
    .local v2, "gl_vertex_shader":I
    const v4, 0x8b30

    invoke-static {v4, p2, p4}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->compileShader(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 72
    .local v1, "gl_fragment_shader":I
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 74
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->glCreateProgram()I

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_program:I

    .line 75
    const-string v4, "glCreateProgram"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->step(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget v4, p0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_program:I

    invoke-static {v4, v2}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->glAttachShader(II)V

    .line 78
    const-string v4, "glAttachShader"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->step(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget v4, p0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_program:I

    invoke-static {v4, v1}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->glAttachShader(II)V

    .line 81
    const-string v4, "glAttachShader"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->step(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    if-eqz p5, :cond_1

    .line 85
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 92
    :cond_1
    iget v4, p0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_program:I

    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->glLinkProgram(I)V

    .line 94
    const/4 v4, 0x1

    new-array v3, v4, [I

    .line 95
    .local v3, "status":[I
    iget v4, p0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_program:I

    const v5, 0x8b82

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->glGetProgramiv(II[II)V

    .line 97
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 99
    iget v4, p0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_program:I

    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->glDeleteProgram(I)V

    .line 101
    const/4 v4, 0x0

    iput v4, p0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_program:I

    .line 103
    new-instance v4, Ljava/lang/IllegalAccessError;

    const-string v5, "Program link error"

    invoke-direct {v4, v5}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 85
    .end local v3    # "status":[I
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/mediapicker/gl/GLAttrib;

    .line 87
    .local v0, "attr":Lcom/vkontakte/android/mediapicker/gl/GLAttrib;
    iget v5, p0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_program:I

    iget v6, v0, Lcom/vkontakte/android/mediapicker/gl/GLAttrib;->location:I

    iget-object v7, v0, Lcom/vkontakte/android/mediapicker/gl/GLAttrib;->name:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->glBindAttribLocation(IILjava/lang/String;)V

    .line 88
    const-string v5, "glBindAttribLocation %d %d %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_program:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, v0, Lcom/vkontakte/android/mediapicker/gl/GLAttrib;->location:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, v0, Lcom/vkontakte/android/mediapicker/gl/GLAttrib;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->step(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    .end local v0    # "attr":Lcom/vkontakte/android/mediapicker/gl/GLAttrib;
    .restart local v3    # "status":[I
    :cond_3
    iget v4, p0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_program:I

    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->glUseProgram(I)V

    .line 109
    if-eqz p5, :cond_4

    .line 111
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 120
    .end local v3    # "status":[I
    :cond_4
    if-eqz v2, :cond_5

    .line 121
    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->glDeleteShader(I)V

    .line 123
    :cond_5
    if-eqz v1, :cond_6

    .line 124
    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->glDeleteShader(I)V

    .line 125
    :cond_6
    return-void

    .line 111
    .restart local v3    # "status":[I
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/mediapicker/gl/GLAttrib;

    .line 113
    .restart local v0    # "attr":Lcom/vkontakte/android/mediapicker/gl/GLAttrib;
    iget v5, v0, Lcom/vkontakte/android/mediapicker/gl/GLAttrib;->location:I

    invoke-static {v5}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->glEnableVertexAttribArray(I)V

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "glEnableVertexAttribArray, location: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/vkontakte/android/mediapicker/gl/GLAttrib;->location:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vkontakte/android/mediapicker/gl/ResourceLoader;->checkGlError(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method uniformLocation(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    iget v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_program:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_program:I

    invoke-static {v0, p1}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method unload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    iget v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_program:I

    if-eqz v0, :cond_0

    .line 131
    iget v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_program:I

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->glDeleteProgram(I)V

    .line 133
    const-string v0, "glDeleteProgram"

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gl/ResourceLoader;->checkGlError(Ljava/lang/String;)Z

    .line 135
    iput v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_program:I

    .line 136
    sput v1, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_last_program:I

    .line 138
    :cond_0
    return-void
.end method

.method use()V
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_program:I

    if-eqz v0, :cond_0

    sget v0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_last_program:I

    iget v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_program:I

    if-eq v0, v1, :cond_0

    .line 146
    iget v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_program:I

    sput v0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_last_program:I

    .line 148
    iget v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_program:I

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->glUseProgram(I)V

    .line 150
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gl/ResourceLoader;->checkGlError(Ljava/lang/String;)Z

    .line 152
    :cond_0
    return-void
.end method
