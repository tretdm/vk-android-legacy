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
    .line 220
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$802(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)Z

    .line 276
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$2;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 287
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1502(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public success(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 9
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
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 223
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$400(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$500(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 224
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$400(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 225
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 227
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$500(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 228
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 231
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 232
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    const/4 v4, 0x3

    if-le p3, v4, :cond_3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$700(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_0
    invoke-static {v7, v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$602(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)Z

    .line 234
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v3, "toDisplay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$400(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/FriendRequest;

    .line 237
    .local v2, "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v4, v2, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    .end local v3    # "toDisplay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    :cond_3
    move v4, v6

    .line 232
    goto :goto_0

    .line 239
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "toDisplay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/FriendRequest;

    .line 240
    .restart local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v4, v2, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 241
    iget-object v4, v2, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 245
    .end local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    :cond_6
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$400(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 246
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4, v6}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$802(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)Z

    .line 247
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_8

    sget v7, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    const/16 v8, 0x64

    if-le v7, v8, :cond_7

    sget v7, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$400(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v7, v8, :cond_8

    :cond_7
    move v6, v5

    :cond_8
    invoke-static {v4, v6}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$302(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)Z

    .line 248
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4, v5}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$902(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)Z

    .line 249
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_9

    .line 250
    const-string v4, "vk"

    const-string v5, "getActivity==null"

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_3
    return-void

    .line 253
    :cond_9
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 270
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1502(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    goto :goto_3
.end method
