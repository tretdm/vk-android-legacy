.class Lcom/vkontakte/android/fragments/DialogsFragment$7$1;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment$7;->onDialogsLoaded(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/DialogsFragment$7;

.field private final synthetic val$rdlgs:Ljava/util/ArrayList;

.field private final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment$7;ZLjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$7;

    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7$1;->val$refresh:Z

    iput-object p3, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7$1;->val$rdlgs:Ljava/util/ArrayList;

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x12c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 379
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7$1;->val$refresh:Z

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$7;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$7;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$7;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 381
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$7;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$7;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$7;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$4(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$7;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$7;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$7;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7$1;->val$rdlgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 384
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$7;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$7;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$7;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    .line 385
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7$1;->val$rdlgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$7;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$7;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$7;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$9(Lcom/vkontakte/android/fragments/DialogsFragment;Z)V

    .line 390
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$7;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$7;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$7;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$10(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$7;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment$7;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$7;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$11(Lcom/vkontakte/android/fragments/DialogsFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 391
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$7;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$7;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$7;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$12(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$7;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$7;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$7;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$12(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 393
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$7;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$7;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$7;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$13(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0, v2, v4}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 396
    :cond_1
    return-void

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$7;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$7;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$7;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$9(Lcom/vkontakte/android/fragments/DialogsFragment;Z)V

    goto :goto_0
.end method
