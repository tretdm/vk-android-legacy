.class Lcom/vkontakte/android/NewsView$21;
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
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$21;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean p2, p0, Lcom/vkontakte/android/NewsView$21;->val$refresh:Z

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsView$21;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$21;->this$0:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1052
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$21;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->get(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1053
    .local v0, "e":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$21;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/vkontakte/android/NewsView$21$1;

    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView$21;->val$refresh:Z

    invoke-direct {v2, p0, v0, v3}, Lcom/vkontakte/android/NewsView$21$1;-><init>(Lcom/vkontakte/android/NewsView$21;Ljava/util/ArrayList;Z)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1066
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$21;->this$0:Lcom/vkontakte/android/NewsView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    .line 1067
    return-void
.end method
