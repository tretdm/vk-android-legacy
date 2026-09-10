.class public Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;
.super Landroid/opengl/GLES20;
.source "GLFilterContext.java"


# static fields
.field public static final AttributeInputTextureCoordinate:Ljava/lang/String; = "inputTextureCoordinate"

.field public static final AttributePosition:Ljava/lang/String; = "position"

.field public static final GLAttributeInputTextureCoordinate:I = 0x1

.field public static final GLAttributeInputTextureCoordinate2:I = 0x2

.field public static final GLAttributePosition:I = 0x0

.field public static final GLFilterInputTextureUnit:I = 0x84c2

.field public static final GLFilterTextureUnit:[I

.field public static final GLTexturesMaximum:I = 0x5

.field public static final GLUniformName:[Ljava/lang/String;

.field private static final PositionCoordinate:[F

.field private static final TextureCoordinate:[F


# instance fields
.field filter:Lcom/vkontakte/android/mediapicker/gl/GLFilter;

.field gl_sl_u_input_texture:I

.field gl_sl_u_texture:[I

.field gl_texture:[I

.field program:Lcom/vkontakte/android/mediapicker/gl/GLProgram;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x5

    .line 26
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 25
    sput-object v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->GLFilterTextureUnit:[I

    .line 44
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 45
    const-string v2, "inputImageTexture2"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 46
    const-string v2, "inputImageTexture3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 47
    const-string v2, "inputImageTexture4"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 48
    const-string v2, "inputImageTexture5"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 49
    const-string v2, "inputImageTexture6"

    aput-object v2, v0, v1

    .line 43
    sput-object v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->GLUniformName:[Ljava/lang/String;

    .line 197
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    .line 196
    sput-object v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->PositionCoordinate:[F

    .line 205
    new-array v0, v3, [F

    fill-array-data v0, :array_2

    .line 204
    sput-object v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->TextureCoordinate:[F

    .line 210
    return-void

    .line 26
    :array_0
    .array-data 4
        0x84c3
        0x84c4
        0x84c5
        0x84c6
        0x84c7
    .end array-data

    .line 197
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 205
    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/vkontakte/android/mediapicker/gl/GLFilter;)V
    .locals 2
    .param p1, "filter"    # Lcom/vkontakte/android/mediapicker/gl/GLFilter;

    .prologue
    const/4 v1, 0x5

    .line 64
    invoke-direct {p0}, Landroid/opengl/GLES20;-><init>()V

    .line 57
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->gl_texture:[I

    .line 58
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->gl_sl_u_texture:[I

    .line 66
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/mediapicker/gl/GLFilter;

    .line 68
    iget-object v0, p1, Lcom/vkontakte/android/mediapicker/gl/GLFilter;->textures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too many filter textures"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    return-void
.end method

.method static GLTextureUnitNumber(I)I
    .locals 1
    .param p0, "texture"    # I

    .prologue
    .line 54
    const v0, 0x84c0

    sub-int v0, p0, v0

    return v0
.end method

.method private asFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .param p1, "floats"    # [F

    .prologue
    .line 274
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 276
    .local v0, "buffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 277
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 279
    return-object v0
.end method


# virtual methods
.method public load()Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;
    .locals 22

    .prologue
    .line 95
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/mediapicker/gl/GLProgram;

    if-eqz v1, :cond_0

    .line 184
    :goto_0
    return-object p0

    .line 100
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading shader "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/mediapicker/gl/GLFilter;

    iget-object v2, v2, Lcom/vkontakte/android/mediapicker/gl/GLFilter;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->GLInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    const-string v1, "filter.vsh"

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/gl/ResourceLoader;->getCommonShader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "vsh":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/mediapicker/gl/GLFilter;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/gl/GLFilter;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/gl/ResourceLoader;->getFilterShader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "fsh":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v6, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/gl/GLAttrib;>;"
    new-instance v1, Lcom/vkontakte/android/mediapicker/gl/GLAttrib;

    const/4 v2, 0x0

    const-string v3, "position"

    invoke-direct {v1, v2, v3}, Lcom/vkontakte/android/mediapicker/gl/GLAttrib;-><init>(ILjava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lcom/vkontakte/android/mediapicker/gl/GLAttrib;

    const/4 v2, 0x1

    const-string v3, "inputTextureCoordinate"

    invoke-direct {v1, v2, v3}, Lcom/vkontakte/android/mediapicker/gl/GLAttrib;-><init>(ILjava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lcom/vkontakte/android/mediapicker/gl/GLProgram;

    invoke-direct {v1}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/mediapicker/gl/GLProgram;

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/mediapicker/gl/GLProgram;

    const-string v2, "filter.vsh"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/mediapicker/gl/GLFilter;

    iget-object v3, v3, Lcom/vkontakte/android/mediapicker/gl/GLFilter;->name:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->loadVertexShader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/mediapicker/gl/GLProgram;

    iget v1, v1, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->gl_program:I

    if-nez v1, :cond_1

    .line 115
    const-string v1, "Error: gl_program == 0 "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->GLError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v4    # "vsh":Ljava/lang/String;
    .end local v5    # "fsh":Ljava/lang/String;
    .end local v6    # "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/gl/GLAttrib;>;"
    :catch_0
    move-exception v19

    .line 181
    .local v19, "io":Ljava/io/IOException;
    const-string v1, "Error in GLFilterContext.load"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->GLError(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    .end local v19    # "io":Ljava/io/IOException;
    .restart local v4    # "vsh":Ljava/lang/String;
    .restart local v5    # "fsh":Ljava/lang/String;
    .restart local v6    # "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/gl/GLAttrib;>;"
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/mediapicker/gl/GLProgram;

    const-string v2, "inputImageTexture"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->uniformLocation(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->gl_sl_u_input_texture:I

    .line 122
    const-string v1, "gl_sl_u_input_texture = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->gl_sl_u_input_texture:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-static {v1, v2}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->GLInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/mediapicker/gl/GLFilter;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/gl/GLFilter;->name:Ljava/lang/String;

    const-string v2, "diana"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    const/16 v1, 0x10

    new-array v0, v1, [F

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    .line 133
    .local v20, "matrix":[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/mediapicker/gl/GLProgram;

    const-string v2, "intensity"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->uniformLocation(Ljava/lang/String;)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glUniform1f(IF)V

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/mediapicker/gl/GLProgram;

    const-string v2, "colorMatrix"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->uniformLocation(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-static {v1, v2, v3, v0, v7}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glUniformMatrix4fv(IIZ[FI)V

    .line 137
    .end local v20    # "matrix":[F
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/mediapicker/gl/GLFilter;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/gl/GLFilter;->textures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-lez v1, :cond_3

    .line 141
    const/16 v18, 0x0

    .local v18, "idx":I
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/mediapicker/gl/GLFilter;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/gl/GLFilter;->textures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    move/from16 v0, v18

    if-lt v0, v1, :cond_4

    .line 177
    .end local v18    # "idx":I
    :cond_3
    :goto_2
    :try_start_3
    const-string v1, "GLFilterContext.load completed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->GLInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 143
    .restart local v18    # "idx":I
    :cond_4
    const/4 v1, 0x1

    :try_start_4
    new-array v0, v1, [I

    move-object/from16 v17, v0

    .line 144
    .local v17, "glGenTextures":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/mediapicker/gl/GLFilter;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/gl/GLFilter;->textures:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->pathForTexture(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/gl/ResourceLoader;->getFilterTexture(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 146
    .local v16, "bitmap":Landroid/graphics/Bitmap;
    sget-object v1, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->GLFilterTextureUnit:[I

    aget v1, v1, v18

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glActiveTexture(I)V

    .line 147
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glGenTextures(I[II)V

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->gl_texture:[I

    const/4 v2, 0x0

    aget v2, v17, v2

    aput v2, v1, v18

    .line 151
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->gl_texture:[I

    aget v2, v2, v18

    invoke-static {v1, v2}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glBindTexture(II)V

    .line 153
    const/16 v1, 0xde1

    const/16 v2, 0x2801

    const/16 v3, 0x2601

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glTexParameteri(III)V

    .line 154
    const/16 v1, 0xde1

    const/16 v2, 0x2800

    const/16 v3, 0x2601

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glTexParameteri(III)V

    .line 155
    const/16 v1, 0xde1

    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glTexParameteri(III)V

    .line 156
    const/16 v1, 0xde1

    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glTexParameteri(III)V

    .line 158
    const-string v1, "glParameteri"

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/gl/ResourceLoader;->checkGlError(Ljava/lang/String;)Z

    .line 160
    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->bitmapAsByteBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 161
    .local v15, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 162
    .local v10, "width":I
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 164
    .local v11, "height":I
    const/16 v7, 0xde1

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/4 v12, 0x0

    const/16 v13, 0x1908

    const/16 v14, 0x1401

    invoke-static/range {v7 .. v15}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/mediapicker/gl/GLFilter;

    iget-object v2, v2, Lcom/vkontakte/android/mediapicker/gl/GLFilter;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", glTexImage2d ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/mediapicker/gl/GLFilter;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/gl/GLFilter;->textures:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/gl/ResourceLoader;->checkGlError(Ljava/lang/String;)Z

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->gl_sl_u_texture:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/mediapicker/gl/GLProgram;

    sget-object v3, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->GLUniformName:[Ljava/lang/String;

    aget-object v3, v3, v18

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->uniformLocation(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v18
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 141
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 171
    .end local v10    # "width":I
    .end local v11    # "height":I
    .end local v15    # "buffer":Ljava/nio/ByteBuffer;
    .end local v16    # "bitmap":Landroid/graphics/Bitmap;
    .end local v17    # "glGenTextures":[I
    :catch_1
    move-exception v21

    .line 173
    .local v21, "throwable":Ljava/lang/Throwable;
    :try_start_5
    const-string v1, "Error loading textures"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->GLError(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 126
    nop

    :array_0
    .array-data 4
        0x3eb7b4a2    # 0.3588f
        0x3f34538f    # 0.7044f
        0x3e0c154d    # 0.1368f
        0x0
        0x3e991687    # 0.299f
        0x3f1645a2    # 0.587f
        0x3de978d5    # 0.114f
        0x0
        0x3e74f0d8    # 0.2392f
        0x3ef06f69    # 0.4696f
        0x3dbac711    # 0.0912f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method pathForTexture(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "textureName"    # Ljava/lang/String;

    .prologue
    .line 189
    const-string v1, "filter_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "common"

    .line 191
    .local v0, "folderName":Ljava/lang/String;
    :goto_0
    const-string v1, "filter_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 193
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/AssetsProvider;->getFiltersFolder()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 189
    .end local v0    # "folderName":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/mediapicker/gl/GLFilter;

    iget-object v0, v1, Lcom/vkontakte/android/mediapicker/gl/GLFilter;->name:Ljava/lang/String;

    goto :goto_0

    .line 191
    .restart local v0    # "folderName":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/mediapicker/gl/GLFilter;

    iget-object v2, v2, Lcom/vkontakte/android/mediapicker/gl/GLFilter;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/mediapicker/gl/GLFilter;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/gl/GLFilter;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method renderForTexture(I)Z
    .locals 11
    .param p1, "sourceTexture"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/mediapicker/gl/GLProgram;

    if-nez v0, :cond_0

    .line 215
    const/4 v10, 0x0

    .line 269
    :goto_0
    return v10

    .line 217
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 219
    .local v8, "ms":J
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glClearColor(FFFF)V

    .line 220
    const/16 v0, 0x4000

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glClear(I)V

    .line 222
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/mediapicker/gl/GLProgram;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->use()V

    .line 224
    const v0, 0x84c2

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glActiveTexture(I)V

    .line 225
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glBindTexture(II)V

    .line 227
    iget v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->gl_sl_u_input_texture:I

    const v1, 0x84c2

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->GLTextureUnitNumber(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glUniform1i(II)V

    .line 229
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/4 v0, 0x5

    if-ge v7, v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->gl_texture:[I

    aget v0, v0, v7

    if-nez v0, :cond_4

    .line 236
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->PositionCoordinate:[F

    invoke-direct {p0, v5}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->asFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 237
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->TextureCoordinate:[F

    invoke-direct {p0, v5}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->asFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 239
    const-string v0, "renderForTexture"

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gl/ResourceLoader;->checkGlError(Ljava/lang/String;)Z

    .line 241
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glDrawArrays(III)V

    .line 243
    const/4 v10, 0x1

    .line 245
    .local v10, "resultValue":Z
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glGetError()I

    move-result v6

    .line 247
    .local v6, "error":I
    const/16 v0, 0x506

    if-eq v6, v0, :cond_2

    const/16 v0, 0x502

    if-ne v6, v0, :cond_3

    .line 249
    :cond_2
    const-string v0, "Error operating while renderForTexture. Error %d returned"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->GLError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    const/4 v10, 0x0

    .line 264
    :cond_3
    const-string v0, "glDrawArrays"

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gl/ResourceLoader;->checkGlError(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 231
    .end local v6    # "error":I
    .end local v10    # "resultValue":Z
    :cond_4
    sget-object v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->GLFilterTextureUnit:[I

    aget v0, v0, v7

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glActiveTexture(I)V

    .line 232
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->gl_texture:[I

    aget v1, v1, v7

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glBindTexture(II)V

    .line 233
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->gl_sl_u_texture:[I

    aget v0, v0, v7

    sget-object v1, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->GLFilterTextureUnit:[I

    aget v1, v1, v7

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->GLTextureUnitNumber(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glUniform1i(II)V

    .line 229
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public unload()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/mediapicker/gl/GLProgram;

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/mediapicker/gl/GLFilter;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/gl/GLFilter;->name:Ljava/lang/String;

    const-string v2, "diana"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/mediapicker/gl/GLProgram;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/gl/GLProgram;->unload()V

    .line 79
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/mediapicker/gl/GLProgram;

    .line 82
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 91
    return-void

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->gl_texture:[I

    aget v1, v1, v0

    if-eqz v1, :cond_3

    .line 86
    new-array v1, v4, [I

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->gl_texture:[I

    aget v2, v2, v0

    aput v2, v1, v3

    invoke-static {v4, v1, v3}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->glDeleteTextures(I[II)V

    .line 88
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->gl_texture:[I

    aput v3, v1, v0

    .line 82
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
