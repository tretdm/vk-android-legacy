.class Lcom/vkontakte/android/FriendsActivity$FriendsPagesAdapter;
.super Lcom/vkontakte/android/ui/PagerAdapter;
.source "FriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/FriendsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendsPagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendsActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/FriendsActivity;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/vkontakte/android/FriendsActivity$FriendsPagesAdapter;->this$0:Lcom/vkontakte/android/FriendsActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/FriendsActivity;Lcom/vkontakte/android/FriendsActivity$FriendsPagesAdapter;)V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FriendsActivity$FriendsPagesAdapter;-><init>(Lcom/vkontakte/android/FriendsActivity;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 357
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "container":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 358
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 363
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity$FriendsPagesAdapter;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v0, v0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/FriendsActivity$FriendsPagesAdapter;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget v1, v1, Lcom/vkontakte/android/FriendsActivity;->userID:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/FriendsActivity$FriendsPagesAdapter;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget v1, v1, Lcom/vkontakte/android/FriendsActivity;->userID:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/FriendsActivity$FriendsPagesAdapter;->this$0:Lcom/vkontakte/android/FriendsActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/FriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "select"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 328
    packed-switch p2, :pswitch_data_0

    .line 349
    :goto_0
    if-eqz v0, :cond_1

    .line 350
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "container":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 352
    :cond_1
    return-object v0

    .line 330
    .restart local p1    # "container":Landroid/view/View;
    :pswitch_0
    iget-object v1, p0, Lcom/vkontakte/android/FriendsActivity$FriendsPagesAdapter;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v0, v1, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    .line 331
    goto :goto_0

    .line 333
    :pswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/FriendsActivity$FriendsPagesAdapter;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v0, v1, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    .line 334
    goto :goto_0

    .line 336
    :pswitch_2
    iget-object v1, p0, Lcom/vkontakte/android/FriendsActivity$FriendsPagesAdapter;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v0, v1, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    goto :goto_0

    .line 340
    :cond_2
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 342
    :pswitch_3
    iget-object v1, p0, Lcom/vkontakte/android/FriendsActivity$FriendsPagesAdapter;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v0, v1, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    .line 343
    goto :goto_0

    .line 345
    :pswitch_4
    iget-object v1, p0, Lcom/vkontakte/android/FriendsActivity$FriendsPagesAdapter;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v0, v1, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 340
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 367
    check-cast p2, Landroid/view/View;

    .end local p2    # "object":Ljava/lang/Object;
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 377
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 322
    return-void
.end method
