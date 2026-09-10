.class Lcom/vkontakte/android/NewsView$31;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/NewsfeedAddBan$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->hideSource(Lcom/vkontakte/android/NewsEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;

.field private final synthetic val$de:Lcom/vkontakte/android/NewsEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$31;->this$0:Lcom/vkontakte/android/NewsView;

    iput-object p2, p0, Lcom/vkontakte/android/NewsView$31;->val$de:Lcom/vkontakte/android/NewsEntry;

    .line 1484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$31;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080068

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1507
    return-void
.end method

.method public success()V
    .locals 7

    .prologue
    .line 1487
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1488
    .local v3, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$31;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1491
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1494
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$31;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v4}, Lcom/vkontakte/android/NewsView;->access$0(Lcom/vkontakte/android/NewsView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1495
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1500
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$31;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v4, p0, Lcom/vkontakte/android/NewsView$31;->val$de:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-lez v4, :cond_5

    const v4, 0x7f08018f

    :goto_3
    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1501
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$31;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 1502
    return-void

    .line 1488
    .end local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 1489
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    iget v5, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    iget-object v6, p0, Lcom/vkontakte/android/NewsView$31;->val$de:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v5, v6, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1491
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 1492
    .restart local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    iget-object v5, p0, Lcom/vkontakte/android/NewsView$31;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v5, v5, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1496
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    .restart local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 1497
    .local v1, "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    iget v4, v1, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postOwnerID:I

    iget-object v5, p0, Lcom/vkontakte/android/NewsView$31;->val$de:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v4, v5, :cond_1

    .line 1498
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1500
    .end local v1    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    :cond_5
    const v4, 0x7f080190

    goto :goto_3
.end method
