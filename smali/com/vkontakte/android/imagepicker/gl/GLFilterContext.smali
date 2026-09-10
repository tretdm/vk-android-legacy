.class public Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;
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
.field filter:Lcom/vkontakte/android/imagepicker/gl/GLFilter;

.field gl_sl_u_input_texture:I

.field gl_sl_u_texture:[I

.field gl_texture:[I

.field program:Lcom/vkontakte/android/imagepicker/gl/GLProgram;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x5

    .line 25
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 24
    sput-object v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->GLFilterTextureUnit:[I

    .line 43
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 44
    const-string v2, "inputImageTexture2"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 45
    const-string v2, "inputImageTexture3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 46
    const-string v2, "inputImageTexture4"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 47
    const-string v2, "inputImageTexture5"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 48
    const-string v2, "inputImageTexture6"

    aput-object v2, v0, v1

    .line 42
    sput-object v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->GLUniformName:[Ljava/lang/String;

    .line 199
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    .line 198
    sput-object v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->PositionCoordinate:[F

    .line 207
    new-array v0, v3, [F

    fill-array-data v0, :array_2

    .line 206
    sput-object v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->TextureCoordinate:[F

    .line 212
    return-void

    .line 25
    :array_0
    .array-data 4
        0x84c3
        0x84c4
        0x84c5
        0x84c6
        0x84c7
    .end array-data

    .line 199
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    .line 207
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

.method public constructor <init>(Lcom/vkontakte/android/imagepicker/gl/GLFilter;)V
    .locals 2
    .param p1, "filter"    # Lcom/vkontakte/android/imagepicker/gl/GLFilter;

    .prologue
    const/4 v1, 0x5

    .line 63
    invoke-direct {p0}, Landroid/opengl/GLES20;-><init>()V

    .line 56
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->gl_texture:[I

    .line 57
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->gl_sl_u_texture:[I

    .line 65
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/imagepicker/gl/GLFilter;

    .line 67
    iget-object v0, p1, Lcom/vkontakte/android/imagepicker/gl/GLFilter;->textures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too many filter textures"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    return-void
.end method

.method static GLTextureUnitNumber(I)I
    .locals 1
    .param p0, "texture"    # I

    .prologue
    .line 53
    const v0, 0x84c0

    sub-int v0, p0, v0

    return v0
.end method

.method private asFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .param p1, "floats"    # [F

    .prologue
    .line 250
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

    .line 252
    .local v0, "buffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 254
    return-object v0
.end method


# virtual methods
.method public load()Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;
    .locals 22

    .prologue
    .line 94
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/imagepicker/gl/GLProgram;

    if-eqz v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-object p0

    .line 102
    :cond_1
    :try_start_0
    const-string v1, "filter.vsh"

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/gl/ResourceLoader;->getCommonShader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "vsh":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/imagepicker/gl/GLFilter;

    iget-object v1, v1, Lcom/vkontakte/android/imagepicker/gl/GLFilter;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/gl/ResourceLoader;->getFilterShader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "fsh":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v6, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/imagepicker/gl/GLAttrib;>;"
    new-instance v1, Lcom/vkontakte/android/imagepicker/gl/GLAttrib;

    const/4 v2, 0x0

    const-string v3, "position"

    invoke-direct {v1, v2, v3}, Lcom/vkontakte/android/imagepicker/gl/GLAttrib;-><init>(ILjava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lcom/vkontakte/android/imagepicker/gl/GLAttrib;

    const/4 v2, 0x1

    const-string v3, "inputTextureCoordinate"

    invoke-direct {v1, v2, v3}, Lcom/vkontakte/android/imagepicker/gl/GLAttrib;-><init>(ILjava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lcom/vkontakte/android/imagepicker/gl/GLProgram;

    invoke-direct {v1}, Lcom/vkontakte/android/imagepicker/gl/GLProgram;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/imagepicker/gl/GLProgram;

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/imagepicker/gl/GLProgram;

    const-string v2, "filter.vsh"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/imagepicker/gl/GLFilter;

    iget-object v3, v3, Lcom/vkontakte/android/imagepicker/gl/GLFilter;->name:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/vkontakte/android/imagepicker/gl/GLProgram;->loadVertexShader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/imagepicker/gl/GLProgram;

    iget v1, v1, Lcom/vkontakte/android/imagepicker/gl/GLProgram;->gl_program:I

    if-nez v1, :cond_2

    .line 115
    const-string v1, "Error: gl_program == 0"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->GLError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    .end local v4    # "vsh":Ljava/lang/String;
    .end local v5    # "fsh":Ljava/lang/String;
    .end local v6    # "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/imagepicker/gl/GLAttrib;>;"
    :catch_0
    move-exception v19

    .line 183
    .local v19, "io":Ljava/io/IOException;
    const-string v1, "Error in GLFilterContext.load"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->GLError(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    .end local v19    # "io":Ljava/io/IOException;
    .restart local v4    # "vsh":Ljava/lang/String;
    .restart local v5    # "fsh":Ljava/lang/String;
    .restart local v6    # "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/imagepicker/gl/GLAttrib;>;"
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/imagepicker/gl/GLProgram;

    const-string v2, "inputImageTexture"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/imagepicker/gl/GLProgram;->uniformLocation(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->gl_sl_u_input_texture:I

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/imagepicker/gl/GLFilter;

    iget-object v1, v1, Lcom/vkontakte/android/imagepicker/gl/GLFilter;->name:Ljava/lang/String;

    const-string v2, "diana"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    const/16 v1, 0x10

    new-array v0, v1, [F

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    .line 134
    .local v20, "matrix":[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/imagepicker/gl/GLProgram;

    const-string v2, "intensity"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/imagepicker/gl/GLProgram;->uniformLocation(Ljava/lang/String;)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glUniform1f(IF)V

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/imagepicker/gl/GLProgram;

    const-string v2, "colorMatrix"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/imagepicker/gl/GLProgram;->uniformLocation(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-static {v1, v2, v3, v0, v7}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glUniformMatrix4fv(IIZ[FI)V

    .line 138
    .end local v20    # "matrix":[F
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/imagepicker/gl/GLFilter;

    iget-object v1, v1, Lcom/vkontakte/android/imagepicker/gl/GLFilter;->textures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-lez v1, :cond_0

    .line 142
    const/16 v18, 0x0

    .local v18, "idx":I
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/imagepicker/gl/GLFilter;

    iget-object v1, v1, Lcom/vkontakte/android/imagepicker/gl/GLFilter;->textures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, v18

    if-ge v0, v1, :cond_0

    .line 144
    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v17, v0

    .line 145
    .local v17, "glGenTextures":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/imagepicker/gl/GLFilter;

    iget-object v1, v1, Lcom/vkontakte/android/imagepicker/gl/GLFilter;->textures:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->pathForTexture(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/gl/ResourceLoader;->getFilterTexture(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 147
    .local v16, "bitmap":Landroid/graphics/Bitmap;
    sget-object v1, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->GLFilterTextureUnit:[I

    aget v1, v1, v18

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glActiveTexture(I)V

    .line 148
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glGenTextures(I[II)V

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->gl_texture:[I

    const/4 v2, 0x0

    aget v2, v17, v2

    aput v2, v1, v18

    .line 152
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->gl_texture:[I

    aget v2, v2, v18

    invoke-static {v1, v2}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glBindTexture(II)V

    .line 154
    const/16 v1, 0xde1

    const/16 v2, 0x2801

    const/16 v3, 0x2601

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glTexParameteri(III)V

    .line 155
    const/16 v1, 0xde1

    const/16 v2, 0x2800

    const/16 v3, 0x2601

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glTexParameteri(III)V

    .line 156
    const/16 v1, 0xde1

    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glTexParameteri(III)V

    .line 157
    const/16 v1, 0xde1

    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glTexParameteri(III)V

    .line 159
    const-string v1, "glParameteri"

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/gl/ResourceLoader;->checkGlError(Ljava/lang/String;)Z

    .line 161
    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->bitmapAsByteBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 162
    .local v15, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 163
    .local v10, "width":I
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 165
    .local v11, "height":I
    const/16 v7, 0xde1

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/4 v12, 0x0

    const/16 v13, 0x1908

    const/16 v14, 0x1401

    invoke-static/range {v7 .. v15}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/imagepicker/gl/GLFilter;

    iget-object v2, v2, Lcom/vkontakte/android/imagepicker/gl/GLFilter;->name:Ljava/lang/String;

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

    iget-object v1, v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/imagepicker/gl/GLFilter;

    iget-object v1, v1, Lcom/vkontakte/android/imagepicker/gl/GLFilter;->textures:Ljava/util/List;

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

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/gl/ResourceLoader;->checkGlError(Ljava/lang/String;)Z

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->gl_sl_u_texture:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/imagepicker/gl/GLProgram;

    sget-object v3, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->GLUniformName:[Ljava/lang/String;

    aget-object v3, v3, v18

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/imagepicker/gl/GLProgram;->uniformLocation(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v18
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 142
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 172
    .end local v10    # "width":I
    .end local v11    # "height":I
    .end local v15    # "buffer":Ljava/nio/ByteBuffer;
    .end local v16    # "bitmap":Landroid/graphics/Bitmap;
    .end local v17    # "glGenTextures":[I
    :catch_1
    move-exception v21

    .line 174
    .local v21, "throwable":Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "Error loading textures"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->FLError(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 127
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
    .line 191
    const-string v1, "filter_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "common"

    .line 193
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

    .line 195
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getAssetsFiltersFolder()Ljava/lang/String;

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

    .line 191
    .end local v0    # "folderName":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/imagepicker/gl/GLFilter;

    iget-object v0, v1, Lcom/vkontakte/android/imagepicker/gl/GLFilter;->name:Ljava/lang/String;

    goto :goto_0

    .line 193
    .restart local v0    # "folderName":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/imagepicker/gl/GLFilter;

    iget-object v2, v2, Lcom/vkontakte/android/imagepicker/gl/GLFilter;->name:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/imagepicker/gl/GLFilter;

    iget-object v1, v1, Lcom/vkontakte/android/imagepicker/gl/GLFilter;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method renderForTexture(I)V
    .locals 11
    .param p1, "sourceTexture"    # I

    .prologue
    const/16 v4, 0xde1

    const/4 v10, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 216
    invoke-static {v2, v2, v2, v2}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glClearColor(FFFF)V

    .line 217
    const/16 v2, 0x4000

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glClear(I)V

    .line 219
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/imagepicker/gl/GLProgram;

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/gl/GLProgram;->use()V

    .line 221
    const v2, 0x84c2

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glActiveTexture(I)V

    .line 222
    invoke-static {v4, p1}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glBindTexture(II)V

    .line 224
    iget v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->gl_sl_u_input_texture:I

    const v3, 0x84c2

    invoke-static {v3}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->GLTextureUnitNumber(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glUniform1i(II)V

    .line 226
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->gl_texture:[I

    aget v2, v2, v8

    if-nez v2, :cond_2

    .line 233
    :cond_0
    const/16 v2, 0x1406

    sget-object v3, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->PositionCoordinate:[F

    invoke-direct {p0, v3}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->asFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    move v3, v0

    move v4, v0

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 234
    const/4 v2, 0x1

    const/16 v4, 0x1406

    sget-object v3, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->TextureCoordinate:[F

    invoke-direct {p0, v3}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->asFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    move v3, v1

    move v5, v0

    move v6, v0

    invoke-static/range {v2 .. v7}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 236
    const/4 v1, 0x4

    invoke-static {v10, v0, v1}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glDrawArrays(III)V

    .line 238
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/imagepicker/gl/GLProgram;

    iget v1, v1, Lcom/vkontakte/android/imagepicker/gl/GLProgram;->gl_program:I

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v9

    .line 240
    .local v9, "result":Ljava/lang/String;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 241
    :cond_1
    const-string v1, "glGetProgramInfo is empty"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->GLWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    :goto_1
    const-string v0, "glDrawArrays"

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/gl/ResourceLoader;->checkGlError(Ljava/lang/String;)Z

    .line 246
    return-void

    .line 228
    .end local v9    # "result":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->GLFilterTextureUnit:[I

    aget v2, v2, v8

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glActiveTexture(I)V

    .line 229
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->gl_texture:[I

    aget v2, v2, v8

    invoke-static {v4, v2}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glBindTexture(II)V

    .line 230
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->gl_sl_u_texture:[I

    aget v2, v2, v8

    sget-object v3, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->GLFilterTextureUnit:[I

    aget v3, v3, v8

    invoke-static {v3}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->GLTextureUnitNumber(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glUniform1i(II)V

    .line 226
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 243
    .restart local v9    # "result":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glGetProgramInfoLog: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->GLError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public unload()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/imagepicker/gl/GLProgram;

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->filter:Lcom/vkontakte/android/imagepicker/gl/GLFilter;

    iget-object v1, v1, Lcom/vkontakte/android/imagepicker/gl/GLFilter;->name:Ljava/lang/String;

    const-string v2, "diana"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/imagepicker/gl/GLProgram;

    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/gl/GLProgram;->unload()V

    .line 78
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->program:Lcom/vkontakte/android/imagepicker/gl/GLProgram;

    .line 81
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 90
    return-void

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->gl_texture:[I

    aget v1, v1, v0

    if-eqz v1, :cond_3

    .line 85
    new-array v1, v4, [I

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->gl_texture:[I

    aget v2, v2, v0

    aput v2, v1, v3

    invoke-static {v4, v1, v3}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->glDeleteTextures(I[II)V

    .line 87
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->gl_texture:[I

    aput v3, v1, v0

    .line 81
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
