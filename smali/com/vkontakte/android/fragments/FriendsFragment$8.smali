.class Lcom/vkontakte/android/fragments/FriendsFragment$8;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendsFragment;->onAttach(Landroid/app/Activity;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$8;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/vkontakte/android/UserProfile;)V
    .locals 3
    .param p1, "p"    # Lcom/vkontakte/android/UserProfile;

    .prologue
    .line 275
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 276
    .local v0, "res":Landroid/content/Intent;
    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 277
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$8;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 278
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$8;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 279
    return-void
.end method
