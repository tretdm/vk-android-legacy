.class Lcom/vkontakte/android/FriendRequestsView$10;
.super Ljava/lang/Object;
.source "FriendRequestsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendRequestsView;->onPause()V
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
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$10;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$10;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-static {v0}, Lcom/vkontakte/android/Global;->removeImages(Landroid/view/View;)V

    .line 760
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$10;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendRequestsView;->access$2(Lcom/vkontakte/android/FriendRequestsView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->clear()V

    .line 761
    return-void
.end method
