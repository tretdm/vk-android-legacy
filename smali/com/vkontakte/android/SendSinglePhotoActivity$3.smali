.class Lcom/vkontakte/android/SendSinglePhotoActivity$3;
.super Ljava/lang/Object;
.source "SendSinglePhotoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SendSinglePhotoActivity;->loadPhoto(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SendSinglePhotoActivity;

.field private final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SendSinglePhotoActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->this$0:Lcom/vkontakte/android/SendSinglePhotoActivity;

    iput-object p2, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->val$uri:Landroid/net/Uri;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SendSinglePhotoActivity$3;)Lcom/vkontakte/android/SendSinglePhotoActivity;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->this$0:Lcom/vkontakte/android/SendSinglePhotoActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 98
    :try_start_0
    iget-object v6, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->this$0:Lcom/vkontakte/android/SendSinglePhotoActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->val$uri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 99
    .local v4, "stream":Ljava/io/InputStream;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 100
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 101
    const/4 v6, 0x0

    invoke-static {v4, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 103
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 104
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->this$0:Lcom/vkontakte/android/SendSinglePhotoActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 106
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    div-int v3, v6, v7

    .line 107
    .local v3, "sample":I
    move-object v0, v4

    check-cast v0, Ljava/io/FileInputStream;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 109
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 110
    .restart local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 111
    iget-object v6, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->this$0:Lcom/vkontakte/android/SendSinglePhotoActivity;

    const/4 v7, 0x0

    invoke-static {v4, v7, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/SendSinglePhotoActivity;->access$2(Lcom/vkontakte/android/SendSinglePhotoActivity;Landroid/graphics/Bitmap;)V

    .line 113
    iget-object v6, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->this$0:Lcom/vkontakte/android/SendSinglePhotoActivity;

    new-instance v7, Lcom/vkontakte/android/SendSinglePhotoActivity$3$1;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/SendSinglePhotoActivity$3$1;-><init>(Lcom/vkontakte/android/SendSinglePhotoActivity$3;)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/SendSinglePhotoActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "sample":I
    .end local v4    # "stream":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v5

    .line 120
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
