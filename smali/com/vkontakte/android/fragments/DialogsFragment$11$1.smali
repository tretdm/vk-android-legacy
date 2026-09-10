.class Lcom/vkontakte/android/fragments/DialogsFragment$11$1;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment$11;->onDialogsLoaded(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

.field final synthetic val$rdlgs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment$11;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$1;->val$rdlgs:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x12c

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 657
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1400(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iget-boolean v1, v1, Lcom/vkontakte/android/fragments/DialogsFragment$11;->val$refresh:Z

    if-eqz v1, :cond_2

    .line 659
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$000(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 662
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$000(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 663
    .local v0, "prevSize":I
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$000(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$1;->val$rdlgs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 664
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$100(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    .line 665
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$1;->val$rdlgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 666
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1, v3}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1502(Lcom/vkontakte/android/fragments/DialogsFragment;Z)Z

    .line 670
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1600(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1500(Lcom/vkontakte/android/fragments/DialogsFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 671
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1700(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 672
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1700(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {v1, v4, v5}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 673
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$800(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-static {v1, v3, v5}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 675
    :cond_3
    if-nez v0, :cond_0

    .line 676
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1800(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    goto/16 :goto_0

    .line 668
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1, v4}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1502(Lcom/vkontakte/android/fragments/DialogsFragment;Z)Z

    goto :goto_1
.end method
