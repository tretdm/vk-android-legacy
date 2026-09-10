.class Lcom/vkontakte/android/CaptchaActivity$3;
.super Ljava/lang/Object;
.source "CaptchaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CaptchaActivity$3;->this$0:Lcom/vkontakte/android/CaptchaActivity;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/CaptchaActivity$3;->this$0:Lcom/vkontakte/android/CaptchaActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CaptchaActivity;->access$1(Lcom/vkontakte/android/CaptchaActivity;)V

    .line 90
    return-void
.end method
