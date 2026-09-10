.class Lcom/vkontakte/android/MessageView$3$1;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MessageView$3;->success(Lcom/vkontakte/android/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/MessageView$3;

.field private final synthetic val$_msg:Lcom/vkontakte/android/Message;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MessageView$3;Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MessageView$3$1;->this$1:Lcom/vkontakte/android/MessageView$3;

    iput-object p2, p0, Lcom/vkontakte/android/MessageView$3$1;->val$_msg:Lcom/vkontakte/android/Message;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/vkontakte/android/MessageView$3$1;->this$1:Lcom/vkontakte/android/MessageView$3;

    invoke-static {v0}, Lcom/vkontakte/android/MessageView$3;->access$0(Lcom/vkontakte/android/MessageView$3;)Lcom/vkontakte/android/MessageView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/MessageView;->access$1(Lcom/vkontakte/android/MessageView;)Lcom/vkontakte/android/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/MessageView$3$1;->val$_msg:Lcom/vkontakte/android/Message;

    iget-object v1, v1, Lcom/vkontakte/android/Message;->fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

    iput-object v1, v0, Lcom/vkontakte/android/Message;->fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

    .line 459
    iget-object v0, p0, Lcom/vkontakte/android/MessageView$3$1;->this$1:Lcom/vkontakte/android/MessageView$3;

    invoke-static {v0}, Lcom/vkontakte/android/MessageView$3;->access$0(Lcom/vkontakte/android/MessageView$3;)Lcom/vkontakte/android/MessageView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/MessageView;->access$2(Lcom/vkontakte/android/MessageView;)V

    .line 460
    return-void
.end method
