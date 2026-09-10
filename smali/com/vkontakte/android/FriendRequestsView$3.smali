.class Lcom/vkontakte/android/FriendRequestsView$3;
.super Ljava/lang/Object;
.source "FriendRequestsView.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendRequestsView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendRequestsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendRequestsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$3;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$3;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendRequestsView;->access$4(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$3;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->loadData()V

    .line 150
    :cond_0
    return-void
.end method
