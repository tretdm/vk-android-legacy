.class Lcom/vkontakte/android/MenuListView$1$1;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MenuListView$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/MenuListView$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MenuListView$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$1$1;->this$1:Lcom/vkontakte/android/MenuListView$1;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 76
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$1$1;->this$1:Lcom/vkontakte/android/MenuListView$1;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView$1;->access$0(Lcom/vkontakte/android/MenuListView$1;)Lcom/vkontakte/android/MenuListView;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1$1;->this$1:Lcom/vkontakte/android/MenuListView$1;

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView$1;->access$0(Lcom/vkontakte/android/MenuListView$1;)Lcom/vkontakte/android/MenuListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/vkontakte/android/cache/FriendsCache;->get(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/MenuListView;->access$0(Lcom/vkontakte/android/MenuListView;Ljava/util/ArrayList;)V

    .line 77
    sget-object v2, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 85
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$1$1;->this$1:Lcom/vkontakte/android/MenuListView$1;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView$1;->access$0(Lcom/vkontakte/android/MenuListView$1;)Lcom/vkontakte/android/MenuListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 86
    return-void

    .line 77
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 78
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1$1;->this$1:Lcom/vkontakte/android/MenuListView$1;

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView$1;->access$0(Lcom/vkontakte/android/MenuListView$1;)Lcom/vkontakte/android/MenuListView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 79
    .local v1, "p2":Lcom/vkontakte/android/UserProfile;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget v4, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v5, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v4, v5, :cond_2

    .line 80
    iget-object v4, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    iput-object v4, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 81
    iget v4, v0, Lcom/vkontakte/android/UserProfile;->online:I

    iput v4, v1, Lcom/vkontakte/android/UserProfile;->online:I

    goto :goto_0
.end method
