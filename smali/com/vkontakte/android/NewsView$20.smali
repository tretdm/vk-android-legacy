.class Lcom/vkontakte/android/NewsView$20;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;


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
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$20;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean p2, p0, Lcom/vkontakte/android/NewsView$20;->val$refresh:Z

    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$20;->this$0:Lcom/vkontakte/android/NewsView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    .line 1040
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView$20;->val$refresh:Z

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$20;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$20;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/NewsView;->onError(ILjava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$20;->this$0:Lcom/vkontakte/android/NewsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewsView;->access$12(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/APIRequest;)V

    .line 1046
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

    .line 1008
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$20;->this$0:Lcom/vkontakte/android/NewsView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/NewsView;->access$12(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/APIRequest;)V

    .line 1009
    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1010
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$20;->this$0:Lcom/vkontakte/android/NewsView;

    iput-object p2, v1, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 1011
    :cond_0
    iget-boolean v1, p0, Lcom/vkontakte/android/NewsView$20;->val$refresh:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$20;->this$0:Lcom/vkontakte/android/NewsView;

    iget v1, v1, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    if-nez v1, :cond_2

    .line 1012
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$20;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->replace(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 1013
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$20;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "news"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1014
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1015
    const-string v2, "comments_from"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1016
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1019
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v3, :cond_7

    .line 1020
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$20;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v1, v1, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v1, :cond_6

    .line 1021
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 1022
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$20;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v4, v1, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    .line 1030
    .end local v0    # "i":I
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$20;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v4, v1, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 1031
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$20;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v1, v1, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    if-eqz v1, :cond_4

    .line 1032
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$20;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v4, v1, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 1033
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$20;->this$0:Lcom/vkontakte/android/NewsView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 1034
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$20;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 1036
    :cond_4
    return-void

    .line 1021
    .restart local v0    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$20;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v2, v1, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1024
    .end local v0    # "i":I
    :cond_6
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$20;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView$20;->val$refresh:Z

    invoke-virtual {v1, p1, v2}, Lcom/vkontakte/android/NewsView;->onDataLoaded(Ljava/util/List;Z)V

    goto :goto_1

    .line 1027
    :cond_7
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$20;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {p1, v4, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView$20;->val$refresh:Z

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/NewsView;->onDataLoaded(Ljava/util/List;Z)V

    .line 1028
    const/16 v0, 0xa

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$20;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v2, v1, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
