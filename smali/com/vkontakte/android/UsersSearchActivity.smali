.class public Lcom/vkontakte/android/UsersSearchActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "UsersSearchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 9
    new-instance v0, Lcom/vkontakte/android/SearchUsersView;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/SearchUsersView;-><init>(Landroid/content/Context;)V

    .line 10
    .local v0, "sv":Lcom/vkontakte/android/SearchUsersView;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/UsersSearchActivity;->setContentView(Landroid/view/View;)V

    .line 11
    return-void
.end method
