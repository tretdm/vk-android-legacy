.class Lcom/vkontakte/android/FriendsActivity$2;
.super Ljava/lang/Object;
.source "FriendsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/FriendsActivity;
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
    iput-object p1, p0, Lcom/vkontakte/android/FriendsActivity$2;->this$0:Lcom/vkontakte/android/FriendsActivity;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 58
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 56
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 48
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "page selected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity$2;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v0, v0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity$2;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v0, v0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity$2;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v0, v0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity$2;->this$0:Lcom/vkontakte/android/FriendsActivity;

    iget-object v0, v0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->loadData()V

    .line 52
    :cond_0
    return-void
.end method
