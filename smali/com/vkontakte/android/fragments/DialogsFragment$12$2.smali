.class Lcom/vkontakte/android/fragments/DialogsFragment$12$2;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment$12;->onDialogsLoaded(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

.field private final synthetic val$dlgs:Ljava/util/ArrayList;

.field private final synthetic val$refresh:Z

.field private final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment$12;ZLjava/util/ArrayList;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->val$refresh:Z

    iput-object p3, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->val$dlgs:Ljava/util/ArrayList;

    iput p4, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->val$total:I

    .line 717
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

    .line 718
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$12;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$12;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$14(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->val$refresh:Z

    if-eqz v0, :cond_2

    .line 720
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$12;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$12;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$19(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 723
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$12;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$12;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$19(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->val$dlgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 724
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$12;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$12;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    .line 725
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->val$dlgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$12;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$12;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$19(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->val$total:I

    if-lt v0, v1, :cond_4

    .line 726
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$12;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$12;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$15(Lcom/vkontakte/android/fragments/DialogsFragment;Z)V

    .line 730
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$12;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$12;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$16(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment$12;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$12;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$17(Lcom/vkontakte/android/fragments/DialogsFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 731
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$12;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$12;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$18(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$12;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$12;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$18(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 733
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$12;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$12;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$9(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0, v2, v4}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    goto/16 :goto_0

    .line 728
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$12;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$12;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$15(Lcom/vkontakte/android/fragments/DialogsFragment;Z)V

    goto :goto_1
.end method
