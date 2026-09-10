.class Lcom/vkontakte/android/FriendsActivity$5;
.super Ljava/lang/Object;
.source "FriendsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendsActivity;->update()V
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

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 234
    sget v3, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    if-ne v3, v4, :cond_0

    .line 235
    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/FriendListView;->setHighlightMode(I)V

    .line 236
    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/FriendListView;->setHighlightMode(I)V

    .line 238
    :cond_0
    sget v3, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    if-nez v3, :cond_1

    .line 239
    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/FriendListView;->setHighlightMode(I)V

    .line 240
    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/FriendListView;->setHighlightMode(I)V

    .line 242
    :cond_1
    sget v3, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    if-ne v3, v5, :cond_2

    .line 243
    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/FriendListView;->setHighlightMode(I)V

    .line 244
    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/FriendListView;->setHighlightMode(I)V

    .line 246
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    sget-object v4, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v3, v4, v6}, Lcom/vkontakte/android/FriendListView;->setList(Ljava/util/Vector;Z)V

    .line 247
    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    sget-object v4, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/FriendListView;->setList(Ljava/util/Vector;Z)V

    .line 248
    sget v3, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    if-eqz v3, :cond_3

    .line 249
    sget v3, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    if-ne v3, v5, :cond_8

    .line 250
    :cond_3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 251
    .local v0, "hints":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    sget-object v3, Lcom/vkontakte/android/Global;->friendHints:[I

    if-nez v3, :cond_4

    new-array v3, v6, [I

    sput-object v3, Lcom/vkontakte/android/Global;->friendHints:[I

    .line 252
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x5

    sget-object v4, Lcom/vkontakte/android/Global;->friendHints:[I

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lt v1, v3, :cond_5

    .line 260
    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/FriendListView;->setFirstHints(Ljava/util/Vector;)V

    .line 264
    .end local v0    # "hints":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 253
    .restart local v0    # "hints":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v1    # "i":I
    :cond_5
    sget-object v3, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 252
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 254
    .local v2, "p":Lcom/vkontakte/android/UserProfile;
    iget v4, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    sget-object v5, Lcom/vkontakte/android/Global;->friendHints:[I

    aget v5, v5, v1

    if-ne v4, v5, :cond_6

    .line 255
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 262
    .end local v0    # "hints":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    .end local v1    # "i":I
    .end local v2    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_8
    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$5;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/FriendListView;->setFirstHints(Ljava/util/Vector;)V

    goto :goto_1
.end method
