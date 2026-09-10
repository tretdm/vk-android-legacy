.class Lcom/vkontakte/android/ui/ReplyDialog$3;
.super Ljava/lang/Object;
.source "ReplyDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/ReplyDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/ReplyDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/ReplyDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/ReplyDialog$3;->this$0:Lcom/vkontakte/android/ui/ReplyDialog;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcom/vkontakte/android/ui/ReplyDialog$3;->this$0:Lcom/vkontakte/android/ui/ReplyDialog;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ReplyDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 124
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/ui/ReplyDialog$3;->this$0:Lcom/vkontakte/android/ui/ReplyDialog;

    invoke-static {v1}, Lcom/vkontakte/android/ui/ReplyDialog;->access$1(Lcom/vkontakte/android/ui/ReplyDialog;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 125
    return-void
.end method
