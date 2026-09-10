.class Lcom/vkontakte/android/MessageViewActivity$4;
.super Ljava/lang/Object;
.source "MessageViewActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesGetFull$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MessageViewActivity;->loadInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MessageViewActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MessageViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MessageViewActivity$4;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/MessageViewActivity$4;)Lcom/vkontakte/android/MessageViewActivity;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/vkontakte/android/MessageViewActivity$4;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 185
    return-void
.end method

.method public success(Lcom/vkontakte/android/Message;)V
    .locals 2
    .param p1, "msg"    # Lcom/vkontakte/android/Message;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/vkontakte/android/MessageViewActivity$4;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    new-instance v1, Lcom/vkontakte/android/MessageViewActivity$4$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/MessageViewActivity$4$1;-><init>(Lcom/vkontakte/android/MessageViewActivity$4;Lcom/vkontakte/android/Message;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MessageViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method
