.class Lcom/vkontakte/android/ProfileEditActivity$20;
.super Ljava/lang/Object;
.source "ProfileEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileEditActivity;->showNameInfoDialog(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileEditActivity;

.field final synthetic val$finish:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileEditActivity;Z)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity$20;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    iput-boolean p2, p0, Lcom/vkontakte/android/ProfileEditActivity$20;->val$finish:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/vkontakte/android/ProfileEditActivity$20;->val$finish:Z

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$20;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ProfileEditActivity;->setResult(I)V

    .line 568
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$20;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfileEditActivity;->finish()V

    .line 570
    :cond_0
    return-void
.end method
