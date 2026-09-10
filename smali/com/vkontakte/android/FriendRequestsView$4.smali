.class Lcom/vkontakte/android/FriendRequestsView$4;
.super Ljava/lang/Object;
.source "FriendRequestsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/FriendsGetRequests$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendRequestsView;->loadData()V
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
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    new-instance v1, Lcom/vkontakte/android/FriendRequestsView$4$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/FriendRequestsView$4$2;-><init>(Lcom/vkontakte/android/FriendRequestsView$4;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/FriendRequestsView;->post(Ljava/lang/Runnable;)Z

    .line 245
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/FriendRequestsView;->access$12(Lcom/vkontakte/android/FriendRequestsView;Lcom/vkontakte/android/APIRequest;)V

    .line 246
    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/FriendRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "reqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    new-instance v1, Lcom/vkontakte/android/FriendRequestsView$4$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/FriendRequestsView$4$1;-><init>(Lcom/vkontakte/android/FriendRequestsView$4;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/FriendRequestsView;->post(Ljava/lang/Runnable;)Z

    .line 229
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/FriendRequestsView;->access$12(Lcom/vkontakte/android/FriendRequestsView;Lcom/vkontakte/android/APIRequest;)V

    .line 230
    return-void
.end method
