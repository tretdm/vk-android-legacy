.class Lcom/vkontakte/android/fragments/FriendListFragment$4;
.super Ljava/lang/Object;
.source "FriendListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendListFragment;->updateFilter(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

.field final synthetic val$f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendListFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/FriendListFragment$4;->val$f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$4;->val$f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateFilter(Ljava/lang/String;)V

    .line 272
    return-void
.end method
