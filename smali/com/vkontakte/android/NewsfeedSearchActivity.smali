.class public Lcom/vkontakte/android/NewsfeedSearchActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "NewsfeedSearchActivity.java"


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
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 10
    const-string v1, ""

    .line 11
    .local v1, "q":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    .local v0, "dt":Ljava/lang/String;
    const-string v3, "/"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v1, v3, v4

    .line 16
    .end local v0    # "dt":Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/vkontakte/android/NewsView;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vkontakte/android/NewsView;-><init>(Landroid/content/Context;Z)V

    .line 17
    .local v2, "view":Lcom/vkontakte/android/NewsView;
    invoke-virtual {v2}, Lcom/vkontakte/android/NewsView;->initWithSearch()V

    .line 18
    invoke-virtual {v2, v1}, Lcom/vkontakte/android/NewsView;->setSearchQuery(Ljava/lang/String;)V

    .line 19
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 20
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewsfeedSearchActivity;->setContentView(Landroid/view/View;)V

    .line 21
    return-void
.end method
