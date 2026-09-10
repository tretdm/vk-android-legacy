.class Lcom/vkontakte/android/PhotoViewerActivity$20$2;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PhotoViewerActivity$20;

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;

.field private final synthetic val$num:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity$20;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20$2;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$20;

    iput p2, p0, Lcom/vkontakte/android/PhotoViewerActivity$20$2;->val$num:I

    iput-object p3, p0, Lcom/vkontakte/android/PhotoViewerActivity$20$2;->val$bmp:Landroid/graphics/Bitmap;

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 775
    iget v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$20$2;->val$num:I

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20$2;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$20;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity$20;->access$0(Lcom/vkontakte/android/PhotoViewerActivity$20;)Lcom/vkontakte/android/PhotoViewerActivity;

    move-result-object v1

    iget v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    if-eq v0, v1, :cond_0

    .line 778
    :goto_0
    return-void

    .line 776
    :cond_0
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "img loaded "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$20$2;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$20$2;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$20;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerActivity$20;->access$0(Lcom/vkontakte/android/PhotoViewerActivity$20;)Lcom/vkontakte/android/PhotoViewerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$20$2;->val$bmp:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$20$2;->val$num:I

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/PhotoViewerActivity;->access$12(Lcom/vkontakte/android/PhotoViewerActivity;Landroid/graphics/Bitmap;ZI)V

    goto :goto_0
.end method
