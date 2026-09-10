.class Lcom/vkontakte/android/fragments/GroupsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "GroupsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/GroupsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GroupsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$1;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    .line 66
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$1;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v0, "com.vkontakte.android.GROUP_LIST_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$1;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$0(Lcom/vkontakte/android/fragments/GroupsFragment;)V

    .line 73
    :cond_2
    const-string v0, "com.vkontakte.android.GROUP_INVITES_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$1;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    sget v1, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1(Lcom/vkontakte/android/fragments/GroupsFragment;I)V

    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$1;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$2(Lcom/vkontakte/android/fragments/GroupsFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$1;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$2(Lcom/vkontakte/android/fragments/GroupsFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$1;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$3(Lcom/vkontakte/android/fragments/GroupsFragment;)I

    move-result v0

    if-nez v0, :cond_3

    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$1;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$2(Lcom/vkontakte/android/fragments/GroupsFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$1;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$4(Lcom/vkontakte/android/fragments/GroupsFragment;)V

    goto :goto_0
.end method
