.class Lcom/vkontakte/android/fragments/GamesFragment$5;
.super Ljava/lang/Object;
.source "GamesFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/AppsGetGamesPage$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GamesFragment;->doLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GamesFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GamesFragment;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFragment$5;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$5;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/GamesFragment;->access$602(Lcom/vkontakte/android/fragments/GamesFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 163
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$5;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/fragments/GamesFragment;->onError(ILjava/lang/String;)V

    .line 164
    return-void
.end method

.method public success(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/data/GameRequest;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/data/GameFeedEntry;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/data/ApiApplication;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "_reqs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/data/GameRequest;>;"
    .local p2, "_feed":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/data/GameFeedEntry;>;"
    .local p3, "_catalog":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/data/ApiApplication;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$5;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/GamesFragment;->access$602(Lcom/vkontakte/android/fragments/GamesFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$5;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$700(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 151
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$5;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$800(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$5;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$000(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$5;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$700(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 154
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$5;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$800(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 155
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$5;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$000(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 157
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$5;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/GamesFragment;->onDataLoaded(Ljava/util/ArrayList;)V

    .line 158
    return-void
.end method
