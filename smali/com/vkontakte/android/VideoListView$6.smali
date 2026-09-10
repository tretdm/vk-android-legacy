.class Lcom/vkontakte/android/VideoListView$6;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Lcom/vkontakte/android/api/VideoGetUserVideos$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/VideoListView;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/VideoListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/VideoListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$6;->this$0:Lcom/vkontakte/android/VideoListView;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 348
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$6;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/VideoListView;->access$13(Lcom/vkontakte/android/VideoListView;Z)V

    .line 349
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$6;->this$0:Lcom/vkontakte/android/VideoListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/VideoListView;->access$17(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/APIRequest;)V

    .line 350
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$6;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06004e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 351
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 7
    .param p1, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/VideoFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "videos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoFile;>;"
    const/16 v6, 0x12c

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 332
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$6;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$0(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 333
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$6;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$8(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 334
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$6;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$9(Lcom/vkontakte/android/VideoListView;)V

    .line 335
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$6;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0, v1}, Lcom/vkontakte/android/VideoListView;->access$13(Lcom/vkontakte/android/VideoListView;Z)V

    .line 336
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView$6;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$6;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$0(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt p1, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v4, v0}, Lcom/vkontakte/android/VideoListView;->access$15(Lcom/vkontakte/android/VideoListView;Z)V

    .line 337
    const-string v0, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "More available = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vkontakte/android/VideoListView$6;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v5}, Lcom/vkontakte/android/VideoListView;->access$16(Lcom/vkontakte/android/VideoListView;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$6;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$12(Lcom/vkontakte/android/VideoListView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$6;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$16(Lcom/vkontakte/android/VideoListView;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$6;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$14(Lcom/vkontakte/android/VideoListView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 340
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$6;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$10(Lcom/vkontakte/android/VideoListView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0, v1, v6}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 341
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$6;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$14(Lcom/vkontakte/android/VideoListView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0, v2, v6}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$6;->this$0:Lcom/vkontakte/android/VideoListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/VideoListView;->access$17(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/APIRequest;)V

    .line 344
    return-void

    :cond_1
    move v0, v2

    .line 336
    goto :goto_0

    :cond_2
    move v0, v3

    .line 338
    goto :goto_1
.end method
