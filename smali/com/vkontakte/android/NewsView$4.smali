.class Lcom/vkontakte/android/NewsView$4;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$4;->this$0:Lcom/vkontakte/android/NewsView;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 244
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$4;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v0, v0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewsView$4;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v0, v0, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$4;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v0, v0, Lcom/vkontakte/android/NewsView;->moreAvailable:Z

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$4;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v0, v0, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$4;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v2, v0, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 247
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$4;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v3, v0, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 257
    :cond_1
    :goto_0
    return-void

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$4;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$4;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$4;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, v1, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewsView;->onDataLoaded(Ljava/util/List;Z)V

    .line 250
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$4;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 251
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$4;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v3, v0, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 252
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$4;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    goto :goto_0

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$4;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    goto :goto_0
.end method
