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

.field final synthetic val$dlgs:Ljava/util/ArrayList;

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment$12;Ljava/util/ArrayList;I)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->val$dlgs:Ljava/util/ArrayList;

    iput p3, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->val$total:I

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

    .line 720
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$12;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1400(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$12;->val$refresh:Z

    if-eqz v0, :cond_2

    .line 722
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$12;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1900(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 725
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$12;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1900(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->val$dlgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 726
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$12;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$100(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    .line 727
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->val$dlgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$12;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1900(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->val$total:I

    if-lt v0, v1, :cond_4

    .line 728
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$12;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1502(Lcom/vkontakte/android/fragments/DialogsFragment;Z)Z

    .line 732
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$12;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1600(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/DialogsFragment$12;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1500(Lcom/vkontakte/android/fragments/DialogsFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 733
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$12;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1700(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$12;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1700(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 735
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$12;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$800(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0, v2, v4}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    goto :goto_0

    .line 730
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$12$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$12;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$12;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0, v3}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1502(Lcom/vkontakte/android/fragments/DialogsFragment;Z)Z

    goto :goto_1
.end method
