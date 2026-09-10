.class Lcom/vkontakte/android/ChatActivity$23;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->showResendDialog(Lcom/vkontakte/android/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;

.field private final synthetic val$msg:Lcom/vkontakte/android/Message;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$23;->this$0:Lcom/vkontakte/android/ChatActivity;

    iput-object p2, p0, Lcom/vkontakte/android/ChatActivity$23;->val$msg:Lcom/vkontakte/android/Message;

    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 928
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$23;->this$0:Lcom/vkontakte/android/ChatActivity;

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$23;->val$msg:Lcom/vkontakte/android/Message;

    invoke-static {v0, v1}, Lcom/vkontakte/android/ChatActivity;->access$39(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/Message;)V

    .line 929
    return-void
.end method
