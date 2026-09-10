.class Lcom/vkontakte/android/fragments/GamesFeedFragment$2;
.super Ljava/lang/Object;
.source "GamesFeedFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/AppsGetActivity$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GamesFeedFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GamesFeedFragment;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$2;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$2;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/GamesFeedFragment;->access$002(Lcom/vkontakte/android/fragments/GamesFeedFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$2;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/fragments/GamesFeedFragment;->onError(ILjava/lang/String;)V

    .line 73
    return-void
.end method

.method public success(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p2, "newFrom"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/data/GameFeedEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "feed":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/data/GameFeedEntry;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$2;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/GamesFeedFragment;->access$002(Lcom/vkontakte/android/fragments/GamesFeedFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$2;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    invoke-static {v0, p2}, Lcom/vkontakte/android/fragments/GamesFeedFragment;->access$102(Lcom/vkontakte/android/fragments/GamesFeedFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$2;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/vkontakte/android/fragments/GamesFeedFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 67
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
