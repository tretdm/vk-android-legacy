.class Lcom/vkontakte/android/ProfileEditActivity$15;
.super Ljava/lang/Object;
.source "ProfileEditActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/AccountSaveProfileInfo$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileEditActivity;->cancelNameRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileEditActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileEditActivity;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity$15;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 392
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$15;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f0d00ce

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 393
    return-void

    .line 392
    :cond_0
    const v0, 0x7f0d00d0

    goto :goto_0
.end method

.method public success(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "nameStatus"    # I
    .param p2, "nameRetryIn"    # I
    .param p3, "nf"    # Ljava/lang/String;
    .param p4, "nl"    # Ljava/lang/String;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$15;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v1, 0x7f0d0177

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 387
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$15;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v1, 0x7f080140

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 388
    return-void
.end method
