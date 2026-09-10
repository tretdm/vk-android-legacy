.class Lcom/vkontakte/android/fragments/OwnerVideoListFragment$4;
.super Ljava/lang/Object;
.source "OwnerVideoListFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$4;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 164
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$4;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 165
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$4;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$700(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$4;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$900(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)V

    .line 167
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$4;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$800(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$4;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$800(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 168
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
