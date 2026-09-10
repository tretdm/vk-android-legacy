.class Lcom/vkontakte/android/fragments/userlist/FollowersListFragment$1;
.super Ljava/lang/Object;
.source "FollowersListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/SubscriptionsGetFollowers$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/vkontakte/android/fragments/userlist/FollowersListFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FollowersListFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;->access$002(Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 32
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FollowersListFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;

    invoke-static {v0, p1, p2}, Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;->access$400(Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;ILjava/lang/String;)V

    .line 33
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "users":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FollowersListFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;->access$002(Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 26
    iget-object v1, p0, Lcom/vkontakte/android/fragments/userlist/FollowersListFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FollowersListFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;->access$100(Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/vkontakte/android/fragments/userlist/FollowersListFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;->access$200(Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/2addr v0, v2

    if-ge v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p2, v0}, Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;->access$300(Lcom/vkontakte/android/fragments/userlist/FollowersListFragment;Ljava/util/List;Z)V

    .line 27
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
