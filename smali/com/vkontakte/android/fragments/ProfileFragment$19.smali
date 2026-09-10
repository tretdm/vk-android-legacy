.class Lcom/vkontakte/android/fragments/ProfileFragment$19;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/StatusSet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ProfileFragment;->setStatus(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

.field final synthetic val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ProfileFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$19;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ProfileFragment$19;->val$status:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$19;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

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

    .line 1396
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$19;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$19;->val$status:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$300(Lcom/vkontakte/android/fragments/ProfileFragment;Ljava/lang/CharSequence;)V

    .line 1397
    return-void

    .line 1395
    :cond_0
    const v0, 0x7f0d00d0

    goto :goto_0
.end method

.method public success()V
    .locals 3

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$19;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$19;->val$status:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    .line 1388
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$19;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2000(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$19;->val$status:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$19;->val$status:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;->data:Ljava/lang/CharSequence;

    .line 1389
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$19;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2200(Lcom/vkontakte/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080154

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$19;->val$status:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$19;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1390
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$19;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->updateList()V

    .line 1391
    return-void

    .line 1388
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$19;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1389
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$19;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2100(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
