.class Lcom/vkontakte/android/NewsView$19$3;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewsView$19;

.field private final synthetic val$e:Ljava/util/ArrayList;

.field private final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView$19;Ljava/util/ArrayList;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$19$3;->this$1:Lcom/vkontakte/android/NewsView$19;

    iput-object p2, p0, Lcom/vkontakte/android/NewsView$19$3;->val$e:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/vkontakte/android/NewsView$19$3;->val$refresh:Z

    .line 985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 987
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$19$3;->val$e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v4, :cond_1

    .line 988
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$19$3;->this$1:Lcom/vkontakte/android/NewsView$19;

    invoke-static {v1}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$3;->val$e:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView$19$3;->val$refresh:Z

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/NewsView;->onDataLoaded(Ljava/util/List;Z)V

    .line 993
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$19$3;->this$1:Lcom/vkontakte/android/NewsView$19;

    invoke-static {v1}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$3;->this$1:Lcom/vkontakte/android/NewsView$19;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/cache/NewsfeedCache;->getUpdateTime(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    .line 994
    return-void

    .line 990
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$19$3;->this$1:Lcom/vkontakte/android/NewsView$19;

    invoke-static {v1}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$3;->val$e:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView$19$3;->val$refresh:Z

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/NewsView;->onDataLoaded(Ljava/util/List;Z)V

    .line 991
    const/16 v0, 0xa

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$19$3;->val$e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$19$3;->this$1:Lcom/vkontakte/android/NewsView$19;

    invoke-static {v1}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v1

    iget-object v2, v1, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$19$3;->val$e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
