.class Lcom/vkontakte/android/MenuListView$1$2;
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
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$1$2;->this$1:Lcom/vkontakte/android/MenuListView$1;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$1$2;->this$1:Lcom/vkontakte/android/MenuListView$1;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView$1;->access$0(Lcom/vkontakte/android/MenuListView$1;)Lcom/vkontakte/android/MenuListView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$2(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$1$2;->this$1:Lcom/vkontakte/android/MenuListView$1;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView$1;->access$0(Lcom/vkontakte/android/MenuListView$1;)Lcom/vkontakte/android/MenuListView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$2(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$1$2;->this$1:Lcom/vkontakte/android/MenuListView$1;

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView$1;->access$0(Lcom/vkontakte/android/MenuListView$1;)Lcom/vkontakte/android/MenuListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/vkontakte/android/cache/GroupsCache;->get(Landroid/content/Context;I)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$1$2;->this$1:Lcom/vkontakte/android/MenuListView$1;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView$1;->access$0(Lcom/vkontakte/android/MenuListView$1;)Lcom/vkontakte/android/MenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 102
    return-void
.end method
