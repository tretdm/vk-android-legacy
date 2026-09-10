.class Lcom/vkontakte/android/PhotoViewerActivity$14;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->loadImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$14;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/PhotoViewerActivity$14;->val$url:Ljava/lang/String;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoViewerActivity$14;)Lcom/vkontakte/android/PhotoViewerActivity;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$14;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 423
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load start "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$14;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$14;->val$url:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 425
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const-string v1, "vk"

    const-string v2, "Load ok"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$14;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-boolean v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->cancel:Z

    if-eqz v1, :cond_0

    .line 433
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$14;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    new-instance v2, Lcom/vkontakte/android/PhotoViewerActivity$14$1;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity$14$1;-><init>(Lcom/vkontakte/android/PhotoViewerActivity$14;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
