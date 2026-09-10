.class Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;
.super Ljava/lang/Object;
.source "BrowseUsersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/BrowseUsersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;)V
    .locals 0

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$0(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Ljava/lang/Runnable;)V

    .line 652
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$2(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 655
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$3(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 656
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$4(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$5(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$6(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    goto :goto_0
.end method
