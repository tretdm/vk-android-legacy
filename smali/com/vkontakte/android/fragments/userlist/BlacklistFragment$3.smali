.class Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$3;
.super Ljava/lang/Object;
.source "BlacklistFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/AccountBanUser$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->unban(Lcom/vkontakte/android/UserProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;

.field final synthetic val$user:Lcom/vkontakte/android/UserProfile;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;Lcom/vkontakte/android/UserProfile;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$3;->this$0:Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$3;->val$user:Lcom/vkontakte/android/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$3;->this$0:Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$3;->this$0:Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const v0, 0x7f0d00ce

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    :cond_0
    return-void

    .line 88
    :cond_1
    const v0, 0x7f0d00d0

    goto :goto_0
.end method

.method public success()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$3;->this$0:Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->access$600(Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$3;->val$user:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$3;->this$0:Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->updateList()V

    .line 83
    return-void
.end method
