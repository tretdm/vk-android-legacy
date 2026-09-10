.class Lcom/vkontakte/android/fragments/GroupInvitationsFragment$4;
.super Ljava/lang/Object;
.source "GroupInvitationsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$4;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$4;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$2(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 163
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$4;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->access$1(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 164
    return-void
.end method
