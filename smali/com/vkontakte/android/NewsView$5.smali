.class Lcom/vkontakte/android/NewsView$5;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->init()V
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
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 276
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v4}, Lcom/vkontakte/android/NewsView;->access$0(Lcom/vkontakte/android/NewsView;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v5, v5, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v5, p3, v5

    iget-object v6, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v6}, Lcom/vkontakte/android/NewsView;->getPostsOffset()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 277
    .local v2, "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    const/4 v1, 0x0

    .line 278
    .local v1, "e":Lcom/vkontakte/android/NewsEntry;
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 284
    :goto_0
    if-nez v1, :cond_3

    .line 299
    .end local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v2    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    :cond_1
    :goto_1
    return-void

    .line 278
    .restart local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    .restart local v2    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/NewsEntry;

    .line 279
    .local v3, "post":Lcom/vkontakte/android/NewsEntry;
    iget v5, v3, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v6, v2, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postOwnerID:I

    if-ne v5, v6, :cond_0

    iget v5, v3, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v6, v2, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postID:I

    if-ne v5, v6, :cond_0

    .line 280
    move-object v1, v3

    .line 281
    goto :goto_0

    .line 285
    .end local v3    # "post":Lcom/vkontakte/android/NewsEntry;
    :cond_3
    iget v4, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    iget v4, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1

    .line 286
    iget v4, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 287
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "title"

    iget-object v5, v1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 289
    const-string v4, "gid"

    iget v5, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 290
    const-string v4, "tid"

    iget v5, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    const-string v4, "offset"

    iget v5, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    iget v6, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    rem-int/lit8 v6, v6, 0x14

    sub-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 292
    const-string v5, "BoardTopicViewFragment"

    iget-object v4, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-static {v5, v0, v4}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_1

    .line 298
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v2    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 294
    .restart local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    .restart local v2    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 295
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v4, "entry"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 296
    const-string v5, "PostViewFragment"

    iget-object v4, p0, Lcom/vkontakte/android/NewsView$5;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-static {v5, v0, v4}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
