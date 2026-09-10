.class Lcom/vkontakte/android/NewsView$22;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallGet$Callback;


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
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$22;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean p2, p0, Lcom/vkontakte/android/NewsView$22;->val$refresh:Z

    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$22;->this$0:Lcom/vkontakte/android/NewsView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    .line 1100
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView$22;->val$refresh:Z

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$22;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$22;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/NewsView;->onError(ILjava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$22;->this$0:Lcom/vkontakte/android/NewsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewsView;->access$12(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/APIRequest;)V

    .line 1105
    return-void
.end method

.method public success(Ljava/util/ArrayList;ILjava/lang/Object;II)V
    .locals 6
    .param p2, "total"    # I
    .param p3, "status"    # Ljava/lang/Object;
    .param p4, "postponedCount"    # I
    .param p5, "suggestedCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;I",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .prologue
    .local p1, "news":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    const/16 v2, 0xa

    const/4 v5, 0x0

    .line 1076
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$22;->this$0:Lcom/vkontakte/android/NewsView;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/vkontakte/android/NewsView;->access$12(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/APIRequest;)V

    .line 1078
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v2, :cond_4

    .line 1079
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$22;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v1, v1, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v1, :cond_3

    .line 1080
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 1081
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$22;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v5, v1, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    .line 1089
    .end local v0    # "i":I
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/NewsView$22;->this$0:Lcom/vkontakte/android/NewsView;

    iget v4, v3, Lcom/vkontakte/android/NewsView;->offset:I

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$22;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v1, v1, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_2
    add-int/2addr v1, v4

    iput v1, v3, Lcom/vkontakte/android/NewsView;->offset:I

    .line 1090
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$22;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v5, v1, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 1091
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$22;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v1, v1, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    if-eqz v1, :cond_1

    .line 1092
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$22;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v5, v1, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 1093
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$22;->this$0:Lcom/vkontakte/android/NewsView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 1094
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$22;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1, v5}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 1096
    :cond_1
    return-void

    .line 1080
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$22;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v3, v1, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1083
    .end local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$22;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView$22;->val$refresh:Z

    invoke-virtual {v1, p1, v3}, Lcom/vkontakte/android/NewsView;->onDataLoaded(Ljava/util/List;Z)V

    goto :goto_1

    .line 1086
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$22;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {p1, v5, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    iget-boolean v4, p0, Lcom/vkontakte/android/NewsView$22;->val$refresh:Z

    invoke-virtual {v1, v3, v4}, Lcom/vkontakte/android/NewsView;->onDataLoaded(Ljava/util/List;Z)V

    .line 1087
    const/16 v0, 0xa

    .restart local v0    # "i":I
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$22;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v3, v1, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1089
    .end local v0    # "i":I
    :cond_5
    const/16 v1, 0x14

    goto :goto_2
.end method
