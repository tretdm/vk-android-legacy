.class Lcom/vkontakte/android/fragments/DialogsFragment$11$2;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment$11;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

.field final synthetic val$ecode:I

.field final synthetic val$emsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment$11;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iput p2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$2;->val$ecode:I

    iput-object p3, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$2;->val$emsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x12c

    const/4 v3, 0x0

    .line 686
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1400(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 694
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$000(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$700(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$2;->val$ecode:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$2;->val$emsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$700(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v4}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 690
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$800(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    goto :goto_0

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11$2;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$11;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00ce

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
