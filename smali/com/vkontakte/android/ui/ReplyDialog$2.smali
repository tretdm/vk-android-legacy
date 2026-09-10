.class Lcom/vkontakte/android/ui/ReplyDialog$2;
.super Ljava/lang/Object;
.source "ReplyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/ui/ReplyDialog$2;->this$0:Lcom/vkontakte/android/ui/ReplyDialog;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReplyDialog$2;->this$0:Lcom/vkontakte/android/ui/ReplyDialog;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ReplyDialog;->dismiss()V

    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReplyDialog$2;->this$0:Lcom/vkontakte/android/ui/ReplyDialog;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ReplyDialog;->access$0(Lcom/vkontakte/android/ui/ReplyDialog;)Lcom/vkontakte/android/ui/ReplyDialog$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/ReplyDialog$2;->this$0:Lcom/vkontakte/android/ui/ReplyDialog;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ReplyDialog;->access$0(Lcom/vkontakte/android/ui/ReplyDialog;)Lcom/vkontakte/android/ui/ReplyDialog$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/ReplyDialog$2;->this$0:Lcom/vkontakte/android/ui/ReplyDialog;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ReplyDialog;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ui/ReplyDialog$Listener;->send(Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method
