.class Lcom/vkontakte/android/RestoreActivity$7;
.super Ljava/lang/Object;
.source "RestoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/RestoreActivity;->setStep(I)V
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
    .line 135
    iput-object p1, p0, Lcom/vkontakte/android/RestoreActivity$7;->this$0:Lcom/vkontakte/android/RestoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$7;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$7;->this$0:Lcom/vkontakte/android/RestoreActivity;

    invoke-static {v1}, Lcom/vkontakte/android/RestoreActivity;->access$1000(Lcom/vkontakte/android/RestoreActivity;)Lcom/vkontakte/android/fragments/SignupPasswordFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$902(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$7;->this$0:Lcom/vkontakte/android/RestoreActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RestoreActivity;->access$900(Lcom/vkontakte/android/RestoreActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$7;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$7;->this$0:Lcom/vkontakte/android/RestoreActivity;

    const v2, 0x7f0d02f6

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$1100(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$7;->this$0:Lcom/vkontakte/android/RestoreActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RestoreActivity;->access$1200(Lcom/vkontakte/android/RestoreActivity;)V

    goto :goto_0
.end method
