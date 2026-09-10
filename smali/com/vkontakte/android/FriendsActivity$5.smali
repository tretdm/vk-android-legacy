.class Lcom/vkontakte/android/FriendsActivity$5;
.super Ljava/lang/Object;
.source "FriendsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/FriendsGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendsActivity;->loadFriendList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090058

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    return-void
.end method

.method public success([Lcom/vkontakte/android/UserProfile;)V
    .locals 11
    .param p1, "list"    # [Lcom/vkontakte/android/UserProfile;

    .prologue
    const/4 v8, 0x0

    .line 217
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 218
    .local v1, "flist":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    array-length v9, p1

    move v7, v8

    :goto_0
    if-lt v7, v9, :cond_5

    .line 219
    iget-object v7, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v7, v7, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v7, v1, v8}, Lcom/vkontakte/android/FriendListView;->setList(Ljava/util/Vector;Z)V

    .line 220
    iget-object v7, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-boolean v7, v7, Lcom/vkontakte/android/FriendsActivity;->mutual:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-boolean v7, v7, Lcom/vkontakte/android/FriendsActivity;->select:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v7, v7, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    const/4 v8, 0x1

    invoke-virtual {v7, v1, v8}, Lcom/vkontakte/android/FriendListView;->setList(Ljava/util/Vector;Z)V

    .line 221
    :cond_0
    iget-object v7, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget v7, v7, Lcom/vkontakte/android/FriendsActivity;->userID:I

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    if-eq v7, v8, :cond_1

    iget-object v7, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget v7, v7, Lcom/vkontakte/android/FriendsActivity;->userID:I

    if-nez v7, :cond_3

    .line 222
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v0, "changed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v6, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v7, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 242
    sput-object v1, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    .line 243
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v7

    new-array v7, v7, [I

    sput-object v7, Lcom/vkontakte/android/Global;->friendHints:[I

    .line 244
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v3, v7, :cond_a

    .line 246
    iget-object v7, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    invoke-static {v0, v6, v7}, Lcom/vkontakte/android/cache/FriendsCache;->update(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 247
    invoke-static {}, Lcom/vkontakte/android/Global;->sortFriendList()V

    .line 249
    .end local v0    # "changed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v3    # "i":I
    .end local v6    # "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v7, v7, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v7}, Lcom/vkontakte/android/FriendListView;->refreshDone()V

    .line 250
    iget-object v7, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-boolean v7, v7, Lcom/vkontakte/android/FriendsActivity;->mutual:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-boolean v7, v7, Lcom/vkontakte/android/FriendsActivity;->select:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v7, v7, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v7}, Lcom/vkontakte/android/FriendListView;->refreshDone()V

    .line 251
    :cond_4
    return-void

    .line 218
    :cond_5
    aget-object v5, p1, v7

    .local v5, "p":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 225
    .end local v5    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v0    # "changed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v6    # "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    .line 226
    .local v4, "lp":Lcom/vkontakte/android/UserProfile;
    const/4 v2, 0x0

    .line 227
    .local v2, "found":Z
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_8

    .line 237
    :goto_3
    if-nez v2, :cond_2

    .line 239
    iget v8, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 227
    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    .line 228
    .restart local v5    # "p":Lcom/vkontakte/android/UserProfile;
    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    iget v9, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v10, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v9, v10, :cond_7

    .line 229
    invoke-virtual {v5, v4}, Lcom/vkontakte/android/UserProfile;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 231
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_9
    const/4 v2, 0x1

    .line 234
    goto :goto_3

    .line 244
    .end local v2    # "found":Z
    .end local v4    # "lp":Lcom/vkontakte/android/UserProfile;
    .end local v5    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v3    # "i":I
    :cond_a
    sget-object v8, Lcom/vkontakte/android/Global;->friendHints:[I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/UserProfile;

    iget v7, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    aput v7, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
