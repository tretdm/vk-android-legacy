.class Lcom/vkontakte/android/RestoreActivity$6;
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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/RestoreActivity$6;->this$0:Lcom/vkontakte/android/RestoreActivity;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$6;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$6;->this$0:Lcom/vkontakte/android/RestoreActivity;

    invoke-static {v1}, Lcom/vkontakte/android/RestoreActivity;->access$7(Lcom/vkontakte/android/RestoreActivity;)Lcom/vkontakte/android/fragments/SignupCodeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/SignupCodeFragment;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$8(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V

    .line 125
    return-void
.end method
