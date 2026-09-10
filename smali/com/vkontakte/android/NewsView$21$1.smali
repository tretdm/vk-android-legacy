.class Lcom/vkontakte/android/NewsView$21$1;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewsView$21;

.field private final synthetic val$e:Ljava/util/ArrayList;

.field private final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView$21;Ljava/util/ArrayList;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$21$1;->this$1:Lcom/vkontakte/android/NewsView$21;

    iput-object p2, p0, Lcom/vkontakte/android/NewsView$21$1;->val$e:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/vkontakte/android/NewsView$21$1;->val$refresh:Z

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 1012
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$21$1;->val$e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v4, :cond_1

    .line 1013
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$21$1;->this$1:Lcom/vkontakte/android/NewsView$21;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$21;->access$0(Lcom/vkontakte/android/NewsView$21;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/NewsView$21$1;->val$e:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lcom/vkontakte/android/NewsView$21$1;->val$refresh:Z

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/NewsView;->onDataLoaded(Ljava/util/List;Z)V

    .line 1020
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$21$1;->this$1:Lcom/vkontakte/android/NewsView$21;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$21;->access$0(Lcom/vkontakte/android/NewsView$21;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/NewsView$21$1;->this$1:Lcom/vkontakte/android/NewsView$21;

    invoke-static {v3}, Lcom/vkontakte/android/NewsView$21;->access$0(Lcom/vkontakte/android/NewsView$21;)Lcom/vkontakte/android/NewsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->getUpdateTime(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 1021
    return-void

    .line 1015
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1016
    .local v1, "nn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$21$1;->val$e:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1017
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$21$1;->this$1:Lcom/vkontakte/android/NewsView$21;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$21;->access$0(Lcom/vkontakte/android/NewsView$21;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView$21$1;->val$refresh:Z

    invoke-virtual {v2, v1, v3}, Lcom/vkontakte/android/NewsView;->onDataLoaded(Ljava/util/List;Z)V

    .line 1018
    const/16 v0, 0xa

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$21$1;->val$e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$21$1;->this$1:Lcom/vkontakte/android/NewsView$21;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$21;->access$0(Lcom/vkontakte/android/NewsView$21;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    iget-object v3, v2, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$21$1;->val$e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
