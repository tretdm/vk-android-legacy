.class Lcom/vkontakte/android/ChangePasswordActivity$2;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChangePasswordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChangePasswordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChangePasswordActivity$2;->this$0:Lcom/vkontakte/android/ChangePasswordActivity;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity$2;->this$0:Lcom/vkontakte/android/ChangePasswordActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/ChangePasswordActivity;->finish()V

    .line 71
    return-void
.end method
