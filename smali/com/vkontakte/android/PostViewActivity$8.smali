.class Lcom/vkontakte/android/PostViewActivity$8;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$8;->this$0:Lcom/vkontakte/android/PostViewActivity;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$8;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PostViewActivity;->access$9(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 408
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$8;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$8;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    .line 410
    .local v0, "comm":Lcom/vkontakte/android/NewsComment;
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$8;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iget v2, v0, Lcom/vkontakte/android/NewsComment;->cid:I

    invoke-static {v1, v2}, Lcom/vkontakte/android/PostViewActivity;->access$17(Lcom/vkontakte/android/PostViewActivity;I)V

    .line 411
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$8;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iget v2, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v1, v2}, Lcom/vkontakte/android/PostViewActivity;->access$18(Lcom/vkontakte/android/PostViewActivity;I)V

    .line 412
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$8;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iget-object v2, v0, Lcom/vkontakte/android/NewsComment;->userRName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vkontakte/android/PostViewActivity;->access$19(Lcom/vkontakte/android/PostViewActivity;Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$8;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$8;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PostViewActivity;->access$20(Lcom/vkontakte/android/PostViewActivity;)V

    goto :goto_0
.end method
