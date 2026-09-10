.class Lcom/vkontakte/android/NewsView$18;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/NewsfeedSearch$Callback;


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

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 880
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    iput-boolean v3, v1, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v3, v0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 881
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView$18;->val$refresh:Z

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/NewsView;->onError(ILjava/lang/String;)V

    .line 886
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewsView;->access$12(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/APIRequest;)V

    .line 887
    return-void
.end method

.method public success(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .param p2, "newFrom"    # Ljava/lang/String;
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
    .local p1, "news":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    const/16 v3, 0xa

    const/4 v4, 0x0

    .line 855
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/NewsView;->access$12(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/APIRequest;)V

    .line 856
    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 857
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iput-object p2, v1, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 859
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v3, :cond_5

    .line 860
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v1, v1, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v1, :cond_4

    .line 861
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 870
    .end local v0    # "i":I
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v4, v1, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    .line 871
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v4, v1, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 872
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v1, v1, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    if-eqz v1, :cond_2

    .line 873
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v4, v1, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 874
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 875
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 877
    :cond_2
    return-void

    .line 861
    .restart local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v2, v1, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 863
    .end local v0    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView$18;->val$refresh:Z

    invoke-virtual {v1, p1, v2}, Lcom/vkontakte/android/NewsView;->onDataLoaded(Ljava/util/List;Z)V

    goto :goto_1

    .line 866
    :cond_5
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {p1, v4, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView$18;->val$refresh:Z

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/NewsView;->onDataLoaded(Ljava/util/List;Z)V

    .line 867
    iget-boolean v1, p0, Lcom/vkontakte/android/NewsView$18;->val$refresh:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, v1, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 868
    :cond_6
    const/16 v0, 0xa

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$18;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v2, v1, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
