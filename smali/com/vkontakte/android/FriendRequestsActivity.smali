.class public Lcom/vkontakte/android/FriendRequestsActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "FriendRequestsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    new-instance v0, Lcom/vkontakte/android/FriendRequestsView;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FriendRequestsView;-><init>(Landroid/content/Context;)V

    .line 13
    .local v0, "v":Lcom/vkontakte/android/FriendRequestsView;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/FriendRequestsActivity;->setContentView(Landroid/view/View;)V

    .line 14
    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->loadData()V

    .line 25
    return-void
.end method
