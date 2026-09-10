.class Lcom/vkontakte/android/VideoListView$7;
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
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$7;->this$0:Lcom/vkontakte/android/VideoListView;

    .line 307
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

    .line 331
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$7;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/VideoListView;->access$16(Lcom/vkontakte/android/VideoListView;Z)V

    .line 332
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$7;->this$0:Lcom/vkontakte/android/VideoListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/VideoListView;->access$19(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/APIRequest;)V

    .line 333
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$7;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090053

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 334
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 6
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
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 310
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$7;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v1}, Lcom/vkontakte/android/VideoListView;->access$20(Lcom/vkontakte/android/VideoListView;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$7;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v1}, Lcom/vkontakte/android/VideoListView;->access$0(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$7;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v1}, Lcom/vkontakte/android/VideoListView;->access$8(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 321
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$7;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v1}, Lcom/vkontakte/android/VideoListView;->access$9(Lcom/vkontakte/android/VideoListView;)V

    .line 322
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$7;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v1, v2}, Lcom/vkontakte/android/VideoListView;->access$16(Lcom/vkontakte/android/VideoListView;Z)V

    .line 323
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$7;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v1}, Lcom/vkontakte/android/VideoListView;->access$10(Lcom/vkontakte/android/VideoListView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 324
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView$7;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$7;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v1}, Lcom/vkontakte/android/VideoListView;->access$8(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gt p1, v1, :cond_3

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lcom/vkontakte/android/VideoListView;->access$17(Lcom/vkontakte/android/VideoListView;Z)V

    .line 325
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$7;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v1}, Lcom/vkontakte/android/VideoListView;->access$12(Lcom/vkontakte/android/VideoListView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/vkontakte/android/VideoListView$7;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v4}, Lcom/vkontakte/android/VideoListView;->access$18(Lcom/vkontakte/android/VideoListView;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$7;->this$0:Lcom/vkontakte/android/VideoListView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/VideoListView;->access$19(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/APIRequest;)V

    .line 327
    return-void

    .line 313
    :cond_1
    invoke-virtual {p2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/VideoFile;

    .line 314
    .local v0, "vf":Lcom/vkontakte/android/api/VideoFile;
    iget-object v4, v0, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/VideoListView$7;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v5}, Lcom/vkontakte/android/VideoListView;->access$20(Lcom/vkontakte/android/VideoListView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    .line 315
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView$7;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v4}, Lcom/vkontakte/android/VideoListView;->access$0(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView$7;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v4}, Lcom/vkontakte/android/VideoListView;->access$14(Lcom/vkontakte/android/VideoListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/vkontakte/android/VideoListView;->access$15(Lcom/vkontakte/android/VideoListView;I)V

    goto :goto_2

    .line 324
    .end local v0    # "vf":Lcom/vkontakte/android/api/VideoFile;
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    move v2, v3

    .line 325
    goto :goto_1
.end method
