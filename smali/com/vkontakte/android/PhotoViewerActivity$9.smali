.class Lcom/vkontakte/android/PhotoViewerActivity$9;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$9;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const v1, 0x7f0600c0

    .line 257
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$9;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 258
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$9;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ZoomableImageView;->setNextImage(Landroid/graphics/Bitmap;)V

    .line 260
    return-void
.end method
