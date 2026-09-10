.class Lcom/vkontakte/android/fragments/ProfileFragment$21$1$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/AccountBanUser$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ProfileFragment$21$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/fragments/ProfileFragment$21$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ProfileFragment$21$1;)V
    .locals 0

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$21$1$1;->this$2:Lcom/vkontakte/android/fragments/ProfileFragment$21$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$21$1$1;->this$2:Lcom/vkontakte/android/fragments/ProfileFragment$21$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ProfileFragment$21$1;->this$1:Lcom/vkontakte/android/fragments/ProfileFragment$21;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ProfileFragment$21;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f0d00ce

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1472
    return-void

    .line 1471
    :cond_0
    const v0, 0x7f0d00d0

    goto :goto_0
.end method

.method public success()V
    .locals 2

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$21$1$1;->this$2:Lcom/vkontakte/android/fragments/ProfileFragment$21$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ProfileFragment$21$1;->this$1:Lcom/vkontakte/android/fragments/ProfileFragment$21;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ProfileFragment$21;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->blacklisted:Z

    .line 1464
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$21$1$1;->this$2:Lcom/vkontakte/android/fragments/ProfileFragment$21$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ProfileFragment$21$1;->this$1:Lcom/vkontakte/android/fragments/ProfileFragment$21;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ProfileFragment$21;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1466
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$21$1$1;->this$2:Lcom/vkontakte/android/fragments/ProfileFragment$21$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ProfileFragment$21$1;->this$1:Lcom/vkontakte/android/fragments/ProfileFragment$21;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ProfileFragment$21;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$21$1$1;->this$2:Lcom/vkontakte/android/fragments/ProfileFragment$21$1;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/ProfileFragment$21$1;->this$1:Lcom/vkontakte/android/fragments/ProfileFragment$21;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/ProfileFragment$21;->val$msg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$600(Lcom/vkontakte/android/fragments/ProfileFragment;Ljava/lang/String;)V

    .line 1467
    return-void
.end method
