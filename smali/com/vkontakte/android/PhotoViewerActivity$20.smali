.class Lcom/vkontakte/android/PhotoViewerActivity$20;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->loadImage(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;

.field private final synthetic val$num:I

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->val$url:Ljava/lang/String;

    iput p3, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->val$num:I

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoViewerActivity$20;)Lcom/vkontakte/android/PhotoViewerActivity;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 752
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load start "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$0(Lcom/vkontakte/android/PhotoViewerActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 754
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v2, 0x7f0600db

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/CircularProgressBar;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/ui/CircularProgressBar;->setProgress(D)V

    .line 755
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->val$url:Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/vkontakte/android/PhotoViewerActivity$20$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/PhotoViewerActivity$20$1;-><init>(Lcom/vkontakte/android/PhotoViewerActivity$20;)V

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 769
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load ok "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-boolean v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->cancel:Z

    if-eqz v1, :cond_1

    .line 779
    :goto_0
    return-void

    .line 774
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    new-instance v2, Lcom/vkontakte/android/PhotoViewerActivity$20$2;

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$20;->val$num:I

    invoke-direct {v2, p0, v3, v0}, Lcom/vkontakte/android/PhotoViewerActivity$20$2;-><init>(Lcom/vkontakte/android/PhotoViewerActivity$20;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
