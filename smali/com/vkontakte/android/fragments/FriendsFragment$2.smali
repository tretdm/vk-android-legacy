.class Lcom/vkontakte/android/fragments/FriendsFragment$2;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$2;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$2;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$0(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    .line 108
    return-void
.end method
