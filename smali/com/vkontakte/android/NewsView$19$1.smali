.class Lcom/vkontakte/android/NewsView$19$1;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/NewsfeedGet$Callback;


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
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$19$1;->this$1:Lcom/vkontakte/android/NewsView$19;

    iput-boolean p2, p0, Lcom/vkontakte/android/NewsView$19$1;->val$refresh:Z

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$19$1;->this$1:Lcom/vkontakte/android/NewsView$19;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 955
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$19$1;->this$1:Lcom/vkontakte/android/NewsView$19;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$19$1;->this$1:Lcom/vkontakte/android/NewsView$19;

    invoke-static {v1}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1;->this$1:Lcom/vkontakte/android/NewsView$19;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    iput-boolean v3, v1, Lcom/vkontakte/android/NewsView;->prependNewEntries:Z

    iput-boolean v3, v0, Lcom/vkontakte/android/NewsView;->refreshingOnStart:Z

    .line 956
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$19$1;->this$1:Lcom/vkontakte/android/NewsView$19;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/NewsView$19$1$2;

    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView$19$1;->val$refresh:Z

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/vkontakte/android/NewsView$19$1$2;-><init>(Lcom/vkontakte/android/NewsView$19$1;ZILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 966
    return-void
.end method

.method public success(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
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
    .line 908
    .local p1, "news":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$19$1;->this$1:Lcom/vkontakte/android/NewsView$19;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewsView;->access$12(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/APIRequest;)V

    .line 909
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView$19$1;->val$refresh:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewsView$19$1;->this$1:Lcom/vkontakte/android/NewsView$19;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$19$1;->this$1:Lcom/vkontakte/android/NewsView$19;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$13(Lcom/vkontakte/android/NewsView;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 910
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$19$1;->this$1:Lcom/vkontakte/android/NewsView$19;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vkontakte/android/cache/NewsfeedCache;->replace(Ljava/util/List;Landroid/content/Context;)V

    .line 911
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$19$1;->this$1:Lcom/vkontakte/android/NewsView$19;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "news"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 912
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 913
    const-string v1, "feed_from"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 914
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 916
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$19$1;->this$1:Lcom/vkontakte/android/NewsView$19;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/NewsView$19$1$1;

    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView$19$1;->val$refresh:Z

    invoke-direct {v1, p0, v2, p2, p1}, Lcom/vkontakte/android/NewsView$19$1$1;-><init>(Lcom/vkontakte/android/NewsView$19$1;ZLjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 952
    return-void
.end method
