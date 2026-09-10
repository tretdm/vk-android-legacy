.class Lcom/vkontakte/android/MessageView$4;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesGetFull$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MessageView;->showFwdMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MessageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MessageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MessageView$4;->this$0:Lcom/vkontakte/android/MessageView;

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/MessageView$4;)Lcom/vkontakte/android/MessageView;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/vkontakte/android/MessageView$4;->this$0:Lcom/vkontakte/android/MessageView;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/vkontakte/android/MessageView$4;->this$0:Lcom/vkontakte/android/MessageView;

    new-instance v1, Lcom/vkontakte/android/MessageView$4$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MessageView$4$1;-><init>(Lcom/vkontakte/android/MessageView$4;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MessageView;->post(Ljava/lang/Runnable;)Z

    .line 518
    return-void
.end method

.method public success(Lcom/vkontakte/android/Message;)V
    .locals 2
    .param p1, "_msg"    # Lcom/vkontakte/android/Message;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/vkontakte/android/MessageView$4;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-static {v0}, Lcom/vkontakte/android/MessageView;->access$1(Lcom/vkontakte/android/MessageView;)Lcom/vkontakte/android/Message;

    move-result-object v0

    iget-object v1, p1, Lcom/vkontakte/android/Message;->fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

    iput-object v1, v0, Lcom/vkontakte/android/Message;->fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

    .line 509
    iget-object v0, p0, Lcom/vkontakte/android/MessageView$4;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-static {v0}, Lcom/vkontakte/android/MessageView;->access$2(Lcom/vkontakte/android/MessageView;)V

    .line 511
    return-void
.end method
