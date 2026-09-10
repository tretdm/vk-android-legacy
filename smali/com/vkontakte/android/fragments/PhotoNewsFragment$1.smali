.class Lcom/vkontakte/android/fragments/PhotoNewsFragment$1;
.super Ljava/lang/Object;
.source "PhotoNewsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/NewsfeedGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoNewsFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoNewsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoNewsFragment;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoNewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoNewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoNewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoNewsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoNewsFragment;->access$002(Lcom/vkontakte/android/fragments/PhotoNewsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoNewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoNewsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/fragments/PhotoNewsFragment;->onError(ILjava/lang/String;)V

    .line 35
    return-void
.end method

.method public success(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
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
    .line 26
    .local p1, "news":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoNewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoNewsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PhotoNewsFragment;->access$002(Lcom/vkontakte/android/fragments/PhotoNewsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 27
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoNewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoNewsFragment;

    invoke-static {v0, p2}, Lcom/vkontakte/android/fragments/PhotoNewsFragment;->access$102(Lcom/vkontakte/android/fragments/PhotoNewsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoNewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotoNewsFragment;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/vkontakte/android/fragments/PhotoNewsFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 29
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
