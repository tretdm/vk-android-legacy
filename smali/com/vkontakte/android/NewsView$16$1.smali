.class Lcom/vkontakte/android/NewsView$16$1;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/NewsfeedGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewsView$16;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView$16;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$16$1;->this$1:Lcom/vkontakte/android/NewsView$16;

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 773
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$16$1;->this$1:Lcom/vkontakte/android/NewsView$16;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$16;->access$0(Lcom/vkontakte/android/NewsView$16;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewsView;->access$9(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/APIRequest;)V

    .line 775
    return-void
.end method

.method public success(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 8
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
    .line 747
    .local p1, "rnews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$16$1;->this$1:Lcom/vkontakte/android/NewsView$16;

    invoke-static {v4}, Lcom/vkontakte/android/NewsView$16;->access$0(Lcom/vkontakte/android/NewsView$16;)Lcom/vkontakte/android/NewsView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/vkontakte/android/NewsView;->access$9(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/APIRequest;)V

    .line 748
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$16$1;->this$1:Lcom/vkontakte/android/NewsView$16;

    invoke-static {v4}, Lcom/vkontakte/android/NewsView$16;->access$0(Lcom/vkontakte/android/NewsView$16;)Lcom/vkontakte/android/NewsView;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/vkontakte/android/NewsView;->access$10(Lcom/vkontakte/android/NewsView;Ljava/lang/String;)V

    .line 749
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$16$1;->this$1:Lcom/vkontakte/android/NewsView$16;

    invoke-static {v4}, Lcom/vkontakte/android/NewsView$16;->access$0(Lcom/vkontakte/android/NewsView$16;)Lcom/vkontakte/android/NewsView;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 750
    const/4 v3, 0x0

    .line 751
    .local v3, "numNew":I
    const/4 v1, 0x0

    .line 752
    .local v1, "found":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 764
    :cond_0
    if-nez v1, :cond_1

    .line 765
    const-string v4, "vk"

    const-string v5, "Not found intersection :("

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$16$1;->this$1:Lcom/vkontakte/android/NewsView$16;

    invoke-static {v4}, Lcom/vkontakte/android/NewsView$16;->access$0(Lcom/vkontakte/android/NewsView$16;)Lcom/vkontakte/android/NewsView;

    move-result-object v5

    if-eqz v1, :cond_5

    const/4 v4, 0x0

    :goto_1
    invoke-static {v5, v4}, Lcom/vkontakte/android/NewsView;->access$11(Lcom/vkontakte/android/NewsView;Z)V

    .line 768
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$16$1;->this$1:Lcom/vkontakte/android/NewsView$16;

    invoke-static {v4}, Lcom/vkontakte/android/NewsView$16;->access$0(Lcom/vkontakte/android/NewsView$16;)Lcom/vkontakte/android/NewsView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/NewsView;->access$7(Lcom/vkontakte/android/NewsView;)V

    .line 769
    return-void

    .line 752
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 753
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    iget-object v5, p0, Lcom/vkontakte/android/NewsView$16$1;->this$1:Lcom/vkontakte/android/NewsView$16;

    invoke-static {v5}, Lcom/vkontakte/android/NewsView$16;->access$0(Lcom/vkontakte/android/NewsView$16;)Lcom/vkontakte/android/NewsView;

    move-result-object v5

    iget-object v5, v5, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 760
    :goto_2
    if-nez v1, :cond_0

    .line 761
    add-int/lit8 v3, v3, 0x1

    .line 762
    iget-object v5, p0, Lcom/vkontakte/android/NewsView$16$1;->this$1:Lcom/vkontakte/android/NewsView$16;

    invoke-static {v5}, Lcom/vkontakte/android/NewsView$16;->access$0(Lcom/vkontakte/android/NewsView$16;)Lcom/vkontakte/android/NewsView;

    move-result-object v5

    iget-object v5, v5, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 753
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsEntry;

    .line 754
    .local v2, "ne":Lcom/vkontakte/android/NewsEntry;
    iget v6, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    iget v7, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v6, v7, :cond_3

    iget v6, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v7, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v6, v7, :cond_3

    iget v6, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v7, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v6, v7, :cond_3

    .line 755
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Found intersection, numNew="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const/4 v1, 0x1

    .line 757
    goto :goto_2

    .line 767
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v2    # "ne":Lcom/vkontakte/android/NewsEntry;
    :cond_5
    const/4 v4, 0x1

    goto :goto_1
.end method
