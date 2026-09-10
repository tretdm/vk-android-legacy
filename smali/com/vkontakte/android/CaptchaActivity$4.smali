.class Lcom/vkontakte/android/CaptchaActivity$4;
.super Ljava/lang/Object;
.source "CaptchaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CaptchaActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CaptchaActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CaptchaActivity;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/vkontakte/android/CaptchaActivity$4;->this$0:Lcom/vkontakte/android/CaptchaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/vkontakte/android/CaptchaActivity$4;->this$0:Lcom/vkontakte/android/CaptchaActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/CaptchaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 98
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/CaptchaActivity$4;->this$0:Lcom/vkontakte/android/CaptchaActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CaptchaActivity;->access$200(Lcom/vkontakte/android/CaptchaActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 99
    return-void
.end method
