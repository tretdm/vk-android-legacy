.class Lcom/vkontakte/android/fragments/NewsFragment$13;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/NewsfeedGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/NewsFragment;->preloadNew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/NewsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/NewsFragment;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsFragment$13;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 553
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$13;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/NewsFragment;->access$802(Lcom/vkontakte/android/fragments/NewsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 555
    return-void
.end method

.method public success(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 9
    .param p2, "rnewFrom"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 527
    .local p1, "rnews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    iget-object v6, p0, Lcom/vkontakte/android/fragments/NewsFragment$13;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkontakte/android/fragments/NewsFragment;->access$802(Lcom/vkontakte/android/fragments/NewsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 528
    iget-object v6, p0, Lcom/vkontakte/android/fragments/NewsFragment$13;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v6, p2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$902(Lcom/vkontakte/android/fragments/NewsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 529
    iget-object v6, p0, Lcom/vkontakte/android/fragments/NewsFragment$13;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/NewsFragment;->access$1000(Lcom/vkontakte/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 530
    const/4 v5, 0x0

    .line 531
    .local v5, "numNew":I
    const/4 v1, 0x0

    .line 532
    .local v1, "found":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 533
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/NewsFragment$13;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    iget-object v6, v6, Lcom/vkontakte/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsEntry;

    .line 534
    .local v4, "ne":Lcom/vkontakte/android/NewsEntry;
    iget v6, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    iget v7, v4, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v6, v7, :cond_0

    iget v6, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v7, v4, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v6, v7, :cond_0

    iget v6, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v7, v4, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v6, v7, :cond_0

    .line 535
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found intersection, numNew="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const/4 v1, 0x1

    .line 540
    .end local v4    # "ne":Lcom/vkontakte/android/NewsEntry;
    :cond_1
    if-eqz v1, :cond_4

    .line 544
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    if-nez v1, :cond_3

    .line 545
    const-string v6, "vk"

    const-string v7, "Not found intersection :("

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/fragments/NewsFragment$13;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    if-nez v1, :cond_5

    const/4 v6, 0x1

    :goto_1
    invoke-static {v7, v6}, Lcom/vkontakte/android/fragments/NewsFragment;->access$1102(Lcom/vkontakte/android/fragments/NewsFragment;Z)Z

    .line 548
    iget-object v6, p0, Lcom/vkontakte/android/fragments/NewsFragment$13;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/NewsFragment;->access$700(Lcom/vkontakte/android/fragments/NewsFragment;)V

    .line 549
    return-void

    .line 541
    .restart local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 542
    iget-object v6, p0, Lcom/vkontakte/android/fragments/NewsFragment$13;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/NewsFragment;->access$1000(Lcom/vkontakte/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 547
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1
.end method
