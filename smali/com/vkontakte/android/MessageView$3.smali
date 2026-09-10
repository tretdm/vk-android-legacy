.class Lcom/vkontakte/android/MessageView$3;
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
    iput-object p1, p0, Lcom/vkontakte/android/MessageView$3;->this$0:Lcom/vkontakte/android/MessageView;

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/MessageView$3;)Lcom/vkontakte/android/MessageView;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/vkontakte/android/MessageView$3;->this$0:Lcom/vkontakte/android/MessageView;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/vkontakte/android/MessageView$3;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090052

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 466
    return-void
.end method

.method public success(Lcom/vkontakte/android/Message;)V
    .locals 2
    .param p1, "_msg"    # Lcom/vkontakte/android/Message;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/vkontakte/android/MessageView$3;->this$0:Lcom/vkontakte/android/MessageView;

    new-instance v1, Lcom/vkontakte/android/MessageView$3$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/MessageView$3$1;-><init>(Lcom/vkontakte/android/MessageView$3;Lcom/vkontakte/android/Message;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MessageView;->post(Ljava/lang/Runnable;)Z

    .line 461
    return-void
.end method
