.class Lcom/vkontakte/android/fragments/DialogsFragment$17;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesDeleteDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment;->doClearHistory(Lcom/vkontakte/android/DialogEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

.field final synthetic val$e:Lcom/vkontakte/android/DialogEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/DialogEntry;)V
    .locals 0

    .prologue
    .line 998
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$17;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$17;->val$e:Lcom/vkontakte/android/DialogEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$17;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f0d00ce

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1009
    return-void

    .line 1008
    :cond_0
    const v0, 0x7f0d00d0

    goto :goto_0
.end method

.method public success()V
    .locals 2

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$17;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$000(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$17;->val$e:Lcom/vkontakte/android/DialogEntry;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1002
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$17;->val$e:Lcom/vkontakte/android/DialogEntry;

    iget-object v0, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v0}, Lcom/vkontakte/android/data/Messages;->removeDialog(I)V

    .line 1003
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$17;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$100(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    .line 1004
    return-void
.end method
