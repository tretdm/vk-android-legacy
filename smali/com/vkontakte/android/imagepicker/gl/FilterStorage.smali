.class public Lcom/vkontakte/android/imagepicker/gl/FilterStorage;
.super Ljava/lang/Object;
.source "FilterStorage.java"


# static fields
.field private static instance:Lcom/vkontakte/android/imagepicker/gl/FilterStorage;


# instance fields
.field private filters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/vkontakte/android/imagepicker/gl/GLFilter;",
            ">;"
        }
    .end annotation
.end field

.field private last_filter_context:Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;

.field private last_filter_id:I

.field private texture:Lcom/vkontakte/android/imagepicker/gl/GLTexture;

.field private texture_height:I

.field private texture_id:I

.field private texture_styles:I

.field private texture_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;

    invoke-direct {v0}, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;-><init>()V

    sput-object v0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->instance:Lcom/vkontakte/android/imagepicker/gl/FilterStorage;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->filters:Ljava/util/HashMap;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->last_filter_id:I

    .line 29
    return-void
.end method

.method private compareTo(IILandroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "texture_id"    # I
    .param p2, "texture_styles"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture:Lcom/vkontakte/android/imagepicker/gl/GLTexture;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture_id:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture_styles:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture_width:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture_height:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFilterInfo(I)Lcom/vkontakte/android/imagepicker/gl/GLFilter;
    .locals 3
    .param p1, "filter_id"    # I

    .prologue
    .line 33
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->filters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    new-instance v0, Lcom/vkontakte/android/imagepicker/gl/GLFilter;

    sget-object v1, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->Filters:[[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->Filters:[[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/imagepicker/gl/GLFilter;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 37
    .local v0, "filter":Lcom/vkontakte/android/imagepicker/gl/GLFilter;
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->filters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .end local v0    # "filter":Lcom/vkontakte/android/imagepicker/gl/GLFilter;
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->filters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/imagepicker/gl/GLFilter;

    move-object v0, v1

    goto :goto_0
.end method

.method public static instance()Lcom/vkontakte/android/imagepicker/gl/FilterStorage;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->instance:Lcom/vkontakte/android/imagepicker/gl/FilterStorage;

    return-object v0
.end method

.method private set(IILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "texture_id"    # I
    .param p2, "texture_styles"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 75
    iput p1, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture_id:I

    .line 76
    iput p2, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture_styles:I

    .line 77
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture_width:I

    .line 78
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture_height:I

    .line 79
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture:Lcom/vkontakte/android/imagepicker/gl/GLTexture;

    .line 51
    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->last_filter_context:Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;

    .line 52
    return-void
.end method

.method public getFilter(I)Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;
    .locals 2
    .param p1, "filter_id"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->last_filter_context:Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->last_filter_id:I

    if-eq v0, p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->last_filter_context:Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->unload()V

    .line 62
    :cond_0
    new-instance v0, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;

    iput p1, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->last_filter_id:I

    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->getFilterInfo(I)Lcom/vkontakte/android/imagepicker/gl/GLFilter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;-><init>(Lcom/vkontakte/android/imagepicker/gl/GLFilter;)V

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->load()Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->last_filter_context:Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;

    return-object v0
.end method

.method public getTexture(IILandroid/graphics/Bitmap;Z)Lcom/vkontakte/android/imagepicker/gl/GLTexture;
    .locals 1
    .param p1, "texture_id"    # I
    .param p2, "texture_styles"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "force"    # Z

    .prologue
    .line 96
    if-nez p3, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    .line 99
    :cond_0
    if-nez p4, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->compareTo(IILandroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture:Lcom/vkontakte/android/imagepicker/gl/GLTexture;

    goto :goto_0

    .line 103
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->set(IILandroid/graphics/Bitmap;)V

    .line 105
    new-instance v0, Lcom/vkontakte/android/imagepicker/gl/GLTexture;

    invoke-direct {v0}, Lcom/vkontakte/android/imagepicker/gl/GLTexture;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture:Lcom/vkontakte/android/imagepicker/gl/GLTexture;

    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture:Lcom/vkontakte/android/imagepicker/gl/GLTexture;

    invoke-virtual {v0, p3}, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->loadWithBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture:Lcom/vkontakte/android/imagepicker/gl/GLTexture;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->setFailed()V

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture:Lcom/vkontakte/android/imagepicker/gl/GLTexture;

    goto :goto_0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture:Lcom/vkontakte/android/imagepicker/gl/GLTexture;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture:Lcom/vkontakte/android/imagepicker/gl/GLTexture;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->unload()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture:Lcom/vkontakte/android/imagepicker/gl/GLTexture;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture_styles:I

    iput v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture_height:I

    iput v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture_width:I

    iput v0, p0, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->texture_id:I

    .line 92
    :cond_0
    return-void
.end method
