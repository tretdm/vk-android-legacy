.class public Lcom/vkontakte/android/VideoAttachView;
.super Landroid/widget/FrameLayout;
.source "VideoAttachView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public file:Lcom/vkontakte/android/api/VideoFile;

.field public referer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/VideoAttachView;->referer:Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Lcom/vkontakte/android/VideoAttachView;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/VideoAttachView;->referer:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/vkontakte/android/VideoAttachView;->init()V

    .line 33
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, p0}, Lcom/vkontakte/android/VideoAttachView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/VideoAttachView;->setFocusable(Z)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/VideoAttachView;->setFocusableInTouchMode(Z)V

    .line 39
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const v5, 0x7f080048

    const v7, 0x10a0001

    const/high16 v6, 0x10a0000

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "file"

    iget-object v4, p0, Lcom/vkontakte/android/VideoAttachView;->file:Lcom/vkontakte/android/api/VideoFile;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/VideoAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 157
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 158
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    const v3, 0x7f080048

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/VideoAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5f

    invoke-virtual {v3, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 159
    const-string v3, "thumb"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    const-string v3, "referer"

    iget-object v4, p0, Lcom/vkontakte/android/VideoAttachView;->referer:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    :try_start_1
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 165
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/high16 v4, 0x10a0000

    const v5, 0x10a0001

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    :goto_1
    return-void

    .line 166
    :catch_0
    move-exception v2

    .line 167
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "thumb"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 169
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v6, v7}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 160
    .end local v2    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 174
    const v0, 0x7f080048

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/VideoAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    return-void
.end method
