.class Lcom/vkontakte/android/PhotoViewerFragment$24;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerFragment;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment$24;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 966
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$24;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->access$6(Lcom/vkontakte/android/PhotoViewerFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 967
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$24;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$24(Lcom/vkontakte/android/PhotoViewerFragment;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    :goto_0
    return-void

    .line 968
    :catch_0
    move-exception v0

    goto :goto_0
.end method
