.class Lcom/vkontakte/android/NewsView$19$2;
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

.field private final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView$19;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$19$2;->this$1:Lcom/vkontakte/android/NewsView$19;

    iput-boolean p2, p0, Lcom/vkontakte/android/NewsView$19$2;->val$refresh:Z

    .line 972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 974
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$19$2;->this$1:Lcom/vkontakte/android/NewsView$19;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    sget-object v1, Lcom/vkontakte/android/data/Posts;->feed:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView$19$2;->val$refresh:Z

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewsView;->onDataLoaded(Ljava/util/List;Z)V

    .line 975
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$19$2;->this$1:Lcom/vkontakte/android/NewsView$19;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/ArrayList;

    sget-object v1, Lcom/vkontakte/android/data/Posts;->preloadedFeed:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 976
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$19$2;->this$1:Lcom/vkontakte/android/NewsView$19;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    sget v1, Lcom/vkontakte/android/data/Posts;->feedItem:I

    sget v2, Lcom/vkontakte/android/data/Posts;->feedItemOffset:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelectionFromTop(II)V

    .line 977
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$19$2;->this$1:Lcom/vkontakte/android/NewsView$19;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    sget-object v1, Lcom/vkontakte/android/data/Posts;->feedFrom:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 978
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$19$2;->this$1:Lcom/vkontakte/android/NewsView$19;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    sget v1, Lcom/vkontakte/android/data/Posts;->feedOffset:I

    iput v1, v0, Lcom/vkontakte/android/NewsView;->offset:I

    .line 979
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$19$2;->this$1:Lcom/vkontakte/android/NewsView$19;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    sget-object v1, Lcom/vkontakte/android/data/Posts;->newNews:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    .line 980
    return-void
.end method
