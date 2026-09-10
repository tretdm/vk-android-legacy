.class Lcom/vkontakte/android/fragments/GroupsFragment$5;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GroupsFragment;->onAttach(Landroid/app/Activity;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$5;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 183
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 177
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$5;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0, p1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$13(Lcom/vkontakte/android/fragments/GroupsFragment;I)V

    .line 167
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$5;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$5(Lcom/vkontakte/android/fragments/GroupsFragment;)I

    move-result v0

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$5;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$14(Lcom/vkontakte/android/fragments/GroupsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$5;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$9(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/GroupInvitesView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/GroupInvitesView;->loadData()V

    .line 169
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment$5;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$15(Lcom/vkontakte/android/fragments/GroupsFragment;Z)V

    .line 171
    :cond_0
    return-void
.end method
