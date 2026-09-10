.class Lcom/vkontakte/android/ui/MultiAttachView$2;
.super Ljava/lang/Object;
.source "MultiAttachView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MultiAttachView;->add(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/MultiAttachView;

.field private final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MultiAttachView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiAttachView$2;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/MultiAttachView$2;->val$uri:Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/MultiAttachView$2;)Lcom/vkontakte/android/ui/MultiAttachView;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$2;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 161
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 162
    .local v4, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 163
    const-string v8, "vk"

    const-string v9, "before open stream"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v8, p0, Lcom/vkontakte/android/ui/MultiAttachView$2;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/ui/MultiAttachView$2;->val$uri:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 165
    .local v3, "is":Ljava/io/InputStream;
    const-string v8, "vk"

    const-string v9, "after open stream"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v8, 0x0

    invoke-static {v3, v8, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 167
    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gtz v8, :cond_0

    .line 168
    const-wide/16 v8, 0x5dc

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 169
    const/4 v8, 0x0

    invoke-static {v3, v8, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 171
    :cond_0
    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gtz v8, :cond_1

    .line 172
    const-string v8, "vk"

    const-string v9, "OH SHIT!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v8, p0, Lcom/vkontakte/android/ui/MultiAttachView$2;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    new-instance v9, Lcom/vkontakte/android/ui/MultiAttachView$2$1;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/ui/MultiAttachView$2$1;-><init>(Lcom/vkontakte/android/ui/MultiAttachView$2;)V

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/MultiAttachView;->post(Ljava/lang/Runnable;)Z

    .line 192
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "opts":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-void

    .line 178
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const-string v8, "vk"

    const-string v9, "after decode stream"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    move-object v0, v3

    check-cast v0, Ljava/io/FileInputStream;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 180
    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 181
    .local v7, "size":I
    int-to-float v8, v7

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 183
    .local v6, "sample":F
    const/4 v8, 0x0

    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 184
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 185
    const/4 v8, 0x0

    invoke-static {v3, v8, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 186
    .local v2, "bmp1":Landroid/graphics/Bitmap;
    const/high16 v8, 0x42b40000    # 90.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    div-float v5, v8, v9

    .line 187
    .local v5, "r":F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-int v8, v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    const/4 v10, 0x1

    invoke-static {v2, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 188
    .local v1, "bmp":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/vkontakte/android/ui/MultiAttachView$2;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    new-instance v9, Lcom/vkontakte/android/ui/MultiAttachView$2$2;

    invoke-direct {v9, p0, v1}, Lcom/vkontakte/android/ui/MultiAttachView$2$2;-><init>(Lcom/vkontakte/android/ui/MultiAttachView$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/MultiAttachView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "bmp1":Landroid/graphics/Bitmap;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "r":F
    .end local v6    # "sample":F
    .end local v7    # "size":I
    :catch_0
    move-exception v8

    goto :goto_0
.end method
