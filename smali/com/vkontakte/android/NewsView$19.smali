.class Lcom/vkontakte/android/NewsView$19;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$19;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean p2, p0, Lcom/vkontakte/android/NewsView$19;->val$refresh:Z

    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$19;->this$0:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 900
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$19;->this$0:Lcom/vkontakte/android/NewsView;

    iget v1, v1, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Lcom/vkontakte/android/NewsView$19;->val$refresh:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$19;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v1}, Lcom/vkontakte/android/NewsView;->access$13(Lcom/vkontakte/android/NewsView;)I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$19;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, v1, Lcom/vkontakte/android/NewsView;->news:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$19;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/cache/NewsfeedCache;->hasEntries(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 901
    :cond_0
    iget-boolean v1, p0, Lcom/vkontakte/android/NewsView$19;->val$refresh:Z

    if-eqz v1, :cond_1

    .line 902
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$19;->this$0:Lcom/vkontakte/android/NewsView;

    const-string v4, ""

    iput-object v4, v1, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 904
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$19;->this$0:Lcom/vkontakte/android/NewsView;

    new-instance v5, Lcom/vkontakte/android/api/NewsfeedGet;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$19;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v6, v1, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$19;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v1, v1, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    :goto_0
    iget-object v7, p0, Lcom/vkontakte/android/NewsView$19;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v7}, Lcom/vkontakte/android/NewsView;->access$13(Lcom/vkontakte/android/NewsView;)I

    move-result v7

    if-ne v7, v2, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/NewsView$19;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v3}, Lcom/vkontakte/android/NewsView;->access$8(Lcom/vkontakte/android/NewsView;)I

    move-result v3

    invoke-direct {v5, v6, v1, v2, v3}, Lcom/vkontakte/android/api/NewsfeedGet;-><init>(Ljava/lang/String;IZI)V

    .line 905
    new-instance v1, Lcom/vkontakte/android/NewsView$19$1;

    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView$19;->val$refresh:Z

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/NewsView$19$1;-><init>(Lcom/vkontakte/android/NewsView$19;Z)V

    invoke-virtual {v5, v1}, Lcom/vkontakte/android/api/NewsfeedGet;->setCallback(Lcom/vkontakte/android/api/NewsfeedGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 904
    invoke-static {v4, v1}, Lcom/vkontakte/android/NewsView;->access$12(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/APIRequest;)V

    .line 968
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$19;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v1}, Lcom/vkontakte/android/NewsView;->access$15(Lcom/vkontakte/android/NewsView;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 999
    :goto_2
    return-void

    .line 904
    :cond_2
    const/16 v1, 0x14

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    .line 971
    :cond_4
    sget-object v1, Lcom/vkontakte/android/data/Posts;->feed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 972
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$19;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/vkontakte/android/NewsView$19$2;

    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView$19;->val$refresh:Z

    invoke-direct {v2, p0, v3}, Lcom/vkontakte/android/NewsView$19$2;-><init>(Lcom/vkontakte/android/NewsView$19;Z)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 984
    :cond_5
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$19;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/cache/NewsfeedCache;->get(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 985
    .local v0, "e":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$19;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/vkontakte/android/NewsView$19$3;

    iget-boolean v4, p0, Lcom/vkontakte/android/NewsView$19;->val$refresh:Z

    invoke-direct {v2, p0, v0, v4}, Lcom/vkontakte/android/NewsView$19$3;-><init>(Lcom/vkontakte/android/NewsView$19;Ljava/util/ArrayList;Z)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 996
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$19;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v3, v1, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    goto :goto_2
.end method
