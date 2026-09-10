.class Lcom/vkontakte/android/VideoListView$5;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Lcom/vkontakte/android/api/VideoSearch$Callback;


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
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$5;->this$0:Lcom/vkontakte/android/VideoListView;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x12c

    const/4 v2, 0x0

    .line 338
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$5;->this$0:Lcom/vkontakte/android/VideoListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/VideoListView;->access$20(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/APIRequest;)V

    .line 339
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$5;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/VideoListView;->access$15(Lcom/vkontakte/android/VideoListView;Z)V

    .line 340
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$5;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$0(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$5;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$11(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$5;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$12(Lcom/vkontakte/android/VideoListView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 343
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$5;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$11(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$5;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080068

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public success(Ljava/util/Vector;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/VideoFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "videos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoFile;>;"
    const/16 v4, 0x12c

    const/16 v2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 323
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView$5;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v3}, Lcom/vkontakte/android/VideoListView;->access$0(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 324
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView$5;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v3}, Lcom/vkontakte/android/VideoListView;->access$14(Lcom/vkontakte/android/VideoListView;)V

    .line 325
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView$5;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v3, v1}, Lcom/vkontakte/android/VideoListView;->access$15(Lcom/vkontakte/android/VideoListView;Z)V

    .line 326
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView$5;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v3}, Lcom/vkontakte/android/VideoListView;->access$16(Lcom/vkontakte/android/VideoListView;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 327
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView$5;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v3}, Lcom/vkontakte/android/VideoListView;->access$12(Lcom/vkontakte/android/VideoListView;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-static {v3, v1, v4}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 328
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView$5;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v3}, Lcom/vkontakte/android/VideoListView;->access$16(Lcom/vkontakte/android/VideoListView;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-static {v3, v0, v4}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 329
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView$5;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v3}, Lcom/vkontakte/android/VideoListView;->access$17(Lcom/vkontakte/android/VideoListView;)V

    .line 331
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView$5;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_1

    :goto_0
    invoke-static {v3, v0}, Lcom/vkontakte/android/VideoListView;->access$18(Lcom/vkontakte/android/VideoListView;Z)V

    .line 332
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$5;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$19(Lcom/vkontakte/android/VideoListView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/vkontakte/android/VideoListView$5;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v3}, Lcom/vkontakte/android/VideoListView;->access$5(Lcom/vkontakte/android/VideoListView;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$5;->this$0:Lcom/vkontakte/android/VideoListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/VideoListView;->access$20(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/APIRequest;)V

    .line 334
    return-void

    :cond_1
    move v0, v1

    .line 331
    goto :goto_0

    :cond_2
    move v1, v2

    .line 332
    goto :goto_1
.end method
