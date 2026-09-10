.class Lcom/vkontakte/android/ui/PhotoFeedView$4;
.super Ljava/lang/Object;
.source "PhotoFeedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PhotoFeedView;->updateEverything()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/PhotoFeedView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$4;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$4;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->invalidate()V

    .line 256
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$4;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$4;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1100(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1002(Lcom/vkontakte/android/ui/PhotoFeedView;I)I

    .line 257
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$4;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1200(Lcom/vkontakte/android/ui/PhotoFeedView;)Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;->notifyDataSetChanged()V

    .line 258
    const-string v0, "vk"

    const-string v1, "Update photo feed images"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$4;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1300(Lcom/vkontakte/android/ui/PhotoFeedView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 260
    return-void
.end method
