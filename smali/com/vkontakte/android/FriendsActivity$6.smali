.class Lcom/vkontakte/android/FriendsActivity$6;
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
    iput-object p1, p0, Lcom/vkontakte/android/FriendsActivity$6;->this$0:Lcom/vkontakte/android/FriendsActivity;

    .line 269
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

    .line 271
    sget v3, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    if-ne v3, v4, :cond_0

    .line 272
    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$6;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/FriendListView;->setHighlightMode(I)V

    .line 273
    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$6;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$6;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/FriendListView;->setHighlightMode(I)V

    .line 275
    :cond_0
    sget v3, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    if-nez v3, :cond_1

    .line 276
    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$6;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/FriendListView;->setHighlightMode(I)V

    .line 277
    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$6;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$6;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/FriendListView;->setHighlightMode(I)V

    .line 279
    :cond_1
    sget v3, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    if-ne v3, v5, :cond_2

    .line 280
    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$6;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/FriendListView;->setHighlightMode(I)V

    .line 281
    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$6;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$6;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/FriendListView;->setHighlightMode(I)V

    .line 283
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$6;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    sget-object v4, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v3, v4, v6}, Lcom/vkontakte/android/FriendListView;->setList(Ljava/util/Vector;Z)V

    .line 284
    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$6;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$6;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    sget-object v4, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/FriendListView;->setList(Ljava/util/Vector;Z)V

    .line 285
    :cond_3
    sget v3, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    if-eqz v3, :cond_4

    .line 286
    sget v3, Lcom/vkontakte/android/MainActivity;->friendListSort:I

    if-ne v3, v5, :cond_9

    .line 287
    :cond_4
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 288
    .local v0, "hints":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    sget-object v3, Lcom/vkontakte/android/Global;->friendHints:[I

    if-nez v3, :cond_5

    new-array v3, v6, [I

    sput-object v3, Lcom/vkontakte/android/Global;->friendHints:[I

    .line 289
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x5

    sget-object v4, Lcom/vkontakte/android/Global;->friendHints:[I

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lt v1, v3, :cond_6

    .line 297
    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$6;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/FriendListView;->setFirstHints(Ljava/util/Vector;)V

    .line 301
    .end local v0    # "hints":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 290
    .restart local v0    # "hints":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v1    # "i":I
    :cond_6
    sget-object v3, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8

    .line 289
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 291
    .local v2, "p":Lcom/vkontakte/android/UserProfile;
    iget v4, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    sget-object v5, Lcom/vkontakte/android/Global;->friendHints:[I

    aget v5, v5, v1

    if-ne v4, v5, :cond_7

    .line 292
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 299
    .end local v0    # "hints":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    .end local v1    # "i":I
    .end local v2    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_9
    iget-object v3, p0, Lcom/vkontakte/android/FriendsActivity$6;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/FriendListView;->setFirstHints(Ljava/util/Vector;)V

    goto :goto_1
.end method
