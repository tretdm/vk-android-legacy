.class Lcom/vkontakte/android/SignupActivity$5;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Lcom/vkontakte/android/fragments/SignupCodeFragment$OnResendListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SignupActivity;->setStep(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SignupActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SignupActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SignupActivity$5;->this$0:Lcom/vkontakte/android/SignupActivity;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resendCode(ZLjava/lang/Runnable;)V
    .locals 2
    .param p1, "voice"    # Z
    .param p2, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$5;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$5;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v1}, Lcom/vkontakte/android/SignupActivity;->access$11(Lcom/vkontakte/android/SignupActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/vkontakte/android/SignupActivity;->access$12(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 126
    return-void
.end method
