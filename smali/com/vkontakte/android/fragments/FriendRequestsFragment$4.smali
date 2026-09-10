.class Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;
.super Ljava/lang/Object;
.source "FriendRequestsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/FriendsGetRequests$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendRequestsFragment;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$11(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)V

    .line 269
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$2;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 280
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$19(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Lcom/vkontakte/android/APIRequest;)V

    goto :goto_0
.end method

.method public success(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 8
    .param p3, "numRecoms"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/FriendRequest;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/FriendRequest;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "reqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    .local p2, "recoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 216
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$9(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 218
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 220
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$9(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 224
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 225
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    const/4 v3, 0x3

    if-le p3, v3, :cond_6

    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$4(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v4

    :goto_0
    invoke-static {v6, v3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$10(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)V

    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v2, "toDisplay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    .line 232
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_8

    .line 238
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 239
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v3, v5}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$11(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)V

    .line 240
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    sget v6, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    const/16 v7, 0x64

    if-le v6, v7, :cond_4

    sget v6, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v6, v7, :cond_5

    :cond_4
    move v5, v4

    :cond_5
    invoke-static {v3, v5}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$12(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)V

    .line 241
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$13(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)V

    .line 242
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_9

    .line 243
    const-string v3, "vk"

    const-string v4, "getActivity==null"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_3
    return-void

    .end local v0    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "toDisplay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    :cond_6
    move v3, v5

    .line 225
    goto :goto_0

    .line 229
    .restart local v0    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v2    # "toDisplay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/FriendRequest;

    .line 230
    .local v1, "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v6, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v6, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 232
    .end local v1    # "req":Lcom/vkontakte/android/api/FriendRequest;
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/FriendRequest;

    .line 233
    .restart local v1    # "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v6, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v6, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 234
    iget-object v6, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v6, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 246
    .end local v1    # "req":Lcom/vkontakte/android/api/FriendRequest;
    :cond_9
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 263
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$19(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Lcom/vkontakte/android/APIRequest;)V

    goto :goto_3
.end method
