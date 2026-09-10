.class Lcom/vkontakte/android/fragments/SuggestedPostListFragment$1;
.super Ljava/lang/Object;
.source "SuggestedPostListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SuggestedPostListFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SuggestedPostListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SuggestedPostListFragment;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestedPostListFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestedPostListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestedPostListFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestedPostListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/SuggestedPostListFragment;->access$002(Lcom/vkontakte/android/fragments/SuggestedPostListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestedPostListFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestedPostListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/fragments/SuggestedPostListFragment;->onError(ILjava/lang/String;)V

    .line 43
    return-void
.end method

.method public success(Ljava/util/ArrayList;ILjava/lang/Object;II)V
    .locals 2
    .param p2, "total"    # I
    .param p3, "status"    # Ljava/lang/Object;
    .param p4, "postponedCount"    # I
    .param p5, "suggestedCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;I",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "news":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestedPostListFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestedPostListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/SuggestedPostListFragment;->access$002(Lcom/vkontakte/android/fragments/SuggestedPostListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 36
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestedPostListFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestedPostListFragment;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/vkontakte/android/fragments/SuggestedPostListFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 37
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
