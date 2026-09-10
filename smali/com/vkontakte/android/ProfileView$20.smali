.class Lcom/vkontakte/android/ProfileView$20;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Lcom/vkontakte/android/api/StatusSet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileView;->setStatus(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileView;

.field private final synthetic val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$20;->this$0:Lcom/vkontakte/android/ProfileView;

    iput-object p2, p0, Lcom/vkontakte/android/ProfileView$20;->val$status:Ljava/lang/String;

    .line 1369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$20;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f08006b

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1382
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$20;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$20;->val$status:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkontakte/android/ProfileView;->access$3(Lcom/vkontakte/android/ProfileView;Ljava/lang/CharSequence;)V

    .line 1383
    return-void

    .line 1381
    :cond_0
    const v0, 0x7f080068

    goto :goto_0
.end method

.method public success()V
    .locals 3

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$20;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$20;->val$status:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    .line 1374
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$20;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ProfileView$InfoItem;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$20;->val$status:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$20;->val$status:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Lcom/vkontakte/android/ProfileView$InfoItem;->data:Ljava/lang/CharSequence;

    .line 1375
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$20;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$13(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090173

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$20;->val$status:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$20;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1376
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$20;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfileView;->updateList()V

    .line 1377
    return-void

    .line 1374
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$20;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08022f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1375
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$20;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$37(Lcom/vkontakte/android/ProfileView;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
