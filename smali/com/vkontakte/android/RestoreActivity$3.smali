.class Lcom/vkontakte/android/RestoreActivity$3;
.super Ljava/lang/Object;
.source "RestoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/RestoreActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/RestoreActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/RestoreActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/RestoreActivity$3;->this$0:Lcom/vkontakte/android/RestoreActivity;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$3;->this$0:Lcom/vkontakte/android/RestoreActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RestoreActivity;->access$0(Lcom/vkontakte/android/RestoreActivity;)Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$3;->this$0:Lcom/vkontakte/android/RestoreActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/RestoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->setNumber(Ljava/lang/String;)V

    .line 75
    return-void
.end method
