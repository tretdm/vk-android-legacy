.class Lcom/vkontakte/android/NewsView$18;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/NewsfeedGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->loadData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;

.field private final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean p2, p0, Lcom/vkontakte/android/NewsView$18;->val$refresh:Z

    .line 870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 918
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    iput-boolean v3, v1, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v3, v0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 919
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView$18;->val$refresh:Z

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/NewsView;->onError(ILjava/lang/String;)V

    .line 924
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewsView;->access$13(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/APIRequest;)V

    .line 925
    return-void
.end method

.method public success(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 6
    .param p2, "newFrom"    # Ljava/lang/String;
    .param p3, "newOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "news":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    .line 873
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v2, v3}, Lcom/vkontakte/android/NewsView;->access$13(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/APIRequest;)V

    .line 874
    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView$18;->val$refresh:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView;->access$14(Lcom/vkontakte/android/NewsView;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 875
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView;->access$14(Lcom/vkontakte/android/NewsView;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 876
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v2, v3}, Lcom/vkontakte/android/NewsView;->access$8(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/APIRequest;)V

    .line 878
    :cond_0
    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView$18;->val$refresh:Z

    if-eqz v2, :cond_1

    .line 879
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v2, v2, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 880
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView;->access$12(Lcom/vkontakte/android/NewsView;)V

    .line 882
    :cond_1
    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 883
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iput-object p2, v2, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 884
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iput p3, v2, Lcom/vkontakte/android/NewsView;->offset:I

    .line 886
    :cond_2
    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView$18;->val$refresh:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iget v2, v2, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView;->access$1(Lcom/vkontakte/android/NewsView;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 887
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v2}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/vkontakte/android/cache/NewsfeedCache;->replace(Ljava/util/List;Landroid/content/Context;)V

    .line 888
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v2}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "news"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 889
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 890
    const-string v3, "feed_from"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 891
    const-string v3, "feed_offset"

    invoke-interface {v2, v3, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 892
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 894
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView;->access$1(Lcom/vkontakte/android/NewsView;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 895
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_8

    .line 897
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v4, :cond_b

    .line 898
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v2, v2, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v2, :cond_a

    .line 899
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_9

    .line 900
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v5, v2, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    .line 909
    .end local v1    # "i":I
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v5, v2, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 910
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v2, v2, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    if-eqz v2, :cond_7

    .line 911
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v5, v2, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 912
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 913
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 915
    :cond_7
    return-void

    .line 895
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    const-string v3, ""

    iput-object v3, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 899
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    .restart local v1    # "i":I
    :cond_9
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v3, v2, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 902
    .end local v1    # "i":I
    :cond_a
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView$18;->val$refresh:Z

    invoke-virtual {v2, p1, v3}, Lcom/vkontakte/android/NewsView;->onDataLoaded(Ljava/util/List;Z)V

    goto :goto_2

    .line 905
    :cond_b
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {p1, v5, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    iget-boolean v4, p0, Lcom/vkontakte/android/NewsView$18;->val$refresh:Z

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/NewsView;->onDataLoaded(Ljava/util/List;Z)V

    .line 906
    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView$18;->val$refresh:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v2, v2, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 907
    :cond_c
    const/16 v1, 0xa

    .restart local v1    # "i":I
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v3, v2, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
